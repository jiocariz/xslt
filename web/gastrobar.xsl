<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8"/>    
    <xsl:template match="/gestionParque">
       <html lang="es">

	<head>
		<link href="../css/estilo.css" rel="stylesheet" type="text/css" />
		<meta name="description" content="Página principal" />
		<title>GASTROBAR</title>
	</head>

	<body>
		<header>
			<img src= "../img/logotipo.png" alt= "Reservas" />
			<a href="gastrobar.xml">Gastrobar</a>
			<a href="atracciones.xml">Atracciones</a>
			<a href="eventos.xml">Eventos</a>
		</header>
		
		<main id="gastrobar">            
			<h1>ENTRANTES</h1>
            <xsl:for-each select="gastrobar/platos/plato">
                <article class="articulo">
                    <img src="../img/{foto}" class="imagen" alt="{foto}"/>
                    <xsl:if test="starts-with(@codigo,'A')">
                       <img src="../img/icono-novedad.png" class="novedad-icono"/>		
                     
                    </xsl:if>
                    <h2><xsl:value-of select="nom_plato"/></h2>
                    <h3><xsl:value-of select="precio"/>€</h3>
			    </article>
            </xsl:for-each>			
		</main>

		<footer>
			<address>&#169; Desarrollado por info@birt.eus</address>
		</footer>
	</body>
</html> 
    </xsl:template>

    

</xsl:stylesheet>