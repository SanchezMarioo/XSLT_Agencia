<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template name="card">
    <div class="card">
      <div class="card-image">
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="imagen/url" />
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="imagen/descripcion" />
          </xsl:attribute>
        </img>
      </div>
      <div class="card-text">
        <h3>
          <xsl:value-of select="nombre" />
        </h3>
        <p>Destino: <xsl:value-of select="destino/ciudad" />, <xsl:value-of select="destino/pais" /></p>
        <p>Duracion: <xsl:value-of select="duracion_dias" /> dias</p>
        <p>Fecha de salida: <xsl:value-of select="fecha_salida" /></p>
        <p>Precio: <xsl:value-of select="precio_persona" /> EUR</p>
        <p>Plazas disponibles: <xsl:value-of select="plazas_disponibles" /></p>
        <p>
          <xsl:choose>
            <xsl:when test="plazas_disponibles = 0">
              <span class="agotado">Agotado</span>
            </xsl:when>
            <xsl:when test="plazas_disponibles &lt;= 3">
              <span class="ultimas">Ultimas plazas</span>
            </xsl:when>
            <xsl:otherwise>
              <span class="disponible">Disponible</span>
            </xsl:otherwise>
          </xsl:choose>
        </p>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="/">
    <html>
      <head>
        <title>Viajes Horizonte</title>
        <link rel="stylesheet" href="estilos.css" />
      </head>
      <body>
        <header>
          <h1>Viajes Horizonte</h1>
          <p>Descubre el mundo con nosotros</p>
        </header>
        <div class="seccion">
          <h2>Playa</h2>
          <p>Paquetes disponibles: <xsl:value-of select="count(//paquete[categoria='playa'])" /></p>
          <div class="cards">
            <xsl:for-each select="//paquete[categoria='playa']">
              <xsl:call-template name="card" />
            </xsl:for-each>
          </div>
        </div>
        <div class="seccion">
          <h2>Cultural</h2>
          <p>Paquetes disponibles: <xsl:value-of select="count(//paquete[categoria='cultural'])" /></p>
          <div class="cards">
            <xsl:for-each select="//paquete[categoria='cultural']">
              <xsl:call-template name="card" />
            </xsl:for-each>
          </div>
        </div>
        <div class="seccion">
          <h2>Aventura</h2>
          <p>Paquetes disponibles: <xsl:value-of select="count(//paquete[categoria='aventura'])" /></p>
          <div class="cards">
            <xsl:for-each select="//paquete[categoria='aventura']">
              <xsl:call-template name="card" />
            </xsl:for-each>
          </div>
        </div>
        <div class="seccion">
          <h2>Ciudad</h2>
          <p>Paquetes disponibles: <xsl:value-of select="count(//paquete[categoria='ciudad'])" /></p>
          <div class="cards">
            <xsl:for-each select="//paquete[categoria='ciudad']">
              <xsl:call-template name="card" />
            </xsl:for-each>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>