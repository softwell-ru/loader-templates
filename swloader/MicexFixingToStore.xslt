<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="//rates">
		<Pocket>
		<Body_Pocket>
			<xsl:for-each select="//rate">
				<Object Name="QUOTATION">
					<Property Name ="MARKET_SHORT">
						<xsl:value-of select="'NCCB'"/>
					</Property>
					<Property Name ="MARKET_NAME">
						<xsl:value-of select="'NCCB'"/>
					</Property>
					<Property Name ="TRADING_PLACE_SHORT">
						<xsl:value-of select="'CETS'"/>
					</Property>
					<Property Name ="TRADING_PLACE_NAME">
						<xsl:value-of select="'CETS'"/>
					</Property>
					<Property Name ="INSTRUMENT_SHORT">
						<xsl:value-of select="'USDRUB_TOM'"/>
					</Property>
					<Property Name ="INSTRUMENT_NAME">
						<xsl:value-of select="'USDRUB_TOM'"/>
					</Property>
					<Property Name ="C$DATE">
						<xsl:value-of select="@Moment"/>
					</Property>
					<Property Name ="BID">
						<xsl:value-of select="@Value"/>
					</Property>
					<Property Name ="ASK">
						<xsl:value-of select="@Value"/>
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