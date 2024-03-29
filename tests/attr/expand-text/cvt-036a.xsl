<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

    <xsl:template name="xsl:initial-template">
        <out>
            <xsl:for-each select="1 to 10" expand-text="yes">
                <xsl:if test="position() mod 2">
                    <xsl:value-of select="'foo-', position()" separator=""/>
                </xsl:if>
            </xsl:for-each>
        </out>
    </xsl:template>

</xsl:stylesheet>
