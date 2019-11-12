<?xml version="1.0"?>
<xsl:stylesheet version ="1.1" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match ="/">
    <HTML>
      <BODY>
        <!-- HAY QUE PONER LA CABECERA Y EL MENU ESTANDAR AQUI-->
        <h2> MANGAWEEB.COM </h2>
        <BR>
        </BR>
        <table>
          <xsl:template match="MANGA_DISTRIBUTOR/DISTRIBUTOR"><!--Selecciona un nodo para poder usar la funcion position() -->
            <xsl:for-each select="*[position() mod 2 = 1]"><!--ESTO es para poder tener dos elementos por columna, preguntar al profe si hay alguna opcion mejor-->
              <tr>
                <td>
                  <xsl:value-of select="."/><!--selecciona el primer elemento par-->
                    </td>
                    <td>
                  <xsl:value-of select="following-sibling::*[1]"/><!--selecciona el segundo elemento(supuestamente)-->
                </td>
              </tr>
            </xsl:for-each>
          </xsl:template>
          </table>
        </BODY>
      </HTML>
    </xsl:template>
  </xsl:stylesheet>
