<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		<html>
			<head>
				<meta charset="UTF-8"/>
				<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
				<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
				<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
			</head>
			<body>
            <div class="container" itemscope="itemscope" itemtype="http://schema.org/Person">
				<h1 class="py-3" itemprop="name"><xsl:value-of select="persona/identificacion/nombre"/></h1>
               <img itemprop="image">
               <xsl:attribute name="src">
               <xsl:value-of select="persona/identificacion/imagen"/>
               </xsl:attribute>
               <xsl:attribute name="alt">
               <xsl:value-of select="persona/identificacion/nombre"/>
               </xsl:attribute>
               </img>
				<h2 class="pt-3">Identificación</h2>
				<dl class="row">
					<dt class="col-sm-3">Nombres</dt>
	  			<dd class="col-sm-9" itemprop="givenName"><xsl:value-of select="persona/identificacion/nombres"/></dd>
					<dt class="col-sm-3">Apellido paterno</dt>
	  			<dd class="col-sm-9" itemprop="familyName"><xsl:value-of select="persona/identificacion/apellido_paterno"/></dd>
					<dt class="col-sm-3">Apellido materno</dt>
				  <dd class="col-sm-9"><xsl:value-of select="persona/identificacion/apellido_materno"/></dd>
					<xsl:if test="persona/identificacion/genero">
						<dt class="col-sm-3">Género</dt>
					  <dd class="col-sm-9" itemprop="gender"><xsl:value-of select="persona/identificacion/genero"/></dd>
					</xsl:if>
					<dt class="col-sm-3">Partido político</dt>
				  <dd class="col-sm-9"><xsl:value-of select="persona/identificacion/partido_politico"/></dd>
					<dt class="col-sm-3">Nacimiento</dt>
				  <dd class="col-sm-9" itemprop="birthDate"><xsl:value-of select="persona/identificacion/nacimiento/fecha"/></dd>
					<dt class="col-sm-3">Lugar nacimiento</dt>
				  <dd class="col-sm-9" itemprop="birthPlace"><xsl:value-of select="persona/identificacion/nacimiento/ciudad"/>, <xsl:value-of select="persona/identificacion/nacimiento/pais"/></dd>
					<xsl:if test="persona/identificacion/muerte">
						<dt class="col-sm-3">Fallecimiento</dt>
					  <dd class="col-sm-9" itemprop="deathDate"><xsl:value-of select="persona/identificacion/muerte/fecha"/></dd>
						<dt class="col-sm-3">Lugar fallecimiento</dt>
					  <dd class="col-sm-9" itemprop="deathPlace"><xsl:value-of select="persona/identificacion/muerte/ciudad"/>, <xsl:value-of select="persona/identificacion/muerte/pais"/></dd>
					</xsl:if>
				</dl>

				<xsl:if test="persona/familia">
				<h2 class="pt-3">Familia</h2>
					<dl class="row">
						<xsl:for-each select="persona/familia/pariente">
							<xsl:choose>
								<xsl:when test="nombre_relacion='hijo'">
									<dt class="col-sm-3"><xsl:value-of select="nombre_relacion"/></dt>
									<dd class="col-sm-9" itemprop="children"><xsl:value-of select="nombre"/></dd>
							 </xsl:when>
							 <xsl:when test="nombre_relacion='hija'">
								 <dt class="col-sm-3"><xsl:value-of select="nombre_relacion"/></dt>
								 <dd class="col-sm-9" itemprop="children"><xsl:value-of select="nombre"/></dd>
							 </xsl:when>

							<xsl:when test="nombre_relacion='padre'">
								<dt class="col-sm-3"><xsl:value-of select="nombre_relacion"/></dt>
								<dd class="col-sm-9" itemprop="parent"><xsl:value-of select="nombre"/></dd>
						  </xsl:when>
							<xsl:when test="nombre_relacion='madre'">
								<dt class="col-sm-3"><xsl:value-of select="nombre_relacion"/></dt>
								<dd class="col-sm-9" itemprop="parent"><xsl:value-of select="nombre"/></dd>
						  </xsl:when>

							<xsl:when test="nombre_relacion='esposo'">
								<dt class="col-sm-3"><xsl:value-of select="nombre_relacion"/></dt>
								<dd class="col-sm-9" itemprop="spouse"><xsl:value-of select="nombre"/></dd>
						  </xsl:when>
							<xsl:when test="nombre_relacion='esposa'">
								<dt class="col-sm-3"><xsl:value-of select="nombre_relacion"/></dt>
								<dd class="col-sm-9" itemprop="spouse"><xsl:value-of select="nombre"/></dd>
						  </xsl:when>

							<xsl:when test="nombre_relacion='hermano'">
								<dt class="col-sm-3"><xsl:value-of select="nombre_relacion"/></dt>
								<dd class="col-sm-9" itemprop="sibling"><xsl:value-of select="nombre"/></dd>
						  </xsl:when>
							<xsl:when test="nombre_relacion='hermana'">
								<dt class="col-sm-3"><xsl:value-of select="nombre_relacion"/></dt>
								<dd class="col-sm-9" itemprop="sibling"><xsl:value-of select="nombre"/></dd>
						  </xsl:when>

							<xsl:otherwise>
								<dt class="col-sm-3"><xsl:value-of select="nombre_relacion"/></dt>
								<dd class="col-sm-9" itemprop="relatedTo"><xsl:value-of select="nombre"/></dd>
							</xsl:otherwise>

							</xsl:choose>
						</xsl:for-each>
					</dl>
				</xsl:if>
				<h2>Estudios</h2>
				<h3 class="py-3">Pregrado</h3>
				<table class="table table-striped table-responsive-sm">
					<thead class="thead-dark">
					<tr>
						<th>Título</th>
						<th>Institución</th>
						<th>Fecha/Año titulación</th>
					</tr>
					</thead>
					<tbody>
					<xsl:for-each select="persona/estudios/pregrado/carrera">
						<tr>
							<td>
								<xsl:value-of select="titulo"/>
							</td>
							<td>
								<xsl:value-of select="institucion"/>
							</td>
							<td>
   							    <xsl:if test="fecha_titulacion">
								   <xsl:value-of select="fecha_titulacion"/>
								</xsl:if>
   							    <xsl:if test="ano_titulacion">
								   <xsl:value-of select="ano_titulacion"/>
								</xsl:if>
							</td>
						</tr>
					</xsl:for-each>
					</tbody>
				</table>
				<xsl:if test="persona/estudios/postgrado">
   				<h3 class="py-3">Postgrado</h3>
				   <table class="table table-striped table-responsive-sm">
					<thead class="thead-dark">
				   	<tr>
			   			<th>Grado</th>
		   				<th>Institución</th>
	   					<th>Fecha/Año titulación</th>
   					</tr>
					</thead>
					<tbody>
					   <xsl:for-each select="persona/estudios/postgrado/grado">
			   			<tr>
		   					<td>
	   							<xsl:value-of select="nombre"/>
   							</td>
							   <td>
						   		<xsl:value-of select="institucion"/>
					   		</td>
				   			<td>
   		   					    <xsl:if test="fecha_titulacion">
		   						   <xsl:value-of select="fecha_titulacion"/>
	   							</xsl:if>
      							    <xsl:if test="ano_titulacion">
								      <xsl:value-of select="ano_titulacion"/>
								   </xsl:if>
							   </td>
						   </tr>
					   </xsl:for-each>
					</tbody>
				   </table>
				</xsl:if>
				<h2 class="pb-3">Cargos en el parlamento</h2>
				<table class="table table-striped table-responsive-sm">
					<thead class="thead-dark">
					<tr>
						<th>Cargo</th>
						<th>Institución</th>
						<th>Período</th>
						<th>Inicio</th>
						<th>Fin</th>
						<th>Representación</th>
						<th>Partido político</th>
					</tr>
					</thead>
					<tbody>
					<xsl:for-each select="persona/cargos/cargo">
                        <xsl:sort select="fecha_inicio" order="descending"/>
						<tr itemscope="itemscope" itemtype="http://schema.org/OrganizationRole">
							<td itemprop="roleName">
								<xsl:value-of select="nombre"/>
							</td>
							<td itemscope="itemscope" itemtype="http://schema.org/Organization">
							<div itemprop="name"><xsl:value-of select="institucion"/></div>
							</td>
							<td>
								<xsl:value-of select="periodo"/>
							</td>
							<td itemprop="startDate">
								<xsl:value-of select="fecha_inicio"/>
							</td>
							<xsl:choose>
							       <xsl:when test="fecha_fin">
							          <td itemprop="endDate"><xsl:value-of select="fecha_fin"/></td>
							       </xsl:when>
							       <xsl:otherwise>
							          <td></td>
							       </xsl:otherwise>
							</xsl:choose>
							<td>
								<xsl:value-of select="representacion"/>
							</td>
							<td>
								<xsl:value-of select="partido_politico"/>
							</td>
						</tr>
					</xsl:for-each>
					</tbody>
				</table>
				<h2 class="pb-3">Participación en comisiones</h2>
				<table class="table table-striped table-responsive-sm">
					<thead class="thead-dark">
					<tr>
						<th>Comisión</th>
						<th>Tipo comisión</th>
						<th>Institución</th>
						<th>Rol</th>
						<th>Período</th>
						<th>Inicio</th>
						<th>Fin</th>
					</tr>
					</thead>
					<tbody>
					<xsl:for-each select="persona/comisiones/comision">
            <xsl:sort select="fecha_inicio" order="descending"/>
						<tr itemscope="itemscope" itemtype="http://schema.org/OrganizationRole">
							<td itemscope="itemscope" itemtype="http://schema.org/Organization">
								<div itemprop="name"><xsl:value-of select="nombre"/></div>
								<div itemprop="additionalType" style="display:none"><xsl:value-of select="tipo_comision"/></div>
								<div itemprop="memberOf" style="display:none"><xsl:value-of select="institucion"/></div>
							</td>
							<td>
								<xsl:value-of select="tipo_comision"/>
							</td>
							<td>
								<xsl:value-of select="institucion"/>
							</td>
							<td itemprop="roleName">
								<xsl:value-of select="rol"/>
							</td>
							<td>
								<xsl:value-of select="periodo"/>
							</td>
							<td itemprop="startDate">
								<xsl:value-of select="fecha_inicio"/>
							</td>
							<td itemprop="endDate">
								<xsl:value-of select="fecha_fin"/>
							</td>
						</tr>
					</xsl:for-each>
					</tbody>
				</table>
			</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
