<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<xsl:strip-space elements="foo"/>

<?spec xslt#patterns?>
    <!-- Purpose: Test for //name match pattern. -->

<xsl:template match="doc">
 <out>
 	<xsl:apply-templates/>
 </out>
</xsl:template>

<xsl:template match="//foo">
  <xsl:value-of select="@att1"/>
  <xsl:apply-templates/>
</xsl:template>

</xsl:stylesheet>
