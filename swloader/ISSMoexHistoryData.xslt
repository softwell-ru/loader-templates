<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:strip-space elements="*"/>
	<xsl:template match="data[@id='marketdata_yields']"/>
	<xsl:template match="data[@id='secstats' or @id='marketdata' or @id='history' or @id='centralrates']">
		<Pocket>
			<Body_Pocket>
				<xsl:for-each select="//row">
					<Object Name="QUOTATION">
						<Property Name="MARKET_SHORT">
							<xsl:value-of select="'MICEX'"/>
						</Property>
						<Property Name="MARKET_NAME">
							<xsl:value-of select="'MICEX'"/>
						</Property>
						<Property Name="MARKET_PLACE_NAME">
							<xsl:value-of select="'MICEX'"/>
						</Property>
						<Property Name="MARKET_PLACE_CODE">
							<xsl:value-of select="'MICEX'"/>
						</Property>
						<xsl:choose>
							<xsl:when test="@BOARDID = 'RFUD'">
								<Property Name="TRADING_PLACE_SHORT">
									<xsl:value-of select="'FORTS'"/>
								</Property>
								<Property Name="TRADING_PLACE_NAME">
									<xsl:value-of select="'FORTS'"/>
								</Property>
							</xsl:when>
							<xsl:when test="@RATE">
								<Property Name="TRADING_PLACE_SHORT">
									<xsl:value-of select="'FIXS'"/>
								</Property>
								<Property Name="TRADING_PLACE_NAME">
									<xsl:value-of select="'FIXS'"/>
								</Property>
							</xsl:when>
							<xsl:when test="@PRICE">
								<Property Name="TRADING_PLACE_SHORT">
									<xsl:value-of select="'CENTRALRATES'"/>
								</Property>
								<Property Name="TRADING_PLACE_NAME">
									<xsl:value-of select="'CENTRALRATES'"/>
								</Property>
							</xsl:when>
							<xsl:otherwise>
									<Property Name="TRADING_PLACE_SHORT">
										<xsl:value-of select="@BOARDID"/>
									</Property>
									<Property Name="TRADING_PLACE_NAME">
										<xsl:value-of select="@BOARDID"/>
									</Property>
								</xsl:otherwise>
						</xsl:choose>
						<Property Name="INSTRUMENT_SHORT">
							<xsl:choose>
								<xsl:when test="@SECID">
									<xsl:value-of select="@SECID"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="@FACEUNIT"/>
									<xsl:text>/</xsl:text>
									<xsl:value-of select="@CURRENCYID"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<Property Name="INSTRUMENT_NAME">
							<xsl:choose>
								<xsl:when test="@SECID">
									<xsl:value-of select="@SECID"/>
									<xsl:text>-</xsl:text>
									<xsl:value-of select="@SHORTNAME"/>
									<xsl:text>-</xsl:text>
									<xsl:value-of select="@SECNAME"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="@FACEUNIT"/>
									<xsl:text>/</xsl:text>
									<xsl:value-of select="@CURRENCYID"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<Property Name="C$DATE">
							<xsl:choose>
								<xsl:when test="@TRADEDATE">
									<xsl:value-of select="@TRADEDATE"/>
								</xsl:when>
								<xsl:when test="@SYSTIME">
									<xsl:value-of select="@SYSTIME"/>
								</xsl:when>
								<xsl:when test="@IMTIME">
									<xsl:value-of select="@IMTIME"/>
								</xsl:when>
								<xsl:when test="@PREVDATE">
									<xsl:value-of select="@PREVDATE"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:variable name="vToday">
										<xsl:value-of select="current-dateTime()"/>
									</xsl:variable>
									<xsl:value-of select="substring($vToday, 1, 10)"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<Property Name="C$PROOF">
							<xsl:value-of select="1"/>
						</Property>
						<Property Name="BID">
							<xsl:value-of select="@BID"/>
						</Property>
						<Property Name="ASK">
							<xsl:value-of select="@OFFER"/>
						</Property>
						<Property Name="LOW">
							<xsl:value-of select="@LOW"/>
						</Property>
						<Property Name="HIGH">
							<xsl:value-of select="@HIGH"/>
						</Property>
						<Property Name="OPEN">
							<xsl:value-of select="@OPEN"/>
						</Property>
						<Property Name="OFFER">
							<xsl:value-of select="@OFFER"/>
						</Property>
						<Property Name="LOWOFFER">
							<xsl:value-of select="@LOWOFFER"/>
						</Property>
						<Property Name="HIGHBID">
							<xsl:value-of select="@HIGHBID"/>
						</Property>
						<Property Name="NUMTRADES">
							<xsl:value-of select="@NUMTRADES"/>
						</Property>
						<Property Name="LAST_PRICE">
							<xsl:value-of select="@PREVPRICE"/>
						</Property>
						<Property Name="CLOSE_PRICE">
							<xsl:choose>
								<xsl:when test="@LCLOSEPRICE">
									<xsl:value-of select="@LCLOSEPRICE"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="@CLOSE"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<Property Name="MARKETPRICE">
							<xsl:value-of select="@MARKETPRICE2"/>
						</Property>
						<Property Name="PREVWAPRICE">
							<xsl:value-of select="@WAPRICE"/>
						</Property>
						<Property Name="PRICEMINUSPREVWAPRICE">
							<xsl:value-of select="@PRICEMINUSPREVWAPRICE"/>
						</Property>
						<Property Name="SETTLEPRICE">
							<xsl:choose>
								<xsl:when test="@LCURRENTPRICE">
									<xsl:value-of select="@LCURRENTPRICE"/>
								</xsl:when>
								<xsl:when test="@PRICE">
									<xsl:value-of select="@PRICE"/>
								</xsl:when>
								<xsl:when test="@LASTSETTLEPRICE">
									<xsl:value-of select="@LASTSETTLEPRICE"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="@SETTLEPRICE"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<Property Name="SWAP_RATE">
							<xsl:value-of select="@SWAPRATE"/>
						</Property>
					</Object>
				</xsl:for-each>
			</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>