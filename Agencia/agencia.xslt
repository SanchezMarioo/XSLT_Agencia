<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">
    <html>
      <head>
        <title>Viajes Horizonte</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                font-family: Arial, sans-serif;
                background-color: #f5f5f5;
                color: #333;
            }

            header {
                background-color: #1a73e8;
                color: white;
                padding: 30px;
                text-align: center;
            }

            header h1 {
                font-size: 2rem;
            }

            header p {
                margin-top: 8px;
                font-size: 1rem;
                opacity: 0.85;
            }

            .seccion {
                max-width: 1200px;
                margin: 40px auto;
                padding: 0 20px;
            }

            .seccion h2 {
                font-size: 1.5rem;
                margin-bottom: 20px;
                padding-bottom: 8px;
                border-bottom: 3px solid #1a73e8;
            }

            .cards {
                display: flex;
                flex-wrap: nowrap;
                gap: 20px;
            }

            .card {
                background: white;
                border-radius: 10px;
                padding: 20px;
                box-shadow: 0 2px 8px rgba(0,0,0,0.1);
            }
                  img {
                      width: 400px;
                      height: 350px;
                      object-fit: cover;
                }

            .card h3 {
                font-size: 1.1rem;
                margin-bottom: 10px;
                color: #1a73e8;
            }

            .card p {
                font-size: 0.9rem;
                margin-bottom: 6px;
            }

            .agotado { color: red; font-weight: bold; }
            .ultimas { color: orange; font-weight: bold; }
            .disponible { color: green; font-weight: bold; }
        </style>
      </head>
      <body>
        <header>
          <h1>Viajes Horizonte</h1>
          <p>Descubre el mundo con nosotros</p>
        </header>
        <div class="seccion">
          <h2>Playa</h2>
          <div class="cards">
            <xsl:for-each select="//paquete[categoria='playa']">
              <div class="card">
                <h3>
                  <xsl:value-of select="nombre"/>
                </h3>
                <p>Destino: <xsl:value-of select="destino/ciudad"/>, <xsl:value-of select="destino/pais"/></p>
                <p>Duracion: <xsl:value-of select="duracion_dias"/> dias</p>
                <p>Fecha de salida: <xsl:value-of select="fecha_salida"/></p>
                <p>Precio: <xsl:value-of select="precio_persona"/> EUR</p>
                <p>Plazas disponibles: <xsl:value-of select="plazas_disponibles"/></p>
                <img>
                  <xsl:attribute name="src">
                    <xsl:value-of select="imagen"/>
                  </xsl:attribute>
                </img>
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
            </xsl:for-each>
          </div>
        </div>
        <div class="seccion">
          <h2>Cultural</h2>
          <div class="cards">
            <xsl:for-each select="//paquete[categoria='cultural']">
              <div class="card">
                <h3>
                  <xsl:value-of select="nombre"/>
                </h3>
                <p>Destino: <xsl:value-of select="destino/ciudad"/>, <xsl:value-of select="destino/pais"/></p>
                <p>Duracion: <xsl:value-of select="duracion_dias"/> dias</p>
                <p>Fecha de salida: <xsl:value-of select="fecha_salida"/></p>
                <p>Precio: <xsl:value-of select="precio_persona"/> EUR</p>
                <p>Plazas disponibles: <xsl:value-of select="plazas_disponibles"/></p>
                <img>
                  <xsl:attribute name="src">
                    <xsl:value-of select="imagen"/>
                  </xsl:attribute>
                </img>
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
            </xsl:for-each>
          </div>
        </div>
        <div class="seccion">
          <h2>Aventura</h2>
          <div class="cards">
            <xsl:for-each select="//paquete[categoria='aventura']">
              <div class="card">
                <h3>
                  <xsl:value-of select="nombre"/>
                </h3>
                <p>Destino: <xsl:value-of select="destino/ciudad"/>, <xsl:value-of select="destino/pais"/></p>
                <p>Duracion: <xsl:value-of select="duracion_dias"/> dias</p>
                <p>Fecha de salida: <xsl:value-of select="fecha_salida"/></p>
                <p>Precio: <xsl:value-of select="precio_persona"/> EUR</p>
                <p>Plazas disponibles: <xsl:value-of select="plazas_disponibles"/></p>
                <img>
                  <xsl:attribute name="src">
                    <xsl:value-of select="imagen"/>
                  </xsl:attribute>
                </img>
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
            </xsl:for-each>
          </div>
        </div>
        <div class="seccion">
          <h2>Ciudad</h2>
          <div class="cards">
            <xsl:for-each select="//paquete[categoria='ciudad']">
              <div class="card">
                <h3>
                  <xsl:value-of select="nombre"/>
                </h3>
                <p>Destino: <xsl:value-of select="destino/ciudad"/>, <xsl:value-of select="destino/pais"/></p>
                <p>Duracion: <xsl:value-of select="duracion_dias"/> dias</p>
                <p>Fecha de salida: <xsl:value-of select="fecha_salida"/></p>
                <p>Precio: <xsl:value-of select="precio_persona"/> EUR</p>
                <p>Plazas disponibles: <xsl:value-of select="plazas_disponibles"/></p>
                <img>
                  <xsl:attribute name="src">
                    <xsl:value-of select="imagen"/>
                  </xsl:attribute>
                </img>
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
            </xsl:for-each>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
