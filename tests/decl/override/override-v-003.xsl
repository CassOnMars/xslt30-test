<xsl:package 
  name="http://www.w3.org/xslt30tests/override-v-003"
  package-version="1.0.1"
  version="3.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  exclude-result-prefixes="xs">
  
  <xsl:use-package
    name="http://www.w3.org/xslt30tests/override-base-201"
    package-version="1.0.0">
  
    <xsl:override>
  
      <xsl:variable name="v-public" as="xs:integer" visibility="public" select="$xsl:original + 13"/>
    
      <xsl:variable name="v-abstract" as="xs:integer" visibility="public" select="93"/>
      
    </xsl:override>  
    
  </xsl:use-package>
  
  
   
    <xsl:template name="main">
      <xsl:choose>
        <xsl:when test="$v-public = 14"><ok/></xsl:when>
        <xsl:otherwise><wrong value="{$v-public}"/></xsl:otherwise>
      </xsl:choose>
    </xsl:template>
    
 
  
</xsl:package>   