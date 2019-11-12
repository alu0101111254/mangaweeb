<?xml version='1.0' ?>

<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <BODY>
     <B> HOLA
</B>
     <BR/>
     <BR/>

    </BODY>
  </html>



<!--<?xml version="1.0" enconding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.1">
  <xsl:template match="/">
    <HTML>
      <BODY>
        <B> MANGAWEEB.COM </B>
        <BR/>
        <BR/>
        <TABLE>
          <xsl:for-each select="BASE/MANGA">
            <xsl:sort order="ascending" select="TITULO"/>
            <TR>
              <TD>
                <img>
                  <xsl:attribute name='src'>
                  <xsl:value-of select="IMAGEN">
                  </xsl:attribute>
                </img>
              </TD>
              <TD>
                <xsl:value-of select="TITULO"/>

                <xsl:value-of select="AUTOR"/>
              </TD>
              <TD>
                <xsl:value-of select="CAPITULOS">

                <xsl:value-of select="FECHA_ACTUALIZACION">
              </TD>
            </TR>
          </xsl:for-each>
        </TABLE>
      </BODY>
    </HTML>
  </xsl:template>
</xsl:stylesheet>
