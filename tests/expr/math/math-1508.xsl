<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">
<?spec fo#func-number?>
<!-- PURPOSE:  Test of number() conversion function. -->
<xsl:variable name="emptyResultTreeFragTest">
<xsl:value-of select="foo"/>
</xsl:variable>

<xsl:template match="doc">
<out>
<xsl:value-of select="number($emptyResultTreeFragTest)"/>
</out>
</xsl:template>
</xsl:stylesheet>