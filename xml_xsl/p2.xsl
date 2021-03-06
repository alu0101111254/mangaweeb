<?xml version="1.0"?>
<xsl:stylesheet version ="1.1"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template name="user.header.content">
    <xsl:variable name="codefile" select="document('index.html',/)"/>
  </xsl:template>
  <xsl:template match ="/">
    <HTML>
      <head>
        <title>
          MANGAWEEB.COM
        </title>
        <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700" rel="stylesheet"></link>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"></link>
        <link rel="stylesheet" href="../src/css/style.css" ></link>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js" ></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" ></script>
        <script src="https://www.gstatic.com/firebasejs/7.6.1/firebase.js" ></script>
        <script src="../src/js/index.js" ></script>
      </head>



      <BODY>
        <xsl:element name="header">
          <xsl:attribute name="id">main-header</xsl:attribute>
          <xsl:element name="nav">
            <xsl:attribute name="class">navbar navbar-expand-lg </xsl:attribute>
            <xsl:element name="a">
              <xsl:attribute name="class">navbar-brand weeb</xsl:attribute>
              <xsl:attribute name="type">button</xsl:attribute>
              <xsl:attribute name="href">index.html</xsl:attribute>
              MANGAWEEB
            </xsl:element>
            <xsl:element name="div">
              <xsl:attribute name="class">flex-list collapse navbar-collapse</xsl:attribute>
              <xsl:attribute name="id">navbarSupportedContent</xsl:attribute>
              <xsl:element name="ul">
                <xsl:element name="li">
                  <xsl:element name="center">
                    <xsl:element name="a">
                      <xsl:attribute name="class">nav-link navbarfont</xsl:attribute>
                      <xsl:attribute name="type">button</xsl:attribute>
                      <xsl:attribute name="href">index.html</xsl:attribute>
                      Home
                    </xsl:element>
                  </xsl:element>
                </xsl:element>
                <xsl:element name="li">
                  <xsl:element name="center">
                    <xsl:element name="a">
                      <xsl:attribute name="class">nav-link navbarfont</xsl:attribute>
                      <xsl:attribute name="href">#login-modal</xsl:attribute>
                      <xsl:attribute name="id">login</xsl:attribute>
                      <xsl:attribute name="data-toggle">modal</xsl:attribute>
                      <xsl:attribute name="data-target">#login-modal</xsl:attribute>
                      Iniciar
                      sesion
                    </xsl:element>
                  </xsl:element>
                </xsl:element>
                <xsl:element name="li">
                  <xsl:element name="a">
                    <xsl:attribute name="class">nav-link navbarfont</xsl:attribute>
                    <xsl:attribute name="href">#signup-modal</xsl:attribute>
                    <xsl:attribute name="id">signup</xsl:attribute>
                    <xsl:attribute name="data-toggle">modal</xsl:attribute>
                    <xsl:attribute name="data-target">#signup-modal</xsl:attribute>
                    Registrarse
                  </xsl:element>
                </xsl:element>
                <xsl:element name="li">
                  <xsl:attribute name="class">nav-item</xsl:attribute>
                  <xsl:attribute name="style">float:right</xsl:attribute>
                  <xsl:element name="a">
                    <xsl:attribute name="class">nav-link navbarfont</xsl:attribute>
                    <xsl:attribute name="href"></xsl:attribute>
                    Distribuidoras
                  </xsl:element>
                </xsl:element>
                  <xsl:element name="li">
                    <xsl:element name="a">
                      <xsl:attribute name="class">nav-link dropdown-toggle navbarfont</xsl:attribute>
                      <xsl:attribute name="href">#</xsl:attribute>
                      <xsl:attribute name="id">showuser</xsl:attribute>
                      <xsl:attribute name="role">button</xsl:attribute>
                      <xsl:attribute name="data-toggle">dropdown</xsl:attribute>
                      <xsl:attribute name="haspopup">true</xsl:attribute>
                      <xsl:attribute name="expanded">false</xsl:attribute>
                    </xsl:element>
                    <xsl:element name="div">
                      <xsl:attribute name="class">dropdown-menu navbarfont dpmenu dropdown-menu-right</xsl:attribute>
                      <xsl:attribute name="labelledby">showuser</xsl:attribute>
                      <xsl:element name="button">
                        <xsl:attribute name="class">dropdown-item navbarfont dplogout</xsl:attribute>
                        <xsl:attribute name="id">1</xsl:attribute>
                        <xsl:attribute name="onclick">logout()</xsl:attribute>
                        logout
                      </xsl:element>
                    </xsl:element>
                  </xsl:element>
              </xsl:element>
            </xsl:element>
          </xsl:element>
        </xsl:element>

        <br>
        </br>
        <xsl:element name="table">
          <xsl:for-each select="MANGA_DISTRIBUTORS/DISTRIBUTOR">
            <xsl:sort select="COMPANY" />
            <xsl:element name="td">

              <xsl:value-of select="COMPANY"/>
              <br>
              </br>
              <xsl:element name="img">
                <xsl:attribute name="src">
                  <xsl:value-of select="LOGO"/>
                </xsl:attribute>
                <xsl:attribute name="height">200</xsl:attribute>
                <xsl:attribute name="width">300</xsl:attribute>
              </xsl:element>
              <br>
              </br>
              <xsl:value-of select="FOUNDING"/>
              <br />
              <p>Age : <xsl:value-of select="2020-translate(FOUNDING, translate(FOUNDING, '0123456789', ''), '')" /></p>

              <p>Magazines:</p>
                <xsl:for-each select="MAGAZINE_LIST/MAGAZINE">
                  <xsl:element name="li">
                    <xsl:value-of select="."/>
                  </xsl:element>
                </xsl:for-each>
              <p>Notable Mangas:</p>
                <xsl:for-each select="NOTABLE_SERIES/TITLE">
                  <xsl:element name="li">
                    <xsl:value-of select="."/>
                  </xsl:element>
                </xsl:for-each>
              <p>Notable Mangakas:</p>
                <xsl:for-each select="NOTABLE_MANGAKAS/NAME">
                  <xsl:element name="li">
                    <xsl:value-of select="."/>
                  </xsl:element>
                </xsl:for-each>
            </xsl:element>
            <br>
            </br>
          </xsl:for-each>
        </xsl:element>






        <!-- VENTANAS EMERGENTES BOOTSTRAP -->

<xsl:element name="div">
  <xsl:attribute name="class"> modal fade</xsl:attribute>
  <xsl:attribute name="role">dialog</xsl:attribute>
  <xsl:attribute name="id">login-modal</xsl:attribute>
  <xsl:element name="div">
    <xsl:attribute name="class">modal-dialog modal-dialog-centered</xsl:attribute>
    <xsl:element name="div">
      <xsl:attribute name="class">modal-content</xsl:attribute>
      <xsl:element name="div">
        <xsl:attribute name="class">modal-header</xsl:attribute>
        <xsl:element name="h3">
          <xsl:attribute name="class">modal-title</xsl:attribute>
          Iniciar sesion
        </xsl:element>
        <xsl:element name="button">
          <xsl:attribute name="type">button</xsl:attribute>
          <xsl:attribute name="class">close</xsl:attribute>
          <xsl:attribute name="dismiss">modal</xsl:attribute>
          X
        </xsl:element>
      </xsl:element>
      <xsl:element name="div">
        <xsl:attribute name="class">modal-body</xsl:attribute>
        <xsl:element name="input">
          <xsl:attribute name="type">email</xsl:attribute>
          <xsl:attribute name="placeholder">Email...</xsl:attribute>
          <xsl:attribute name="id">email_field</xsl:attribute>
        </xsl:element>
        <xsl:element name="input">
          <xsl:attribute name="type">password</xsl:attribute>
          <xsl:attribute name="placeholder">Password...</xsl:attribute>
          <xsl:attribute name="id">password_field</xsl:attribute>
        </xsl:element>
        <xsl:element name="button">
          <xsl:attribute name="onclick">login()</xsl:attribute>
          Iniciar sesion
        </xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:element>
</xsl:element>
<xsl:element name="div">
  <xsl:attribute name="class"> modal fade</xsl:attribute>
  <xsl:attribute name="role">dialog</xsl:attribute>
  <xsl:attribute name="id">signup-modal</xsl:attribute>
  <xsl:element name="div">
    <xsl:attribute name="class">modal-dialog modal-dialog-centered</xsl:attribute>
    <xsl:element name="div">
      <xsl:attribute name="class">modal-content</xsl:attribute>
      <xsl:element name="div">
        <xsl:attribute name="class">modal-header</xsl:attribute>
        <xsl:element name="h3">
          <xsl:attribute name="class">modal-title</xsl:attribute>
          Registrarse
        </xsl:element>
        <xsl:element name="button">
          <xsl:attribute name="type">button</xsl:attribute>
          <xsl:attribute name="class">close</xsl:attribute>
          <xsl:attribute name="dismiss">modal</xsl:attribute>
          X
        </xsl:element>
      </xsl:element>
      <xsl:element name="div">
        <xsl:attribute name="class">modal-body</xsl:attribute>
        <input type="email" placeholder="Email..." id="signup_email_field" />
        <br></br>
        <input type="password" placeholder="Contraseña" id="signup_password_field" />
        <br></br>
        <input type="password" placeholder="Confirme la contraseña" id="signup_password_field2" />
        <br></br>
        <input type="number" placeholder="Edad" id="Edad" />
        <br></br>
        <a>Permisos:</a>
        <br></br>
        <label><input type="checkbox" id="cbox1" value="first_checkbox" />Permitir enviarle publicidad a su email</label>
        <br></br>
        <input type="checkbox" id="cbox2" value="second_checkbox" /> <label for="cbox2">Permitir enviar mangas recomendados a su email</label>
      </xsl:element>
      <xsl:element name="div">
        <xsl:attribute name="class">modal-footer</xsl:attribute>
        <xsl:element name="button">
          <xsl:attribute name="onclick">signup()</xsl:attribute>
          Registrarse
        </xsl:element>
      </xsl:element>
    </xsl:element>
  </xsl:element>
</xsl:element>


</BODY>

</HTML>

</xsl:template>
</xsl:stylesheet>
