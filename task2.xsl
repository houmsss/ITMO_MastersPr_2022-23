<?xml version='1.0' encoding='utf-8' ?>
<xsl:stylesheet version='1.0'
  xmlns:xsl='http://www.w3.org/1999/XSL/Transform'>
  <xsl:template match='root/графика'>
    <html>
      <head>
        <title></title>
      </head>
      <body>
        <h4 id='author' title='GossJS'>Перепелкин Александр</h4>

        <svg>
          <xsl:attribute name='width'>
            <xsl:value-of select='@ширина'/>
          </xsl:attribute>

          <xsl:attribute name='height'>
            <xsl:value-of select='@высота'/>
          </xsl:attribute>

          <xsl:apply-templates/>
        </svg>
      </body>
    </html>
  </xsl:template>

  <xsl:template match='эллипс'>
    <ellipse>
      <xsl:attribute name='cx'>
        <xsl:value-of select='@cx'/>
      </xsl:attribute>

      <xsl:attribute name='cy'>
        <xsl:value-of select='@cy'/>
      </xsl:attribute>

      <xsl:attribute name='rx'>
        <xsl:value-of select='@rx'/>
      </xsl:attribute>

      <xsl:attribute name='ry'>
        <xsl:value-of select='@ry'/>
      </xsl:attribute>

      <xsl:attribute name='style'>stroke:<xsl:value-of select='@ободок'/>
;stroke-width:<xsl:value-of select='@ширина-ободка'/>
;fill:<xsl:value-of select='@заливка'/>
;</xsl:attribute>
</ellipse>
</xsl:template>
</xsl:stylesheet>