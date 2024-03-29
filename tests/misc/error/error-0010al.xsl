<?xml version="1.0" encoding="UTF-8"?>
<!--It is a static error if an
                     XSLT-defined element is used in a context where it is not permitted, if a
                        required attribute is omitted, or if the content of the
                     element does not correspond to the content that is allowed for the element.-->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<!-- Error: xsl:for-each - xsl:sort must come first -->
<?spec xslt#errors?><?error XTSE0010?>

   <xsl:template name="x"/>
  
  <xsl:template match="doc">
      <out>
         <xsl:for-each select="*">
            <xsl:value-of select="."/>
            <xsl:sort select="@fred"/>
         </xsl:for-each>  
         <xsl:message>Error not detected!</xsl:message>
      </out>
  </xsl:template>




</xsl:stylesheet>
