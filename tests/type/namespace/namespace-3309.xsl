<?xml version="1.0"?>
<xsl:stylesheet version="2.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns="http://default.com/">

<?spec xslt#creating-attributes?>
    <!-- Purpose: Have default namespace declared, request attribute in namespace
    same as default. No prefix on attribute name. Processor must create a prefix. -->

<xsl:output method="xml" indent="no" encoding="UTF-8"/>

<xsl:template match="/">
  <out>
    <xsl:element name="inner">
      <xsl:attribute name="Attr0" namespace="http://default.com/">true</xsl:attribute>
    </xsl:element>
  </out>
</xsl:template>

</xsl:stylesheet>