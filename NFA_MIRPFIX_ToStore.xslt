<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/body">
		<Pocket>
		<Body_Pocket>
			<xsl:for-each select="/body/tr">
				<Object Name="QUOTATION">
					<Property Name ="MARKET_SHORT">
						<xsl:value-of select="'NFA'"/>
					</Property>
					<Property Name ="MARKET_NAME">
						<xsl:value-of select="'MAIN'"/>
					</Property>
					<Property Name ="TRADING_PLACE_SHORT">
						<xsl:value-of select="'MAIN'"/>
					</Property>
					<Property Name ="TRADING_PLACE_NAME">
						<xsl:value-of select="'NFA'"/>
					</Property>
					<Property Name ="C$PROOF">
						<xsl:value-of select="1"/>
					</Property>
					<Property Name ="CURRENCYID">
						<xsl:value-of select="'RUB'"/>
					</Property>
					<Property Name ="INSTRUMENT_SHORT">
						<xsl:value-of select="td[3]"/>
					</Property>
					<Property Name ="INSTRUMENT_NAME">
						<xsl:value-of select="td[3]"/>
					</Property>
					<Property Name ="BID">
                        <xsl:value-of select="td[6]"/>
					</Property>
					<Property Name ="ASK">
						<xsl:value-of select="td[6]"/>
					</Property>
					<Property Name ="OFFER">
						<xsl:value-of select="td[6]"/>
					</Property>
					<Property Name ="MARKETPRICE">
						<xsl:value-of select="td[6]"/>
					</Property>
					<Property Name ="C$DATE">
						<xsl:value-of select="format-number(number(substring(td[1], 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(td[1], 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(td[1], 1, 2)), '00')"/>
					</Property>
					<Property Name ="MATDATE">
						<xsl:choose>
							<xsl:when test="string(td[5]) = ''">
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="format-number(number(substring(td[5], 7, 4)), '0000')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(td[5], 4, 2)), '00')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(td[5], 1, 2)), '00')"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
					<Property Name ="REGNUMBER">
						<xsl:choose>
							<xsl:when test="string(td[4]) = ''">
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="td[4]"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
				</Object>
			</xsl:for-each>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>