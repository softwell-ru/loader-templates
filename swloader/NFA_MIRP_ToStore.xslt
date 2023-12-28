<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/operators">
		<Pocket>
		<Body_Pocket>
			<xsl:for-each select="/operators/item">
				<Object Name="QUOTATION">
					<Property Name ="MARKET_SHORT">
						<xsl:value-of select="'NFA'"/>
					</Property>
					<Property Name ="MARKET_NAME">
						<xsl:value-of select="'NFA_MIRP'"/>
					</Property>
					<Property Name ="TRADING_PLACE_SHORT">
						<xsl:value-of select="'NFA_MIRP'"/>
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
						<xsl:value-of select="isin"/>
                        <xsl:text>-</xsl:text>
                        <xsl:value-of select="operator"/>
					</Property>
					<Property Name ="INSTRUMENT_NAME">
						<xsl:value-of select="isin"/>
                        <xsl:text>-</xsl:text>
                        <xsl:value-of select="operator"/>
					</Property>
					<Property Name ="BID">
                        <xsl:value-of select="bid"/>
					</Property>
					<Property Name ="ASK">
						<xsl:value-of select="ask"/>
					</Property>
					<Property Name ="OFFER">
						<xsl:value-of select="ask"/>
					</Property>
					<Property Name ="C$DATE">
						<xsl:value-of select="format-number(number(substring(date, 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(date, 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(date, 1, 2)), '00')"/>
					</Property>
				</Object>
			</xsl:for-each>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>