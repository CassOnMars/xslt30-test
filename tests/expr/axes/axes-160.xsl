<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec xpath#id-path-expressions?>
    <!-- Purpose: Test for '//*' (i.e., all descendants, but elements only). -->

<xsl:template match="/">
  <out>
    <xsl:for-each select="//near-north">
      <xsl:apply-templates select="center//*"/>
    </xsl:for-each>
  </out>
</xsl:template>

<xsl:template match="*">
  <xsl:value-of select="name(.)"/><xsl:text> </xsl:text>
</xsl:template>

</xsl:stylesheet>