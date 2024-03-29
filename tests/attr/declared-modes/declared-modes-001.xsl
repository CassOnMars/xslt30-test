<?xml version="1.0"?> 
<xsl:package xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

  <!-- PURPOSE:  Use of undeclared mode on xsl:template is an error (declared-modes defaults to true). -->

  <xsl:template match="text()" mode="a">
    <xsl:text>mode-a:</xsl:text>
    <xsl:value-of select="."/>
  </xsl:template>

  <xsl:template name="main">
    <xsl:text>no-mode:</xsl:text>
    <xsl:value-of select="."/>
  </xsl:template>

</xsl:package>
