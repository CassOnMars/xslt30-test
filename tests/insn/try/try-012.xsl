<?xml version="1.0"?> 

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes=" err">

    <!-- Element-available on xsl:try and xsl:catch - true in Saxon-SA, false in Saxon-B -->

    <xsl:template name="main">
        <out try="{element-available('xsl:try')}" catch="{element-available('xsl:catch')}"/>
    </xsl:template>

</xsl:stylesheet>
