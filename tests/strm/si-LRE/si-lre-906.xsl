<xsl:transform version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:map="http://www.w3.org/2005/xpath-functions/map"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="map xs">
    
    <xsl:variable name="RUN" select="true()" static="yes"/>
    <xsl:strip-space elements="*"/>
   

  <!-- LRE referring to an attribute set with streamable="Yes" (not allowed) -->
  
  <xsl:attribute-set name="as-4" streamable="Yes">
    <xsl:attribute name="x" select="1"/>
    <xsl:attribute name="y" select="2"/>
  </xsl:attribute-set> 
   
  <xsl:template name="cy-906" use-when="$RUN">
    <out>
      <xsl:source-document streamable="yes" href="../docs/citygml.xml">
        <e xsl:use-attribute-sets="as-4"/>
      </xsl:source-document>
    </out>
  </xsl:template>  
  
</xsl:transform>  