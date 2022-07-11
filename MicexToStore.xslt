<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
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
							<xsl:value-of select="format-number(number(substring(../../../../../../../@TradeDate, 1, 4)), '0000')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(../../../../../../../@TradeDate, 6, 2)), '00')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(../../../../../../../@TradeDate, 9, 2)), '00')"/>
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
							<xsl:value-of select="format-number(number(substring(../../../../../../../@TradeDate, 1, 4)), '0000')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(../../../../../../../@TradeDate, 6, 2)), '00')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(../../../../../../../@TradeDate, 9, 2)), '00')"/>
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
							<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 1, 4)), '0000')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 6, 2)), '00')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(../../../@SettleDate, 9, 2)), '00')"/>
						</Property>
						<Property Name="MARKET_SHORT">
							<xsl:value-of select="'MICEX'"/>
						</Property>
						<Property Name="MARKET_NAME">
							<xsl:value-of select="'ММВБ'"/>
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
					</Object>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="EQM06">
				<xsl:for-each select="//RECORDS">
					<xsl:if test="(../../../../../../../@InfType = 1 or ../../../../../../../@InfType = 2) and @RepoPart = 2">
						<Object Name="DEAL">
							<Property Name="TRADE_NUMBER">
								<xsl:value-of select="@TradeNo"/>
							</Property>
							<Property Name="TRADE_SIDE">
								<xsl:value-of select="@BuySell"/>
							</Property>
							<Property Name="TRADE_ACCOUNT">
								<xsl:value-of select="@TrdAccId"/>
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
							<xsl:if test="@AccInt">
								<Property Name="ACCRUEDINT">
									<xsl:value-of select="format-number(number(@AccInt), '#0.00')"/>
								</Property>
							</xsl:if>
							<Property Name="TRADE_FIRMID">
								<xsl:value-of select="../../../../../../../../../@FirmID"/>
							</Property>
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
							<Property Name="TRADE_DATE">
								<xsl:value-of select="format-number(number(substring(@TradeDate, 1, 4)), '0000')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(@TradeDate, 6, 2)), '00')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(@TradeDate, 9, 2)), '00')"/>
							</Property>
							<Property Name="TRADE_TIME">
								<xsl:value-of select="format-number(number(substring(@TradeDate, 1, 4)), '0000')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(@TradeDate, 6, 2)), '00')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(@TradeDate, 9, 2)), '00')"/>
								<xsl:text>T</xsl:text>
								<xsl:value-of select="@ReportTime"/>
							</Property>
							<xsl:if test="@RepoPeriod">
								<Property Name="REPOTERM">
									<xsl:value-of select="@RepoPeriod"/>
								</Property>
							</xsl:if>
							<xsl:if test="@ExchComm">
								<Property Name="COMISSION">
									<xsl:value-of select="format-number(number(@ExchComm), '#0.00')"/>
								</Property>
							</xsl:if>
							<xsl:if test="@ClrComm">
								<Property Name="COMISSIONSETTL">
									<xsl:value-of select="format-number(number(@ClrComm), '#0.00')"/>
								</Property>
							</xsl:if>
							<xsl:if test="@ITSComm">
								<Property Name="COMISSION_ITS">
									<xsl:value-of select="format-number(number(@ITSComm), '#0.00')"/>
								</Property>
							</xsl:if>
							<Property Name="SETTLE_DATE">
								<xsl:value-of select="format-number(number(substring(string(../../../../@SettleDate), 1, 4)), '0000')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(../../../../@SettleDate, 6, 2)), '00')"/>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="format-number(number(substring(../../../../@SettleDate, 9, 2)), '00')"/>
							</Property>
							<Property Name="MARKET_SHORT">
								<xsl:value-of select="'MICEX'"/>
							</Property>
							<Property Name="MARKET_NAME">
								<xsl:value-of select="'ММВБ'"/>
							</Property>
							<Property Name="TRADING_PLACE_SHORT">
								<xsl:value-of select="../../@BoardId"/>
							</Property>
							<Property Name="TRADING_PLACE_NAME">
								<xsl:value-of select="../../@BoardName"/>
							</Property>
							<Property Name="INSTRUMENT_SHORT">
								<xsl:value-of select="../@SecurityId"/>
							</Property>
							<Property Name="PAYMENTCURR">
								<xsl:choose>
									<xsl:when test="../../../../../../../../@CurrencyId = &quot;RUR&quot;">
										<xsl:value-of select="&quot;RUB&quot;"/>
									</xsl:when>
									<xsl:when test="../../../../../../../../@CurrencyId = &quot;SUR&quot;">
										<xsl:value-of select="&quot;RUB&quot;"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="../../../../../../../../@CurrencyId"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
							<Property Name="PRICE_CURRENCY">
								<xsl:choose>
									<xsl:when test="../../../../../../../../@CurrencyId = &quot;RUR&quot;">
										<xsl:value-of select="&quot;RUB&quot;"/>
									</xsl:when>
									<xsl:when test="../../../../../../../../@CurrencyId = &quot;SUR&quot;">
										<xsl:value-of select="&quot;RUB&quot;"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="../../../../../../../../@CurrencyId"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
							<Property Name="INFTYPE">
								<xsl:value-of select="../../../../../../../@InfType"/>
							</Property>
							<Property Name="SETTLE_DATE_FACT">
								<xsl:value-of select="../../../../@SettleDate"/>
							</Property>
						</Object>
					</xsl:if>
				</xsl:for-each>
			</xsl:if>
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
			<xsl:if test="SEM25">
				<xsl:for-each select="//RECORDS">
          <xsl:variable name="var1" select="@Value"/>
					<xsl:choose>
						<xsl:when test="$var1 &gt; 0">
							<Object Name="TRANSACTION">
								<Property Name="MARKET_SHORT">
									<xsl:value-of select="'MICEX'"/>
								</Property>
								<Property Name="MARKET_NAME">
									<xsl:value-of select="'ММВБ'"/>
								</Property>
								<Property Name="TRADING_PLACE_SHORT">
									<xsl:value-of select="'Main'"/>
								</Property>
								<Property Name="TRADING_PLACE_NAME">
									<xsl:value-of select="'Main'"/>
								</Property>
								<Property Name="INSTRUMENT_SHORT">
                                    <xsl:choose>
                                        <xsl:when test="../../@CurrencyId = &quot;RUR&quot;">
                                            <xsl:value-of select="&quot;RUB&quot;"/>
                                        </xsl:when>
                                        <xsl:when test="../../@CurrencyId = &quot;SUR&quot;">
                                            <xsl:value-of select="&quot;RUB&quot;"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="../../@CurrencyId"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
								</Property>
								<Property Name="INSTRUMENT_NAME">
                                    <xsl:choose>
                                        <xsl:when test="../../@CurrencyId = &quot;RUR&quot;">
                                            <xsl:value-of select="&quot;RUB&quot;"/>
                                        </xsl:when>
                                        <xsl:when test="../../@CurrencyId = &quot;SUR&quot;">
                                            <xsl:value-of select="&quot;RUB&quot;"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="../../@CurrencyId"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
								</Property>
								<Property Name="PRICE_CURRENCY">
									<xsl:choose>
										<xsl:when test="../../@CurrencyId = &quot;RUR&quot;">
											<xsl:value-of select="&quot;RUB&quot;"/>
										</xsl:when>
										<xsl:when test="../../@CurrencyId = &quot;SUR&quot;">
											<xsl:value-of select="&quot;RUB&quot;"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="../../@CurrencyId"/>
										</xsl:otherwise>
									</xsl:choose>
								</Property>
								<Property Name="AMOUNT">
									<xsl:value-of select="format-number(number(@Value), '#0.00')"/>
								</Property>
								<Property Name="VALUE_DATE">
									<xsl:value-of select="@SettleDate"/>
								</Property>
								<Property Name="TRADE_ACCOUNT">
									<xsl:value-of select="@TrdAccId"/>
								</Property>
								<Property Name="TRANSACT_TYPE">
									<xsl:value-of select="'MARGINCALL'"/>
								</Property>
								<Property Name="DEAL_NUM">
									<xsl:value-of select="@RepoTradeNo"/>
								</Property>
								<Property Name="DEAL_SIDE">
									<xsl:value-of select="''"/>
								</Property>
								<Property Name="TRNS_DIRECTION">
									<xsl:choose>
										<xsl:when test="@Direction = &quot;D&quot;">
											<xsl:value-of select="-1"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="1"/>
										</xsl:otherwise>
									</xsl:choose>
								</Property>
								<Property Name="TRADE_DATE">
									<xsl:value-of select="@RepoTradeDate"/>
								</Property>
							</Object>
						</xsl:when>
						<xsl:otherwise>
							<Object Name="TRANSACTION">
								<Property Name="MARKET_SHORT">
									<xsl:value-of select="'MICEX'"/>
								</Property>
								<Property Name="MARKET_NAME">
									<xsl:value-of select="'ММВБ'"/>
								</Property>
								<Property Name="TRADING_PLACE_SHORT">
									<xsl:value-of select="'Main'"/>
								</Property>
								<Property Name="TRADING_PLACE_NAME">
									<xsl:value-of select="'Main'"/>
								</Property>
								<Property Name="INSTRUMENT_SHORT">
									<xsl:value-of select="../@SecurityId"/>
								</Property>
								<Property Name="INSTRUMENT_NAME">
									<xsl:value-of select="../@SecName"/>
								</Property>
								<Property Name="PRICE_CURRENCY">
									<xsl:choose>
										<xsl:when test="../../@CurrencyId = &quot;RUR&quot;">
											<xsl:value-of select="&quot;RUB&quot;"/>
										</xsl:when>
										<xsl:when test="../../@CurrencyId = &quot;SUR&quot;">
											<xsl:value-of select="&quot;RUB&quot;"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="../../@CurrencyId"/>
										</xsl:otherwise>
									</xsl:choose>
								</Property>
								<Property Name="AMOUNT">
									<xsl:value-of select="format-number(number(@Quantity), '#0.00')"/>
								</Property>
								<Property Name="VALUE_DATE">
									<xsl:value-of select="@SettleDate"/>
								</Property>
								<Property Name="TRADE_ACCOUNT">
									<xsl:value-of select="@TrdAccId"/>
								</Property>
								<Property Name="TRANSACT_TYPE">
									<xsl:value-of select="'MARGINCALL'"/>
								</Property>
								<Property Name="DEAL_NUM">
									<xsl:value-of select="@RepoTradeNo"/>
								</Property>
								<Property Name="DEAL_SIDE">
									<xsl:value-of select="''"/>
								</Property>
								<Property Name="TRNS_DIRECTION">
									<xsl:choose>
										<xsl:when test="@Direction = &quot;D&quot;">
											<xsl:value-of select="-1"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="1"/>
										</xsl:otherwise>
									</xsl:choose>
								</Property>
								<Property Name="TRADE_DATE">
									<xsl:value-of select="@RepoTradeDate"/>
								</Property>
							</Object>
						</xsl:otherwise>
					</xsl:choose>

				</xsl:for-each>
			</xsl:if>

			<xsl:if test="CUX23">
				<xsl:for-each select="//RECORDS">
					<xsl:if test="@RepoTradeNo">
						<xsl:if test="@ExchComm=0">
							<xsl:variable name = "Price1">
								<xsl:value-of select="//RECORDS[(@ExchComm &gt; 0) and @RepoTradeNo=current()/@RepoTradeNo]/@Price"/>
							</xsl:variable>
							<Object Name="DEAL">
								<Property Name ="MARKET_SHORT">
									<xsl:value-of select="'MICEX'"/>
								</Property>
								<Property Name ="MARKET_NAME">
									<xsl:value-of select="'ММВБ'"/>
								</Property>
								<Property Name="TRADING_PLACE_SHORT">
									<xsl:value-of select="@BoardId"/>
								</Property>
								<Property Name="TRADING_PLACE_NAME">
									<xsl:value-of select="@BoardName"/>
								</Property>
								<Property Name="INSTRUMENT_SHORT">
									<xsl:value-of select="../@MainSecurityId"/>
								</Property>
								<Property Name="INSTRUMENT_NAME">
									<xsl:value-of select="../@MainSecShortName"/>
								</Property>
								<Property Name="TRADE_DATE">
									<xsl:value-of select="../../../../../../../../../@ReportDate"/>
								</Property>
								<Property Name="TRADE_NUMBER">
									<xsl:value-of select="@RepoTradeNo"/>
								</Property>
								<Property Name="TRADE_SIDE">
									<xsl:value-of select="@BuySell"/>
								</Property>
								<Property Name="TRADE_ACCOUNT">
									<xsl:value-of select="substring(../../../../../../../../../@FirmId, 1, 7)"/>
									<xsl:value-of select="../../../../../../../@ExtSettleCode"/>
								</Property>
								<Property Name="ORDERNO">
									<xsl:value-of select="@OrderNo"/>
								</Property>
								<Property Name="TRADE_TIME">
									<xsl:value-of select="../../../../../../../../../@ReportDate"/>
									<xsl:text>T</xsl:text>
									<xsl:value-of select="@TradeTime"/>
								</Property>
								<Property Name ="TRADE_TYPE">T</Property>
								<Property Name="TRADE_PRICE">
									<xsl:choose>
										<xsl:when test="@Decimals = 2">
											<xsl:value-of select="format-number(number(@Price)-number($Price1), '#0.00')"/>
										</xsl:when>
										<xsl:when test="@Decimals = 3">
											<xsl:value-of select="format-number(number(@Price)-number($Price1), '#0.000')"/>
										</xsl:when>
										<xsl:when test="@Decimals = 4">
											<xsl:value-of select="format-number(number(@Price)-number($Price1), '#0.0000')"/>
										</xsl:when>
										<xsl:when test="@Decimals = 5">
											<xsl:value-of select="format-number(number(@Price)-number($Price1), '#0.00000')"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="format-number(number(@Price)-number($Price1), '#0.000000')"/>
										</xsl:otherwise>
									</xsl:choose>
								</Property>
								<Property Name ="TRADE_QUANTITY">
									<xsl:value-of select="@Quantity"/>
								</Property>
								<Property Name ="TRADE_VALUE">
									<xsl:value-of select="format-number(number(@Value), '#0.00')"/>
								</Property>
								<Property Name="SETTLE_DATE">
									<xsl:value-of select="../../../@SettleDate"/>
								</Property>
								<xsl:if test="@ExchComm">
									<Property Name="COMISSION">
										<xsl:value-of select="format-number(number(@ExchComm), '#0.00')"/>
									</Property>
								</xsl:if>
								<xsl:if test="@ITSComm">
									<Property Name="COMISSION_ITS">
										<xsl:value-of select="format-number(number(@ITSComm), '#0.00')"/>
									</Property>
								</xsl:if>
								<xsl:if test="@ClrComm">
									<Property Name="COMISSIONSETTL">
										<xsl:value-of select="format-number(number(@ClrComm), '#0.00')"/>
									</Property>
								</xsl:if>
								<Property Name="TRADE_FIRMID">
									<xsl:value-of select="../../../../../../../../../@FirmId"/>
								</Property>
								<xsl:if test="@CPFirmId">
									<Property Name ="CPFIRMID">
										<xsl:value-of select="@CPFirmId"/>
									</Property>
								</xsl:if>
								<Property Name ="TRADE_PERIOD">
									<xsl:value-of select="@Period"/>
								</Property>
								<Property Name ="SETTLECODE">
									<xsl:value-of select="@SettleCode"/>
								</Property>
								<Property Name ="TRADE_USERID">
									<xsl:value-of select="@UserId"/>
								</Property>
								<Property Name ="TRADE_TRADER">
									<xsl:value-of select="@UserExchangeId"/>
								</Property>
								<xsl:if test="@BrokerRef">
									<Property Name ="TRADE_REF">
										<xsl:value-of select="@BrokerRef"/>
									</Property>
								</xsl:if>
							</Object>
						</xsl:if>
					</xsl:if>
					<Object Name="DEAL">
						<Property Name ="MARKET_SHORT">
							<xsl:value-of select="'MICEX'"/>
						</Property>
						<Property Name ="MARKET_NAME">
							<xsl:value-of select="'ММВБ'"/>
						</Property>
						<Property Name="TRADING_PLACE_SHORT">
							<xsl:value-of select="@BoardId"/>
						</Property>
						<Property Name="TRADING_PLACE_NAME">
							<xsl:value-of select="@BoardName"/>
						</Property>
						<Property Name="INSTRUMENT_SHORT">
							<xsl:value-of select="../../../../@SecurityId"/>
						</Property>
						<Property Name="INSTRUMENT_NAME">
							<xsl:value-of select="../../../../@SecShortName"/>
						</Property>
						<Property Name="TRADE_DATE">
							<xsl:value-of select="../../../../../../../../../@ReportDate"/>
						</Property>
						<Property Name="TRADE_NUMBER">
							<xsl:value-of select="@TradeNo"/>
						</Property>
						<Property Name="TRADE_SIDE">
							<xsl:value-of select="@BuySell"/>
						</Property>
						<Property Name="TRADE_ACCOUNT">
							<xsl:value-of select="substring(../../../../../../../../../@FirmId, 1, 7)"/>
							<xsl:value-of select="../../../../../../../../@ExtSettleCode"/>
						</Property>
						<Property Name="ORDERNO">
							<xsl:value-of select="@OrderNo"/>
						</Property>
						<Property Name="TRADE_TIME">
							<xsl:value-of select="../../../../../../../../../@ReportDate"/>
							<xsl:text>T</xsl:text>
							<xsl:value-of select="@TradeTime"/>
						</Property>
						<Property Name ="TRADE_TYPE">
							<xsl:value-of select="@TradeType"/>
						</Property>
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
						<Property Name ="TRADE_QUANTITY">
							<xsl:value-of select="@Quantity"/>
						</Property>
						<Property Name ="TRADE_VALUE">
							<xsl:value-of select="format-number(number(@Value), '#0.00')"/>
						</Property>
						<Property Name="SETTLE_DATE">
							<xsl:value-of select="../../../@SettleDate"/>
						</Property>
						<xsl:if test="@ExchComm">
							<Property Name="COMISSION">
								<xsl:value-of select="format-number(number(@ExchComm), '#0.00')"/>
							</Property>
						</xsl:if>
						<xsl:if test="@ITSComm">
							<Property Name="COMISSION_ITS">
								<xsl:value-of select="format-number(number(@ITSComm), '#0.00')"/>
							</Property>
						</xsl:if>
						<xsl:if test="@ClrComm">
							<Property Name="COMISSIONSETTL">
								<xsl:value-of select="format-number(number(@ClrComm), '#0.00')"/>
							</Property>
						</xsl:if>
						<Property Name="TRADE_FIRMID">
							<xsl:value-of select="../../../../../../../../../@FirmId"/>
						</Property>
						<xsl:if test="@CPFirmId">
							<Property Name ="CPFIRMID">
								<xsl:value-of select="@CPFirmId"/>
							</Property>
						</xsl:if>
						<Property Name ="TRADE_PERIOD">
							<xsl:value-of select="@Period"/>
						</Property>
						<Property Name ="SETTLECODE">
							<xsl:value-of select="@SettleCode"/>
						</Property>
						<Property Name ="TRADE_USERID">
							<xsl:value-of select="@UserId"/>
						</Property>
						<Property Name ="TRADE_TRADER">
							<xsl:value-of select="@UserExchangeId"/>
						</Property>
						<xsl:if test="@BrokerRef">
							<Property Name ="TRADE_REF">
								<xsl:value-of select="@BrokerRef"/>
							</Property>
						</xsl:if>
					</Object>
				</xsl:for-each>
			</xsl:if>
			<xsl:if test="SEM26">
				<xsl:for-each select="//RECORDS">
					<xsl:variable name="var1" select="@Value"/>
						<Object Name="TRANSACTION">
							<Property Name="GENERATE_ID_ON">
								<xsl:value-of select="'true'"/>
							</Property>
							<Property Name="MARKET_SHORT">
								<xsl:value-of select="'MICEX'"/>
							</Property>
							<Property Name="MARKET_NAME">
								<xsl:value-of select="'ММВБ'"/>
							</Property>
							<Property Name="TRADING_PLACE_SHORT">
								<xsl:value-of select="'Main'"/>
							</Property>
							<Property Name="TRADING_PLACE_NAME">
								<xsl:value-of select="'Main'"/>
							</Property>
							<Property Name="INSTRUMENT_SHORT">
								<xsl:choose>
									<xsl:when test="../../@CurrencyId = &quot;RUR&quot;">
										<xsl:value-of select="&quot;RUB&quot;"/>
									</xsl:when>
									<xsl:when test="../../@CurrencyId = &quot;SUR&quot;">
										<xsl:value-of select="&quot;RUB&quot;"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="../../@CurrencyId"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
							<Property Name="INSTRUMENT_NAME">
								<xsl:choose>
									<xsl:when test="../../@CurrencyId = &quot;RUR&quot;">
										<xsl:value-of select="&quot;RUB&quot;"/>
									</xsl:when>
									<xsl:when test="../../@CurrencyId = &quot;SUR&quot;">
										<xsl:value-of select="&quot;RUB&quot;"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="../../@CurrencyId"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
							<Property Name="PRICE_CURRENCY">
								<xsl:choose>
									<xsl:when test="../../@CurrencyId = &quot;RUR&quot;">
										<xsl:value-of select="&quot;RUB&quot;"/>
									</xsl:when>
									<xsl:when test="../../@CurrencyId = &quot;SUR&quot;">
										<xsl:value-of select="&quot;RUB&quot;"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="../../@CurrencyId"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
							<Property Name="AMOUNT">
								<xsl:value-of select="format-number(number(@OutStandingReturnValue), '#0.00')"/>
							</Property>
							<Property Name="VALUE_DATE">
								<xsl:value-of select="@RepoValueDate"/>
							</Property>
							<Property Name="TRADE_ACCOUNT">
								<xsl:choose>
									<xsl:when test="@ClientDetails">
										<xsl:value-of select="substring(../../../@FirmID,1,7)"/>
										<xsl:value-of select="substring(@ClientDetails,1,4)"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:value-of select="../../../@FirmID"/>
									</xsl:otherwise>
								</xsl:choose>
							</Property>
							<Property Name="TRANSACT_TYPE">
								<xsl:value-of select="'VARMRG'"/>
							</Property>
							<Property Name="DEAL_NUM">
								<xsl:value-of select="''"/>
							</Property>
							<Property Name="DEAL_SIDE">
								<xsl:value-of select="''"/>
							</Property>
							<Property Name="TRNS_DIRECTION">
								<xsl:value-of select="1"/>
							</Property>
							<Property Name="TRADE_DATE">
								<xsl:value-of select="''"/>
							</Property>
						</Object>
                </xsl:for-each>
            </xsl:if>

		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>
