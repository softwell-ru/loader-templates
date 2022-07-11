<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/MICEX_DOC">
		<Pocket>
		<Body_Pocket>
			<xsl:if test="SEM21">
				<xsl:for-each select="//RECORDS">
					<Object Name="QUOTATION">
						<Property Name="MARKET_SHORT">
							<xsl:value-of select="'MICEX'"/>
						</Property>
						<Property Name="MARKET_NAME">
							<xsl:value-of select="'ММВБ'"/>
						</Property>
						<Property Name="TRADING_PLACE_SHORT">
							<xsl:value-of select="../@BoardId"/>
						</Property>
						<Property Name="TRADING_PLACE_NAME">
							<xsl:value-of select="../@BoardName"/>
						</Property>
						<Property Name="INSTRUMENT_SHORT">
							<xsl:value-of select="@SecurityId"/>
						</Property>
						<Property Name="INSTRUMENT_NAME">
							<xsl:value-of select="@SecShortName"/>
						</Property>
						<Property Name="C$DATE">
							<xsl:value-of select="../../@TradeDate"/>
						</Property>
						<Property Name="REGNUMBER">
							<xsl:value-of select="@RegNumber"/>
						</Property>
						<Property Name="DECIMALS">
							<xsl:value-of select="@Decimals"/>
						</Property>
						<xsl:if test="@FaceValue">
							<Property Name="FACEVALUE">
								<xsl:value-of select="@FaceValue"/>
							</Property>
						</xsl:if>
						<Property Name="AMOUNT">
							<xsl:value-of select="@Volume"/>
						</Property>
						<Property Name="VOLUME">
							<xsl:value-of select="@Value"/>
						</Property>
						<Property Name="CURRENCYID">
							<xsl:choose>
								<xsl:when test="@CurrencyId = &quot;RUR&quot;">
									<xsl:value-of select="&quot;RUB&quot;"/>
								</xsl:when>
								<xsl:when test="@CurrencyId = &quot;SUR&quot;">
									<xsl:value-of select="&quot;RUB&quot;"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="@CurrencyId"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<xsl:if test="@OpenPeriod">
							<Property Name="OPENPERIOD">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@OpenPeriod), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@OpenPeriod), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@OpenPeriod), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@OpenPeriod), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@OpenPeriod), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@Open">
							<Property Name="OPEN">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@Open), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@Open), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@Open), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@Open), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@Open), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@Low">
							<Property Name="LOW">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@Low), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@Low), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@Low), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@Low), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@Low), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@High">
							<Property Name="HIGH">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@High), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@High), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@High), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@High), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@High), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@Close">
							<Property Name="LAST_PRICE">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@Close), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@Close), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@Close), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@Close), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@Close), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@LegalClosePrice">
							<Property Name="CLOSE_PRICE">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@LegalClosePrice), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@LegalClosePrice), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@LegalClosePrice), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@LegalClosePrice), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@LegalClosePrice), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@LowOffer">
							<Property Name="LOWOFFER">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@LowOffer), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@LowOffer), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@LowOffer), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@LowOffer), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@LowOffer), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@HighBid">
							<Property Name="HIGHBID">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@HighBid), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@HighBid), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@HighBid), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@HighBid), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@HighBid), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@WAPrice">
							<Property Name="AVERAGE_PRICE">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@WAPrice), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@WAPrice), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@WAPrice), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@WAPrice), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@WAPrice), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@ClosePeriod">
							<Property Name="CLOSEPERIOD">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@ClosePeriod), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@ClosePeriod), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@ClosePeriod), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@ClosePeriod), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@ClosePeriod), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@TrendClose">
							<Property Name="TRENDCLOSE">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@TrendClose), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@TrendClose), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@TrendClose), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@TrendClose), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@TrendClose), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@TrendWAP">
							<Property Name="TRENDWAP">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@TrendWAP), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@TrendWAP), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@TrendWAP), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@TrendWAP), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@TrendWAP), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@Bid">
							<Property Name="BID">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@Bid), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@Bid), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@Bid), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@Bid), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@Bid), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@Offer">
							<Property Name="ASK">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@Offer), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@Offer), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@Offer), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@Offer), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@Offer), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@Prev">
							<Property Name="PREV">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@Prev), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@Prev), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@Prev), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@Prev), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@Prev), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@YieldAtWAP">
							<Property Name="YIELDATWAP">
								<xsl:value-of select="@YieldAtWAP"/>
							</Property>
						</xsl:if>
						<xsl:if test="@YieldClose">
							<Property Name="YIELDCLOSE">
								<xsl:value-of select="@YieldClose"/>
							</Property>
						</xsl:if>
						<xsl:if test="@AccInt">
							<Property Name="NKD">
								<xsl:value-of select="@AccInt"/>
							</Property>
						</xsl:if>
						<xsl:if test="@MarketPrice3">
							<Property Name="MARKETPRICE">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@MarketPrice3), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@MarketPrice3), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@MarketPrice3), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@MarketPrice3), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@MarketPrice3), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<Property Name="NUMTRADES">
							<xsl:value-of select="@NumTrades"/>
						</Property>
						<Property Name="ISSUESIZE">
							<xsl:value-of select="@IssueSize"/>
						</Property>
						<xsl:if test="@OpenVal">
							<Property Name="VOL_TR_OPN">
								<xsl:value-of select="@OpenVal"/>
							</Property>
						</xsl:if>
						<xsl:if test="@CloseVal">
							<Property Name="VOL_TR_LST">
								<xsl:value-of select="@CloseVal"/>
							</Property>
						</xsl:if>
						<xsl:if test="@MatDate">
							<Property Name="MATDATE">
								<xsl:value-of select="@MatDate"/>
							</Property>
						</xsl:if>
						<xsl:if test="@MarketPrice2">
							<Property Name="MARKETPRICE2">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@MarketPrice2), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@MarketPrice2), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@MarketPrice2), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@MarketPrice2), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@MarketPrice2), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@Duration">
							<Property Name="DURATION">
								<xsl:value-of select="@Duration"/>
							</Property>
						</xsl:if>
						<xsl:if test="@PrevLegalClosePrice">
							<Property Name="PREVLEGALCLOSEPRICE">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@PrevLegalClosePrice), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@PrevLegalClosePrice), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@PrevLegalClosePrice), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@PrevLegalClosePrice), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@PrevLegalClosePrice), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<Property Name="C$PROOF">
							<xsl:value-of select="1"/>
						</Property>
					</Object>
				</xsl:for-each>
			</xsl:if>			
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>
