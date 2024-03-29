<?xml version="1.0" ?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0"
xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs">

<?spec fo#date-time-values?>
  <!-- PURPOSE: XPath 2.0: test sorting of dates -->

  <xsl:template match="/">
    <xsl:variable name="list" 
    select="( xs:dateTime('1996-12-23T14:00:00Z'),
              xs:date('1997-12-23Z'),
              xs:dateTime('1996-12-23T13:29:00.200+03:00'),
              xs:dateTime('1995-12-23T13:29:00.200+03:00'),
              xs:date('1996-11-23'),
              xs:dateTime('1996-12-23T13:13:00.200+04:00'),
              xs:dateTime('9999-12-23T13:13:00.200+03:00'))"/>    
    <A>
        <xsl:for-each select="$list">
        <xsl:sort select="xs:date(.)"/>
        <b><xsl:value-of select="."/></b>
        </xsl:for-each>
    </A>                               
  </xsl:template>

</xsl:stylesheet>
