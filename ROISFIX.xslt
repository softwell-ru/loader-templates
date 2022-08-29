<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/archive">
		<Pocket>
		<Body_Pocket>
			<xsl:for-each select="/archive/values/value">
				<Object Name="QUOTATION">
					<Property Name ="TRADING_PLACE_SHORT">
						<xsl:value-of select="'MAIN'"/>
					</Property>
					<Property Name ="MARKET_NAME">
						<xsl:value-of select="'MAIN'"/>
					</Property>
					<Property Name ="MARKET_SHORT">
						<xsl:value-of select="'NFA'"/>
					</Property>
					<Property Name ="TRADING_PLACE_NAME">
						<xsl:value-of select="'NFA'"/>
					</Property>
					<Property Name ="C$DATE">
						<xsl:value-of select="format-number(number(substring(../date, 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(../date, 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(../date, 1, 2)), '00')"/>
					</Property>
					<Property Name ="C$PROOF">
						<xsl:value-of select="1"/>
					</Property>
					<Property Name ="CURRENCYID">
						<xsl:value-of select="'RUB'"/>
					</Property>
					<Property Name ="LAST_PRICE">
						<xsl:value-of select="."/>
					</Property>
					<Property Name ="INSTRUMENT_SHORT">
						<xsl:text>ROISFIX_</xsl:text>
						<xsl:value-of select="@name"/>
					</Property>
					<Property Name ="INSTRUMENT_NAME">
						<xsl:text>ROISFIX_</xsl:text>
						<xsl:value-of select="@name"/>
					</Property>
				</Object>
			</xsl:for-each>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>