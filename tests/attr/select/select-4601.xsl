<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="2.0">

<?spec xpath#combining_seq?>
  <!-- Purpose: NodeSet union using a function that returns a node set (key) as each term. -->
  <!-- Expression015 in NIST suite -->

<xsl:key name="key1" match="book" use="@author"></xsl:key>
<xsl:key name="key2" match="book" use="@author"></xsl:key>

<xsl:template match="/">
  <out><xsl:text>
</xsl:text>
    <xsl:apply-templates select="key('key1','Mary Brady')|key('key2','Rick Rivello')"/>
  </out>
</xsl:template>

<xsl:template match="*">
  <xsl:value-of select="."/><xsl:text>
    </xsl:text>
</xsl:template>

</xsl:stylesheet>