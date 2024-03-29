<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

<xsl:template match="/">
  <out><xsl:apply-templates/></out>
</xsl:template>  

<xsl:template match="text()"/>

<xsl:template match="descendant::text()[normalize-space()][1]">
  <found>
    <xsl:copy-of select="."/>
  </found>
</xsl:template>

</xsl:stylesheet>