select * from bcn_parlamentario
where nombre like '%Accorsi%'
--id_parlamentario=4 => "María Isabel Allende Bussi"
--id_parlamentario=54 => "Evelyn Matthei Fornet"
--id_parlamentario=113 => "Enrique Accorsi Opazo"


select pr.* from bcn_parlamentario p
join bcn_parlamentario_propiedades pr on (p.id_parlamentario=pr.id_parlamentario)
where p.id_parlamentario=4
and pr.propiedad='persona.nombre completo'

select pr.propiedad,pr.valor from bcn_parlamentario p
join bcn_parlamentario_propiedades pr on (p.id_parlamentario=pr.id_parlamentario)
where p.id_parlamentario=4
and pr.propiedad='persona.nombres'
"persona.apellido paterno"
limit 1

select * from bcn_parlamentario p
where p.id_parlamentario=4

select * from dim_persona
where id_parlamentario=54

id 3494
uri http://datos.bcn.cl/recurso/persona/3494
descripcion Isabel Allende Bussi
apellido Allende
url_imagen https://www.bcn.cl/laborparlamentaria/imagen/3494.jpg
profesion Socióloga; Máster en Sociología y Ciencia Política
pagina_web http://www.isabelallendebussi.cl/
fecha_nacimiento 1945-01-18
lugar_nacimiento Santiago
fecha_muerte None
lugar_muerte 
alt_label María Isabel Allende Bussi
eliminado 0
facebook http://facebook.com//IsabelAllendeBussi/
twitter http://twitter.com/iallendebussi
instagram 
otros http://youtube.com/isabelallendebussi
url_imagen_110 https://www.bcn.cl/laborparlamentaria/imagen/110x110/3494.jpg
id_camara 804
id_senado 985
id_biografias_bcn María_Isabel_Allende_Bussi
tiene_foto_valida 1
imagen_biografias http://biografias.bcn.cl/images/d/df/Mar%C3%ADa_Isabel_Allende_Bussi.jpg
email iallende@senado.cl
nombre_registro_civil María Isabel Allende Bussi
profesion_normalizada Sociólogo; Máster en Sociología y Ciencia Política
dossier_repositorio None
genero femenino

select * from bcn_parlamentario_periodo
where id_parlamentario=4
order by periodo;
4;"2018";"2026";"Senadora";"6ª Circunscripción";"Partido Socialista de Chile";"";"";"1";""
4;"2010";"2018";"Senadora";"3ª Circunscripción";"Partido Socialista de Chile";"";"Ricardo Núñez Muñoz";"2";"circunscripcion03"
4;"2006";"2010";"Diputada";"Distrito N° 29";"Partido Socialista de Chile";"Osvaldo Raúl Andrade Lara";"";"3";"distrito29"
4;"2002";"2006";"Diputada";"Distrito N° 29";"Partido Socialista de Chile";"";"";"4";"distrito29"
4;"1998";"2002";"Diputada";"Distrito N° 29";"Partido Socialista de Chile";"";"Jaime Estévez Valencia";"5";"distrito29"
4;"1994";"1998";"Diputada";"Distrito N° 9";"Partido Socialista de Chile";"Adriana Muñoz D'Albora";"Víctor Manuel Rebolledo González";"6";"distrito09"

update bcn_parlamentario_periodo set inicio='2018-03-11', fin='2026-03-10', division='6ta Circunscripción de Valparaíso'      where id_parlamentario=4 and inicio='2018' and periodo='1';
update bcn_parlamentario_periodo set inicio='2010-03-11', fin='2018-03-10', division='3a Circunscripción de Atacama'          where id_parlamentario=4 and inicio='2010' and periodo='2';
update bcn_parlamentario_periodo set inicio='2006-03-11', fin='2010-03-10', division='Distrito Nº 29 de Región Metropolitana' where id_parlamentario=4 and inicio='2006' and periodo='3';
update bcn_parlamentario_periodo set inicio='2002-03-11', fin='2006-03-10', division='Distrito Nº 29 de Región Metropolitana' where id_parlamentario=4 and inicio='2002' and periodo='4';
update bcn_parlamentario_periodo set inicio='1998-03-11', fin='2002-03-10', division='Distrito Nº 29 de Región Metropolitana' where id_parlamentario=4 and inicio='1998' and periodo='5';
update bcn_parlamentario_periodo set inicio='1994-03-11', fin='1998-03-10', division='Distrito Nº 9 de Región de Coquimbo'    where id_parlamentario=4 and inicio='1994' and periodo='6';

select * from bcn_parlamentario_periodo
where id_parlamentario=54
order by periodo;
54;"2006";"2014";"Senadora";"4ª Circunscripción";"Partido Unión Demócrata Independiente";"Gonzalo Uriarte Herrera";"";"1";"circunscripcion04"
54;"1998";"2006";"Senadora";"4ª Circunscripción";"Independiente";"";"Alberto Cooper Valencia";"2";"circunscripcion04"
54;"1994";"1998";"Diputada";"Distrito N° 15";"Independiente";"Sergio Velasco de la Cerda";"";"3";"distrito15"
54;"1990";"1994";"Diputada";"Distrito N° 23";"Partido Renovación Nacional";"Andrés Allamand Zavala";"";"4";"distrito23"

update bcn_parlamentario_periodo set inicio='2006-03-11', fin='2011-01-16', division='4ta Circunscripción de Coquimbo'        where id_parlamentario=54 and inicio='2006' and periodo='1';
update bcn_parlamentario_periodo set inicio='1998-03-11', fin='2006-03-10', division='4ta Circunscripción de Coquimbo'        where id_parlamentario=54 and inicio='1998' and periodo='2';
update bcn_parlamentario_periodo set inicio='1994-03-11', fin='1998-03-10', division='Distrito Nº 15 de Región Valparaíso'    where id_parlamentario=54 and inicio='1994' and periodo='3';
update bcn_parlamentario_periodo set inicio='1990-03-11', fin='1994-03-10', division='Distrito Nº 23 de Región Metropolitana' where id_parlamentario=54 and inicio='1990' and periodo='4';

select inicio,fin,tipo,division,partido,periodo_inicio_fin as periodo,institucion
from bcn_parlamentario_periodo
where id_parlamentario=113
order by periodo;
113;"2010";"2014";"Diputado";"Distrito N° 24";"Partido por la Democracia";"Jaime Hernán Gonzalo Pilowsky Greene";"";"1";""
113;"2006";"2010";"Diputado";"Distrito N° 24";"Partido por la Democracia";"";"";"2";""
113;"2002";"2006";"Diputado";"Distrito N° 24";"Partido por la Democracia";"";"Tomás Jocelyn Holt Letelier";"3";""

update bcn_parlamentario_periodo set inicio='2010-03-11', fin='2014-03-10', division='Distrito Nº 24 de Región Metropolitana'        where id_parlamentario=113 and inicio='2010' and periodo='1';
update bcn_parlamentario_periodo set inicio='2006-03-11', fin='2010-03-10', division='Distrito Nº 24 de Región Metropolitana'        where id_parlamentario=113 and inicio='2006' and periodo='2';
update bcn_parlamentario_periodo set inicio='2002-03-11', fin='2006-03-10', division='Distrito Nº 24 de Región Metropolitana'        where id_parlamentario=113 and inicio='2002' and periodo='3';

update bcn_parlamentario_periodo set periodo_inicio_fin=left(inicio,4)||'-'||left(fin,4), institucion='Senado'
where lower(tipo) like 'senador%';
update bcn_parlamentario_periodo set periodo_inicio_fin=left(inicio,4)||'-'||left(fin,4), institucion='Cámara'
where lower(tipo) like 'diputad%'

CREATE TABLE public.dim_comision
(
  id integer NOT NULL,
  uri character varying(500),
  descripcion character varying(500)
);

CREATE TABLE bcn_parlamentario_comision (
id_parlamentario integer,
id_comision integer,
nombre_comision text,
tipo_comision text,
institucion text,
rol_parlamentario text,
período_parlamentario text,
inicio date,
fin date,
url_comision text
);

CREATE TABLE bcn_comision (
id_comision integer,
nombre_comision text,
tipo_comision text,
institucion text,
url_comision text
);

insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Especial Encargada de conocer iniciativas y tramitar proyectos de ley relacionados con la mujer y la igualdad de género','Especial','Senado','miembro','2018-2026',TO_DATE('2018-09-12','yyyy-mm-dd'),TO_DATE('2026-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=1126&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Especial encargada de tramitar proyectos de ley relacionados con los niños, niñas y adolescentes','Especial','Senado','miembro','2018-2026',TO_DATE('2018-09-12','yyyy-mm-dd'),TO_DATE('2026-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=1062&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Medio Ambiente y Bienes Nacionales','Permanente','Senado','presidente','2018-2026',TO_DATE('2018-03-11','yyyy-mm-dd'),TO_DATE('2026-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=193&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Minería y Energía','Permanente','Senado','miembro','2018-2026',TO_DATE('2018-03-11','yyyy-mm-dd'),TO_DATE('2026-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=196&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Zonas Extremas y Territorios Especiales','Especial','Senado','miembro','2018-2026',TO_DATE('2018-03-11','yyyy-mm-dd'),TO_DATE('2026-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=899&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Recursos Hídricos, Desertificación y Sequía','Especial','Senado','miembro','2018-2026',TO_DATE('2018-03-11','yyyy-mm-dd'),TO_DATE('2026-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=1009&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Medio Ambiente y Bienes Nacionales','Permanente','Senado','miembro','2010-2018',TO_DATE('2010-03-11','yyyy-mm-dd'),TO_DATE('2018-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=193&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Minería y Energía','Permanente','Senado','miembro','2010-2018',TO_DATE('2010-03-11','yyyy-mm-dd'),TO_DATE('2018-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=196&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Ética y Transparencia','Permanente','Senado','miembro','2010-2018',TO_DATE('2010-03-11','yyyy-mm-dd'),TO_DATE('2018-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=718&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Régimen Interior','Permanente','Senado','presidente','2010-2018',TO_DATE('2010-03-11','yyyy-mm-dd'),TO_DATE('2018-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=201&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Recursos Hídricos, Desertificación y Sequía','Especial','Senado','miembro','2010-2018',TO_DATE('2010-03-11','yyyy-mm-dd'),TO_DATE('2018-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=1009&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Relaciones Exteriores, Asuntos Interparlamentarios e Integración Latinoamericana','Permanente','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=406');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Cultura y de las Artes','Permanente','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=496');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Minería y Energía','Permanente','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=409');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Beneficios para los Discapacitados','Especial','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Turismo','Especial','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Relaciones Exteriores, Asuntos Interparlamentarios e Integración Latinoamericana','Permanente','Cámara','miembro','2002-2006',TO_DATE('2002-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=406');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Familia','Permanente','Cámara','miembro','2002-2006',TO_DATE('2002-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=415');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Beneficios para los Discapacitados','Especial','Cámara','miembro','2002-2006',TO_DATE('2002-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Vivienda y Desarrollo Urbano','Permanente','Cámara','miembro','1998-2002',TO_DATE('1998-03-11','yyyy-mm-dd'),TO_DATE('2002-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=416');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Familia','Permanente','Cámara','presidente','1998-2002',TO_DATE('1998-03-11','yyyy-mm-dd'),TO_DATE('2002-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=415');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Drogas','Especial','Cámara','miembro','1998-2002',TO_DATE('1998-03-11','yyyy-mm-dd'),TO_DATE('2002-03-10','yyyy-mm-dd'),'');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Recursos Naturales, Bienes Nacionales y Medio Ambiente','Permanente','Cámara','miembro','1994-1998',TO_DATE('1994-03-11','yyyy-mm-dd'),TO_DATE('1998-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=405');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Familia','Permanente','Cámara','miembro','1994-1998',TO_DATE('1994-03-11','yyyy-mm-dd'),TO_DATE('1998-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=415');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Gobierno Interior, Regionalización, Planificación y Desarrollo Social','Permanente','Cámara','miembro','1994-1998',TO_DATE('1994-03-11','yyyy-mm-dd'),TO_DATE('1998-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=414');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Relaciones Exteriores, Asuntos Interparlamentarios e Integración Latinoamericana','Permanente','Cámara','miembro','1994-1998',TO_DATE('1994-03-11','yyyy-mm-dd'),TO_DATE('1998-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=406');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (4,'Ciencias y Tecnología','Permanente','Cámara','miembro','1994-1998',TO_DATE('1994-03-11','yyyy-mm-dd'),TO_DATE('1998-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=403');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Economía','Permanente','Senado','miembro','2006-2014',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2011-01-30','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=187&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Salud','Permanente','Senado','miembro','2006-2014',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2011-01-30','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=195&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Transportes y Telecomunicaciones','Permanente','Senado','miembro','2006-2014',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2011-01-30','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=198&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Hacienda','Permanente','Senado','presidente','2006-2014',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2011-01-30','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=188&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Revisora de Cuentas','Permanente','Senado','presidente','2006-2014',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2011-01-30','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=202&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Mixta de Presupuestos','Mixta','Senado','presidente','2006-2014',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2011-01-30','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=367&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Hacienda','Permanente','Senado','miembro','2006-2014',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2011-01-30','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=188&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Trabajo y Previsión Social','Permanente','Senado','miembro','2006-2014',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2011-01-30','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=194&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Mixta de Presupuestos','Mixta','Senado','miembro','2006-2014',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2011-01-30','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=367&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Economía','Permanente','Senado','miembro','1998-2006',TO_DATE('1998-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=187&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Minería y Energía','Permanente','Senado','miembro','1998-2006',TO_DATE('1998-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=196&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Salud','Permanente','Senado','miembro','1998-2006',TO_DATE('1998-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=195&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Hacienda','Permanente','Senado','miembro','1998-2006',TO_DATE('1998-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=188&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Revisora de Cuentas','Permanente','Senado','presidente','1998-2006',TO_DATE('1998-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'http://www.senado.cl/appsenado/index.php?mo=comisiones&ac=ficha&id=202&tipo_comision=10');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Trabajo y Seguridad Social','Permanente','Cámara','miembro','1994-1998',TO_DATE('1994-03-11','yyyy-mm-dd'),TO_DATE('1998-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=408');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Economía, Fomento y Desarrollo','Permanente','Cámara','miembro','1994-1998',TO_DATE('1994-03-11','yyyy-mm-dd'),TO_DATE('1998-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=410');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Ciencias y Tecnología','Permanente','Cámara','miembro','1994-1998',TO_DATE('1994-03-11','yyyy-mm-dd'),TO_DATE('1998-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=403');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Relaciones Exteriores, Asuntos Interparlamentarios e Integración Latinoamericana','Permanente','Cámara','miembro','1994-1998',TO_DATE('1994-03-11','yyyy-mm-dd'),TO_DATE('1998-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=406');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Hacienda','Permanente','Cámara','reemplazante','1994-1998',TO_DATE('1994-03-11','yyyy-mm-dd'),TO_DATE('1998-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=407');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Hacienda','Permanente','Cámara','miembro','1990-1994',TO_DATE('1990-03-11','yyyy-mm-dd'),TO_DATE('1994-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=407');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Trabajo y Seguridad Social','Permanente','Cámara','miembro','1990-1994',TO_DATE('1990-03-11','yyyy-mm-dd'),TO_DATE('1994-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=408');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (54,'Estudio del Régimen Político Chileno','Especial','Cámara','miembro','1990-1994',TO_DATE('1990-03-11','yyyy-mm-dd'),TO_DATE('1994-03-10','yyyy-mm-dd'),'');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Salud','Permanente','Cámara','miembro','2010-2014',TO_DATE('2010-03-11','yyyy-mm-dd'),TO_DATE('2014-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=411');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Recursos Naturales, Bienes Nacionales y Medio Ambiente','Permanente','Cámara','miembro','2010-2014',TO_DATE('2010-03-11','yyyy-mm-dd'),TO_DATE('2014-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=405');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Deportes','Especial','Cámara','miembro','2010-2014',TO_DATE('2010-03-11','yyyy-mm-dd'),TO_DATE('2014-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=789');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Recursos Naturales, Bienes Nacionales y Medio Ambiente','Permanente','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=405');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Derechos Humanos, Nacionalidad y Ciudadanía','Permanente','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=404');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Superación de la Pobreza, Planificación y Desarrollo Social','Permanente','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=553');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Relaciones Exteriores, Asuntos Interparlamentarios e Integración Latinoamericana','Permanente','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=406');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Conducta Parlamentaria','Permanente','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=544');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Beneficios para los Discapacitados','Especial','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Deportes','Especial','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=789');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Estudio del Régimen Político Chileno','Especial','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Contaminación por Plomo en Arica','Investigadora','Cámara','miembro','2006-2010',TO_DATE('2006-03-11','yyyy-mm-dd'),TO_DATE('2010-03-10','yyyy-mm-dd'),'');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Salud','Permanente','Cámara','miembro','2002-2006',TO_DATE('2002-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=411');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Derechos Humanos, Nacionalidad y Ciudadanía','Permanente','Cámara','miembro','2002-2006',TO_DATE('2002-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'https://www.camara.cl/trabajamos/comision_portada.aspx?prmID=404');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Beneficios para los Discapacitados','Especial','Cámara','miembro','2002-2006',TO_DATE('2002-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'');
insert into bcn_parlamentario_comision (id_parlamentario,nombre_comision,tipo_comision,institucion,rol_parlamentario,período_parlamentario,inicio,fin,url_comision) values (113,'Contaminación por Plomo en Arica','Investigadora','Cámara','miembro','2002-2006',TO_DATE('2002-03-11','yyyy-mm-dd'),TO_DATE('2006-03-10','yyyy-mm-dd'),'');

select * from bcn_parlamentario_comision
where url_comision=''

update bcn_parlamentario_comision set url_comision=null
where url_comision=''

select count(distinct url_comision) from bcn_parlamentario_comision
where url_comision is not null
--31

select count(distinct nombre_comision||institucion) from bcn_parlamentario_comision
where url_comision is not null
--31

insert into bcn_comision (nombre_comision,institucion,tipo_comision,url_comision)
select distinct nombre_comision,institucion,tipo_comision,url_comision from bcn_parlamentario_comision
where url_comision is not null;
--31 filas insertadas

insert into bcn_comision (nombre_comision,institucion,tipo_comision,url_comision)
select distinct nombre_comision,institucion,tipo_comision,url_comision from bcn_parlamentario_comision
where url_comision is null;
--5 filas más

select * from bcn_comision 

update bcn_parlamentario_comision pc
set id_comision=c.id_comision
from bcn_comision c
where pc.nombre_comision=c.nombre_comision
and pc.institucion=c.institucion;
--65 filas

select pc.id_parlamentario,pc.rol_parlamentario,pc.período_parlamentario,pc.inicio,pc.fin, c.id_comision,c.nombre_comision,c.tipo_comision,c.institucion,c.url_comision 
from bcn_parlamentario_comision pc
join bcn_comision c on (pc.id_comision=c.id_comision);

select c.id_comision,pc.rol_parlamentario,pc.periodo_parlamentario,TO_CHAR(pc.inicio,'yyyy-mm-dd'),TO_CHAR(pc.fin,'yyyy-mm-dd'), c.nombre_comision,c.tipo_comision,c.institucion,c.url_comision 
from bcn_parlamentario_comision pc
join bcn_comision c on (pc.id_comision=c.id_comision)
where pc.id_parlamentario=54
order by inicio desc;