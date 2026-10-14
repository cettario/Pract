<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text" encoding="UTF-8"/>
  <xsl:template match="/sum-of-sequence">
    <xsl:choose>
      <xsl:when test="number(from) &lt;= number(to)">
        <xsl:value-of select="format-number(((number(to) - number(from) + 1) * (number(from) + number(to))) div 2, '0')"/>
      </xsl:when>
      <xsl:otherwise>0</xsl:otherwise>
    </xsl:choose>
  </xsl:template>
</xsl:stylesheet>
