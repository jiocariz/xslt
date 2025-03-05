<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
    <xsl:output method="html" doctype-system="about:legacy-compat" encoding="utf-8"/>    
    <xsl:template match="/gestionParque">       
        <html lang="es">

            <head>
                <link href="../css/estilo.css" rel="stylesheet" type="text/css" />
                <meta name="description" content="Página principal" />
                <title>EVENTOS</title>
            </head>

            <body>
                <header>
                    <img src= "../img/logotipo.png" alt= "Reservas" />
                    <a href="gastrobar.xml">Gastrobar</a>
                    <a href="atracciones.xml">Atracciones</a>
                    <a href="eventos.xml">Eventos</a>
                </header>
                
                <main>
                    <h1>Eventos del 2024</h1>
                    <xsl:apply-templates select="eventos/evento[substring(fechaHora,1,4)=2024]"/>
                   
                </main>

                <footer>
                    <address>&#169; Desarrollado por info@birt.eus</address>
                </footer>
            </body>
        </html>
    </xsl:template>    

    <xsl:template match="evento">
        <xsl:variable name="anyo" select="substring(fechaHora,1,4)"/>
        <xsl:variable name="numComent" select="count(comentarios/comentario)"/>
        <article class="eventos">
            <h4><xsl:value-of select="descripcion"/> - <xsl:value-of select="$numComent"/> Comentarios</h4>
            <ul>
                <xsl:apply-templates select="comentarios/comentario"/>                
            </ul>
        </article>
    </xsl:template>

    <xsl:template match="comentario">
        <li><xsl:value-of select="."/></li>
    </xsl:template>
</xsl:stylesheet>