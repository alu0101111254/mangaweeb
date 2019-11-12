<?xml version="1.0"?>
<xsl:stylesheet version ="1.1"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match ="/">
    <HTML>
      <BODY>
        <h2> MANGAWEEB.COM </h2>
        <BR>
        </BR>
        <table>
          <xsl:for-each select="MANGA">
            <td>
              <img>
                <xsl:attribute name="src">
                <xsl:value-of select="IMAGEN">
                </xsl:attribute>
              </img>
            </td>
            <td>
              <xsl:value-of select="TITULO"/>
              <BR/>
              <xsl:value-of select="AUTOR"/>
            </td>
        </xsl:for-each>
        </table>
              <!--<tr>
                <td>
                  <img>
                    <xsl:attribute name='src'>
                    <xsl:value-of select="IMAGEN">
                    </xsl:attribute>
                  </img>
                </td>
                <td>
                  <xsl:value-of select="TITULO"/>

                  <xsl:value-of select="AUTOR"/>
                </td>
                <td>
                  <xsl:value-of select="CAPITULOS">

                  <xsl:value-of select="FECHA_ACTUALIZACION">
                </td>
              </tr>-->

</BODY>
</HTML>
</xsl:template>
</xsl:stylesheet>
