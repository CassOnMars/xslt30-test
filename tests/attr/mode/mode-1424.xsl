<?xml version="1.0"?> 

<!-- mode-onnomatch015s -->
<!-- Michael Kay -->
<!-- on-no-match=fail, no failure, with streaming --> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs">

  <xsl:mode on-no-match="fail" streamable="yes"/>
  
  <xsl:template match="/">
    <xsl:apply-templates/>
  </xsl:template>
  
  <xsl:template match="*">
    <xsl:copy><xsl:apply-templates/></xsl:copy>
  </xsl:template>
  
  <xsl:template match="text()">
    <xsl:value-of select="."/>
  </xsl:template>
  
    
</xsl:stylesheet>