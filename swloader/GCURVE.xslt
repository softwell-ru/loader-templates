<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/document/data[@id='yearyields']">
		<Pocket>
		<Body_Pocket>
			<xsl:for-each select="//row">
				<xsl:if test="@period">
				<Object Name="QUOTATION">
					<Property Name ="MARKET_NAME">
						<xsl:value-of select="'MICEX'"/>
					</Property>
					<Property Name ="MARKET_SHORT">
						<xsl:value-of select="'MICEX'"/>
					</Property>
					<Property Name ="TRADING_PLACE_NAME">
						<xsl:value-of select="'GCURVE'"/>
					</Property>
					<Property Name ="TRADING_PLACE_SHORT">
						<xsl:value-of select="'GCURVE'"/>
					</Property>
					<Property Name ="C$DATE">
						<xsl:value-of select="@tradedate"/>
					</Property>
					<Property Name ="C$TIME">
						<xsl:value-of select="@tradetime"/>
					</Property>
					<Property Name ="C$PROOF">
						<xsl:value-of select="'1'"/>
					</Property>
					<Property Name ="MARKETPRICE">
						<xsl:value-of select="@value"/>
					</Property>
					<Property Name ="INSTRUMENT_SHORT">
						<xsl:text>GCURVE_</xsl:text>
						<xsl:choose>
							<xsl:when test="@period='0.25'">
								<xsl:value-of select="'3M'"/>
							</xsl:when>
							<xsl:when test="@period = '0.5'">
								<xsl:value-of select="'6M'"/>
							</xsl:when>
							<xsl:when test="@period = '0.75'">
								<xsl:value-of select="'9M'"/>
							</xsl:when>
							<xsl:when test="@period = '1.00'">
								<xsl:value-of select="'1Y'"/>
							</xsl:when>
							<xsl:when test="@period = '2.00'">
								<xsl:value-of select="'2Y'"/>
							</xsl:when>
							<xsl:when test="@period = '3.00'">
								<xsl:value-of select="'3Y'"/>
							</xsl:when>
							<xsl:when test="@period = '5.00'">
								<xsl:value-of select="'5Y'"/>
							</xsl:when>
							<xsl:when test="@period = '7.00'">
								<xsl:value-of select="'7Y'"/>
							</xsl:when>
							<xsl:when test="@period = '10.00'">
								<xsl:value-of select="'10Y'"/>
							</xsl:when>
							<xsl:when test="@period = '15.00'">
								<xsl:value-of select="'15Y'"/>
							</xsl:when>
							<xsl:when test="@period = '20.00'">
								<xsl:value-of select="'20Y'"/>
							</xsl:when>
							<xsl:when test="@period = '30.00'">
								<xsl:value-of select="'30Y'"/>
							</xsl:when>
						</xsl:choose>
					</Property>
					<Property Name ="INSTRUMENT_NAME">
						<xsl:text>GCURVE_</xsl:text>
						<xsl:choose>
							<xsl:when test="@period='0.25'">
								<xsl:value-of select="'3M'"/>
							</xsl:when>
							<xsl:when test="@period = '0.5'">
								<xsl:value-of select="'6M'"/>
							</xsl:when>
							<xsl:when test="@period = '0.75'">
								<xsl:value-of select="'9M'"/>
							</xsl:when>
							<xsl:when test="@period = '1.00'">
								<xsl:value-of select="'1Y'"/>
							</xsl:when>
							<xsl:when test="@period = '2.00'">
								<xsl:value-of select="'2Y'"/>
							</xsl:when>
							<xsl:when test="@period = '3.00'">
								<xsl:value-of select="'3Y'"/>
							</xsl:when>
							<xsl:when test="@period = '5.00'">
								<xsl:value-of select="'5Y'"/>
							</xsl:when>
							<xsl:when test="@period = '7.00'">
								<xsl:value-of select="'7Y'"/>
							</xsl:when>
							<xsl:when test="@period = '10.00'">
								<xsl:value-of select="'10Y'"/>
							</xsl:when>
							<xsl:when test="@period = '15.00'">
								<xsl:value-of select="'15Y'"/>
							</xsl:when>
							<xsl:when test="@period = '20.00'">
								<xsl:value-of select="'20Y'"/>
							</xsl:when>
							<xsl:when test="@period = '30.00'">
								<xsl:value-of select="'30Y'"/>
							</xsl:when>
						</xsl:choose>
					</Property>
				</Object>
				</xsl:if>
			</xsl:for-each>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>