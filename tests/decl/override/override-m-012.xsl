<xsl:package name="http://www.w3.org/xslt30tests/override-m-012" package-version="1.0.0"
  version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:xs="http://www.w3.org/2001/XMLSchema"
  xmlns:p="http://www.w3.org/xslt30tests/override-base-m-001" declared-modes="no"
  exclude-result-prefixes="xs p">

  <xsl:use-package name="http://www.w3.org/xslt30tests/override-base-m-001" package-version="1.0.0">

    <xsl:override default-mode="m3">
      <xsl:template match="A" priority="5">
        <a1>
          <xsl:next-match/>
          <xsl:call-template name="alpha"/>
        </a1>
      </xsl:template>
      <xsl:template match="A" priority="4" name="alpha">
        <beta/>
      </xsl:template>
    </xsl:override>

  </xsl:use-package>

  <xsl:variable name="in">
        <X>
          <A>
            <B>22</B>
          </A>
        </X>
  </xsl:variable>

  <xsl:template name="main">
    <out>
      <xsl:apply-templates select="$in" mode="m3"/>
    </out>
  </xsl:template>


</xsl:package>
