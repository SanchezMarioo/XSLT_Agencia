<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Viajes horizonte</title>
      </head>
      <body>
        <h1>Catalogo de viajes</h1>
        <xsl:for-each select="//paquete">
          <div>
            <h2>
              <xsl:value-of select="nombre"/>
            </h2>
            <p>Destino: <xsl:value-of select="destino/ciudad"/>, <xsl:value-of select="destino/pais"/></p>
            <p>Categoría: <xsl:value-of select="categoria"/></p>
            <p>Duración: <xsl:value-of select="duracion_dias"/> días</p>
            <p>Fecha de salida: <xsl:value-of select="fecha_salida"/></p>
            <p>Precio: <xsl:value-of select="precio_persona"/> €</p>
            <p>Plazas disponibles: <xsl:value-of select="plazas_disponibles"/></p>
            <p>
                Estado:
                <xsl:choose>
                    <xsl:when test="plazas_disponibles = 0">Agotado</xsl:when>
                    <xsl:when test="plazas_disponibles &lt;= 3">¡Últimas plazas!</xsl:when>
                    <xsl:otherwise>Disponible</xsl:otherwise>
                </xsl:choose>
            </p>
          </div>
          <hr/>
        </xsl:for-each>
        
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
