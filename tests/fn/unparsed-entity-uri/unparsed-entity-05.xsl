<?xml version="1.0"?> 
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

  <!-- PURPOSE: unparsed entities preserved by xsl:copy-of  -->

  <xsl:template match="/">
    <xsl:variable name="p" as="document-node()">
      <xsl:copy-of select="." validation="strip"/>
    </xsl:variable>
    <out>
      <xsl:for-each select="$p">
        <a><xsl:value-of select="ends-with(unparsed-entity-uri('hatch-pic'), '/fn/grafix/OpenHatch.gif')"/></a>
        <b><xsl:value-of select="unparsed-entity-public-id('hatch-pic')"/></b>
        <c><xsl:value-of select="ends-with(unparsed-entity-uri('watch-pic'), '/fn/grafix/OpenHatch.gif')"/></c>
        <d><xsl:value-of select="unparsed-entity-public-id('watch-pic')"/></d>
      </xsl:for-each>      
    </out>
  </xsl:template>
 
</xsl:stylesheet>
