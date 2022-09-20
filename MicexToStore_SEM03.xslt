<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/MICEX_DOC">
		<Pocket>
		<Body_Pocket>
			<xsl:if test="SEM03">
				<xsl:for-each select="//RECORDS">
					<Object Name="DEAL">
						<Property Name="TRADE_NUMBER">
							<xsl:value-of select="@TradeNo"/>
						</Property>
						<Property Name="TRADE_TIME">
							<xsl:value-of select="format-number(number(substring(../../../../../../../../@TradeDate, 1, 4)), '0000')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(../../../../../../../../@TradeDate, 6, 2)), '00')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(../../../../../../../../@TradeDate, 9, 2)), '00')"/>
							<xsl:text>T</xsl:text>
							<xsl:value-of select="@TradeTime"/>
						</Property>
						<Property Name="ORDERNO">
							<xsl:value-of select="@OrderNo"/>
						</Property>
						<Property Name="TRADE_TYPE">
							<xsl:value-of select="@TradeType"/>
						</Property>
						<Property Name="TRADE_SIDE">
							<xsl:value-of select="@BuySell"/>
						</Property>
						<Property Name="TRADE_ACCOUNT">
							<xsl:value-of select="../@TrdAccId"/>
						</Property>
						<xsl:if test="@Price">
							<Property Name="TRADE_PRICE">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@Price), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@Price), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@Price), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@Price), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@Price), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<Property Name="TRADE_QUANTITY">
							<xsl:value-of select="@Quantity"/>
						</Property>
						<Property Name="TRADE_VALUE">
							<xsl:choose>
								<xsl:when test="@AccInt">
									<xsl:value-of select="format-number((number(@Amount) - number(@AccInt)), '#0.00')"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="format-number(number(@Amount), '#0.00')"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<Property Name="SETTLECODE">
							<xsl:value-of select="@SettleCode"/>
						</Property>
						<xsl:if test="@Yield">
							<Property Name="TRADE_YIELD">
								<xsl:value-of select="format-number(number(@Yield), '#0.00')"/>
							</Property>
						</xsl:if>
						<xsl:if test="@AccInt">
							<Property Name="ACCRUEDINT">
								<xsl:value-of select="format-number(number(@AccInt), '#0.00')"/>
							</Property>
						</xsl:if>
						<Property Name="TRADE_USERID">
							<xsl:value-of select="@UserId"/>
						</Property>
						<Property Name="TRADE_FIRMID">
							<xsl:value-of select="../../../../../../@FirmID"/>
						</Property>
						<xsl:if test="@BrokerRef">
							<Property Name="TRADE_REF">
								<xsl:value-of select="@BrokerRef"/>
							</Property>
						</xsl:if>
						<xsl:if test="@CPFirmId">
							<Property Name="CPFIRMID">
								<xsl:value-of select="@CPFirmId"/>
							</Property>
						</xsl:if>
						<xsl:if test="@Price2">
							<Property Name="PRICE2">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@Price2), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@Price2), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@Price2), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@Price2), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@Price2), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@RepoRate">
							<Property Name="REPORATE">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@RepoRate), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@RepoRate), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@RepoRate), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@RepoRate), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@RepoRate), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<Property Name="TRADE_DATE">
							<xsl:value-of select="format-number(number(substring(../../../../../../../../@TradeDate, 1, 4)), '0000')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(../../../../../../../../@TradeDate, 6, 2)), '00')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(../../../../../../../../@TradeDate, 9, 2)), '00')"/>
						</Property>
						<xsl:if test="@RepoPeriod">
							<Property Name="REPOTERM">
								<xsl:value-of select="@RepoPeriod"/>
							</Property>
						</xsl:if>
						<xsl:if test="@AccInt2">
							<Property Name="ACCRUED2">
								<xsl:value-of select="format-number(number(@AccInt2), '#0.00')"/>
							</Property>
						</xsl:if>
						<Property Name="COMISSION">
							<xsl:value-of select="format-number(number(@ExchComm), '#0.00')"/>
						</Property>
						<Property Name="SETTLE_DATE">
							<xsl:choose>
								<xsl:when test="@OutStandingReturnValue or @RepoRate or @RepoValue">
									<xsl:choose>
										<xsl:when test="@RepoValue">
											<xsl:variable name="vSettleDate" select="../../../@SettleDate" as="xs:date"/>
											<xsl:value-of select="$vSettleDate - @RepoPeriod * xsd:dayTimeDuration('P1D')"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="format-number(number(substring(../../../../../../../@TradeDate, 1, 4)), '0000')"/>
											<xsl:text>-</xsl:text>
											<xsl:value-of select="format-number(number(substring(../../../../../../../@TradeDate, 6, 2)), '00')"/>
											<xsl:text>-</xsl:text>
											<xsl:value-of select="format-number(number(substring(../../../../../../../@TradeDate, 9, 2)), '00')"/>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 1, 4)), '0000')"/>
									<xsl:text>-</xsl:text>
									<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 6, 2)), '00')"/>
									<xsl:text>-</xsl:text>
									<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 9, 2)), '00')"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<Property Name="MARKET_SHORT">
							<xsl:value-of select="'MICEX'"/>
						</Property>
						<Property Name="MARKET_NAME">
							<xsl:value-of select="'����'"/>
						</Property>
						<Property Name="TRADING_PLACE_SHORT">
							<xsl:value-of select="../../../../@BoardId"/>
						</Property>
						<Property Name="TRADING_PLACE_NAME">
							<xsl:value-of select="../../../../@BoardName"/>
						</Property>
						<Property Name="INSTRUMENT_SHORT">
							<xsl:value-of select="../../@SecurityId"/>
						</Property>
						<Property Name="INSTRUMENT_NAME">
							<xsl:value-of select="../../@SecShortName"/>
						</Property>
						<xsl:if test="@Period">
							<Property Name="TRADE_PERIOD">
								<xsl:value-of select="@Period"/>
							</Property>
						</xsl:if>
						<xsl:if test="@RepoValue">
							<Property Name="REPOVALUE">
								<xsl:value-of select="format-number(number(@RepoValue), '#0.00')"/>
							</Property>
						</xsl:if>
						<xsl:if test="@OutStandingReturnValue">
							<Property Name="REPO2VALUE">
								<xsl:value-of select="@OutStandingReturnValue"/>
							</Property>
						</xsl:if>
						<xsl:if test="@Discount">
							<Property Name="STARTDISCOUNT">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@Discount), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@Discount), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@Discount), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@Discount), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@Discount), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@LowerDiscount">
							<Property Name="LOWERDISCOUNT">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@LowerDiscount), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@LowerDiscount), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@LowerDiscount), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@LowerDiscount), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@LowerDiscount), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<xsl:if test="@UpperDiscount">
							<Property Name="UPPERDISCOUNT">
								<xsl:choose>
									<xsl:when test="@Decimals = 2">
										<xsl:value-of select="format-number(number(@UpperDiscount), '#0.00')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 3">
										<xsl:value-of select="format-number(number(@UpperDiscount), '#0.000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 4">
										<xsl:value-of select="format-number(number(@UpperDiscount), '#0.0000')"/>
									</xsl:when>
									<xsl:when test="@Decimals = 5">
										<xsl:value-of select="format-number(number(@UpperDiscount), '#0.00000')"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="format-number(number(@UpperDiscount), '#0.000000')"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
						</xsl:if>
						<Property Name="PAYMENTCURR">
							<xsl:choose>
								<xsl:when test="../../../../../@CurrencyId = &quot;RUR&quot;">
									<xsl:value-of select="&quot;RUB&quot;"/>
								</xsl:when>
								<xsl:when test="../../../../../@CurrencyId = &quot;SUR&quot;">
									<xsl:value-of select="&quot;RUB&quot;"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="../../../../../@CurrencyId"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<Property Name="PRICE_CURRENCY">
							<xsl:choose>
								<xsl:when test="../../../../../@CurrencyId = &quot;RUR&quot;">
									<xsl:value-of select="&quot;RUB&quot;"/>
								</xsl:when>
								<xsl:when test="../../../../../@CurrencyId = &quot;SUR&quot;">
									<xsl:value-of select="&quot;RUB&quot;"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="../../../../../@CurrencyId"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<xsl:if test="@OutStandingReturnValue or @RepoRate or @RepoValue">
							<Property Name="FARLEGSETTLEDATE">
								<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 1, 4)), '0000')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 6, 2)), '00')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 9, 2)), '00')"/>
							</Property>
						</xsl:if>
						<xsl:if test="@OutStandingReturnValue or @RepoRate or @RepoValue">
							<Property Name="SETTLE_DATE_FACT">
								<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 1, 4)), '0000')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 6, 2)), '00')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 9, 2)), '00')"/>
							</Property>
						</xsl:if>
						<xsl:if test="@OutStandingReturnValue or @RepoRate or @RepoValue">
							<Property Name="PARENTTRADENO">
								<xsl:value-of select="@TradeNo"/>
							</Property>
						</xsl:if>
					</Object>
				</xsl:for-each>
			</xsl:if>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>
