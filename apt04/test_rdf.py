#-*- coding: UTF-8 -*-

from rdflib import Graph, Literal, BNode, Namespace, RDF, URIRef
from rdflib.namespace import DC, FOAF, XSD
from rdflib.namespace import Namespace
import psycopg2

class rdfBiografias:
    cur=None
    conn=None

    def __init__(self):
        self.conectaBD('localhost','parlamentarios')
        
    def __delete__(self):
        self.cerrarBD()
    
    def cerrarBD(self):
        self.cur.close()
        self.conn.close()
    
    def conectaBD(self,host='localhost',dbname='parlamentarios'):
        sConexion="dbname='%s' user='postgres' host='%s' password='postgres'" % (dbname,host)
        self.conn=psycopg2.connect(sConexion)
        self.cur = self.conn.cursor()
        return True

    def propiedadParlamentario(self,id_parlamentario,propiedad):
        valor=None
        sql="""select pr.valor from bcn_parlamentario p
        join bcn_parlamentario_propiedades pr on (p.id_parlamentario=pr.id_parlamentario)
        where p.id_parlamentario=%s
        and pr.propiedad='%s'""" % (id_parlamentario,propiedad)
        
        self.cur.execute(sql)
        datos=self.cur.fetchone()
        if datos is not None:
            valor=datos[0]
        
        return valor
    
    def propiedadesParlamentario(self,id_parlamentario):
        d=dict()
        sql="""select * from dim_persona
        where id_parlamentario=%s""" % (id_parlamentario)
        
        self.cur.execute(sql)
        datos=self.cur.fetchone()
        columnas=[desc[0] for desc in self.cur.description]
        
        idx=0
        for col in columnas:
            d[col]=datos[idx]
            idx=idx+1
        return d

    def cargosParlamentario(self,id_parlamentario):
        cargos=[]
        sql="""select inicio,fin,tipo,division,partido,periodo_inicio_fin as periodo,institucion
        from bcn_parlamentario_periodo
        where id_parlamentario=%s
        order by periodo;""" % (id_parlamentario)        
        
        self.cur.execute(sql)
        datos=self.cur.fetchall()
        columnas=[desc[0] for desc in self.cur.description]
        
        for registro in datos:
            d=dict()
            idx=0
            for col in columnas:
                d[col]=registro[idx]
                idx=idx+1
            cargos.append(d)
        return cargos

    def cargosComisionesParlamentario(self,id_parlamentario):
        cargos=[]
        sql="""select c.id_comision,pc.rol_parlamentario,pc.periodo_parlamentario,TO_CHAR(pc.inicio,'yyyy-mm-dd') inicio,TO_CHAR(pc.fin,'yyyy-mm-dd') fin, c.nombre_comision,c.tipo_comision,c.institucion,c.url_comision 
        from bcn_parlamentario_comision pc
        join bcn_comision c on (pc.id_comision=c.id_comision)
        where pc.id_parlamentario=%s
        order by inicio;""" % (id_parlamentario)        
        
        self.cur.execute(sql)
        datos=self.cur.fetchall()
        columnas=[desc[0] for desc in self.cur.description]
        
        for registro in datos:
            d=dict()
            idx=0
            for col in columnas:
                d[col]=registro[idx]
                idx=idx+1
            cargos.append(d)
        return cargos    
    
    def generaRDF(self,id_parlamentario):
        g=self.creaGrafo(id_parlamentario)
        return g.serialize(format='n3')
    
    def creaGrafo(self,id_parlamentario):
        #PASO 1. Recupera datos
        d=self.propiedadesParlamentario(id_parlamentario)
        
        #PASO 2. Define schemas a utilizar
        BCNBIO=Namespace('http://datos.bcn.cl/ontologies/bcn-biographies#')
        SCHEMA=Namespace('http://schema.org/')
        
        g = Graph()
        
        # Create an identifier to use as the subject for pm (parliament member)
        #pm = BNode()
        pm = URIRef(d['uri'])
        
        # Add triples using store's add method.
        g.add( (pm, RDF.type, FOAF.Person) )
        g.add( (pm, RDF.type, SCHEMA.Person) )
        
        propiedad='persona.nombres'
        valor=self.propiedadParlamentario(id_parlamentario, propiedad)
        g.add( (pm, FOAF.givenName, Literal(valor)) )
        
        propiedad='persona.apellido paterno'
        valor=self.propiedadParlamentario(id_parlamentario, propiedad)
        g.add( (pm, BCNBIO.surnameOfFather, Literal(valor)) )
        
        propiedad='persona.apellido materno'
        valor=self.propiedadParlamentario(id_parlamentario, propiedad)        
        g.add( (pm, BCNBIO.surnameOfMather, Literal(valor)) )

        valor=d['fecha_nacimiento']
        g.add( (pm, SCHEMA.birthDate, Literal(valor, datatype=XSD.date)) )
        
        valor=d['lugar_nacimiento']+', Chile'
        g.add( (pm, SCHEMA.birthPlace, Literal(valor)) )

        valor=d['genero']
        g.add( (pm, SCHEMA.gender, Literal(valor)) )

        valor=d['nombre_registro_civil']
        g.add( (pm, FOAF.name, Literal(valor)) )
        
        propiedad='persona.ultima'
        valor=self.propiedadParlamentario(id_parlamentario, propiedad)
        g.add( (pm, BCNBIO.PoliticalParty, Literal(valor)) )
        
        valor=d['imagen_biografias']
        g.add( (pm, FOAF.depiction, URIRef(valor)) )

        valor=d['profesion']
        g.add( (pm, SCHEMA.hasOccupation, Literal(valor)) )
        
        propiedad='persona.padre'
        valor=self.propiedadParlamentario(id_parlamentario, propiedad)
        if not(valor is None):
            g.add( (pm, SCHEMA.parent, Literal(valor)) )

        propiedad='persona.madre'
        valor=self.propiedadParlamentario(id_parlamentario, propiedad)
        if not(valor is None):
            g.add( (pm, SCHEMA.parent, Literal(valor)) )

        propiedad='persona.hijos'
        valor=self.propiedadParlamentario(id_parlamentario, propiedad)
        if not(valor is None):
            hijos=valor.split(';')
            if len(hijos)==1:
                hijos=valor.split(',')
            for hijo in hijos:
                g.add( (pm, SCHEMA.children, Literal(hijo.strip())) )
                
        #PASO 3. Recupera datos de cargos
        cargos=self.cargosParlamentario(id_parlamentario)
        idx=1
        for cargo in cargos:
            pm_cargo = URIRef(d['uri']+'/cargo/'+str(idx))
            
            g.add( (pm_cargo, RDF.type, SCHEMA.OrganizationRole) )

            valor=cargo['inicio']
            g.add( (pm_cargo, SCHEMA.startDate, Literal(valor, datatype=XSD.date)) )

            valor=cargo['fin']
            g.add( (pm_cargo, SCHEMA.endDate, Literal(valor, datatype=XSD.date)) )

            valor=cargo['tipo']
            g.add( (pm_cargo, SCHEMA.roleName, Literal(valor)) )

            valor=cargo['periodo']
            g.add( (pm_cargo, BCNBIO.ParliamentaryPeriod, Literal(valor)) )

            valor=cargo['division']
            g.add( (pm_cargo, BCNBIO.representing, Literal(valor)) )

            valor=cargo['partido']
            g.add( (pm_cargo, BCNBIO.ofNamedPoliticalParty, Literal(valor)) )
            
            valor=cargo['institucion']
            g.add( (pm_cargo, SCHEMA.Organization, Literal(valor)) )
            
            g.add( (pm, SCHEMA.OrganizationRole, pm_cargo ))
            
            idx=idx+1
            
        #PASO 4. Recupera datos de cargos en comisiones
        cargos=self.cargosComisionesParlamentario(id_parlamentario)
        idx=1
        for cargo in cargos:
            pm_cargoComision = URIRef(d['uri']+'/cargoComision/'+str(idx))
            
            g.add( (pm_cargoComision, RDF.type, SCHEMA.OrganizationRole) )

            valor=cargo['inicio']
            g.add( (pm_cargoComision, SCHEMA.startDate, Literal(valor, datatype=XSD.date)) )

            valor=cargo['fin']
            g.add( (pm_cargoComision, SCHEMA.endDate, Literal(valor, datatype=XSD.date)) )

            valor=cargo['rol_parlamentario']
            g.add( (pm_cargoComision, SCHEMA.roleName, Literal(valor)) )

            valor="Comisión "+cargo['tipo_comision']
            g.add( (pm_cargoComision, SCHEMA.additionalType, Literal(valor)) )

            valor=cargo['periodo_parlamentario']
            g.add( (pm_cargoComision, BCNBIO.ParliamentaryPeriod, Literal(valor)) )

            valor=cargo['nombre_comision']
            g.add( (pm_cargoComision, SCHEMA.name, Literal(valor)) )

            valor=cargo['url_comision']
            if not(valor is None):
                g.add( (pm_cargoComision, SCHEMA.url, URIRef(valor)) )
            
            valor=cargo['institucion']
            g.add( (pm_cargoComision, SCHEMA.Organization, Literal(valor)) )
            
            g.add( (pm, SCHEMA.OrganizationRole, pm_cargoComision ))
            
            idx=idx+1
        
        #PASO 5. Asocia prefijos
        # Bind a few prefix, namespace pairs for more readable output
        g.bind("bcnbio", BCNBIO)
        g.bind("schema", SCHEMA)
        g.bind("foaf", FOAF)
        g.bind("xsd", XSD)
        
        #PASO 6. Devuelve el grafo completo
        return g
        
rdf=rdfBiografias()
print rdf.generaRDF(id_parlamentario=4)
print rdf.generaRDF(id_parlamentario=54)
print rdf.generaRDF(id_parlamentario=113)
