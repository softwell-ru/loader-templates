<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="//RegData">
		<Pocket>
		<Body_Pocket>
			<xsl:for-each select="//RegData">
				<Object Name="QUOTATION">
					<Property Name ="MARKET_SHORT">
						<xsl:value-of select="'NATIONALBANK'"/>
					</Property>
					<Property Name ="MARKET_NAME">
						<xsl:value-of select="'CB_REF'"/>
					</Property>
					<Property Name ="TRADING_PLACE_SHORT">
						<xsl:value-of select="'CB_REF'"/>
					</Property>
					<Property Name ="TRADING_PLACE_NAME">
						<xsl:value-of select="'NATIONALBANK'"/>
					</Property>
					<Property Name ="INSTRUMENT_SHORT">
						<xsl:value-of select="'CBRF_REF'"/>
					</Property>
					<Property Name ="INSTRUMENT_NAME">
						<xsl:value-of select="'Ставка рефинансирования'"/>
					</Property>
					<Property Name ="C$DATE">
						<xsl:variable name="vToday">
							<xsl:value-of select="current-dateTime()"/>
						</xsl:variable>
						<xsl:value-of select="substring($vToday, 1, 10)"/>
					</Property>
					<Property Name ="BID">
						<xsl:value-of select="stavka_ref"/>
					</Property>
					<Property Name ="ASK">
						<xsl:value-of select="stavka_ref"/>
					</Property>
					<Property Name ="MARKETPRICE">
						<xsl:value-of select="stavka_ref"/>
					</Property>
					<Property Name ="CURRENCYID">
						<xsl:value-of select="'RUB'"/>
					</Property>
					<Property Name ="C$PROOF">
						<xsl:value-of select="1"/>
					</Property>
				</Object>
			</xsl:for-each>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>