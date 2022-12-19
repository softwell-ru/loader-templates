<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
		<xsl:if test="@Name = 'DEAL'">
			<Object Name="DEAL">
				<Property Name="TRADE_NUMBER">
					<xsl:value-of select="Property[@Name='TradeNo']"/>
				</Property>
				<Property Name="TRADE_TIME">
					<xsl:value-of select="format-number(number(substring(Property[@Name='DOC_DATE'], 7, 4)), '0000')"/>
					<xsl:text>-</xsl:text>
					<xsl:value-of select="format-number(number(substring(Property[@Name='DOC_DATE'], 4, 2)), '00')"/>
					<xsl:text>-</xsl:text>
					<xsl:value-of select="format-number(number(substring(Property[@Name='DOC_DATE'], 1, 2)), '00')"/>
					<xsl:text>T</xsl:text>
					<xsl:value-of select="Property[@Name='TradeTime']"/>
				</Property>
				<Property Name="ORDERNO">
					<xsl:value-of select="Property[@Name='OrderNo']"/>
				</Property>
				<Property Name="TRADE_TYPE">
					<xsl:value-of select="Property[@Name='TradeType']"/>
				</Property>
				<Property Name="TRADE_SIDE">
					<xsl:value-of select="Property[@Name='BuySell']"/>
				</Property>
				<Property Name="TRADE_ACCOUNT">
					<xsl:value-of select="Property[@Name='TrdAccId']"/>
				</Property>
				<xsl:if test="Property[@Name='Price']">
					<Property Name="TRADE_PRICE">
						<xsl:choose>
							<xsl:when test="@Decimals = 2">
								<xsl:value-of select="format-number(number(Property[@Name='Price']), '#0.00')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 3">
								<xsl:value-of select="format-number(number(Property[@Name='Price']), '#0.000')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 4">
								<xsl:value-of select="format-number(number(Property[@Name='Price']), '#0.0000')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 5">
								<xsl:value-of select="format-number(number(Property[@Name='Price']), '#0.00000')"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="format-number(number(Property[@Name='Price']), '#0.000000')"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
				</xsl:if>
				<Property Name="TRADE_QUANTITY">
					<xsl:value-of select="Property[@Name='Quantity']"/>
				</Property>
				<Property Name="TRADE_VALUE">
					<xsl:choose>
						<xsl:when test="(Property[@Name='AccInt']) and not (Property[@Name='AccInt'] = '')">
							<xsl:value-of select="format-number((number(Property[@Name='Amount']) - number(Property[@Name='AccInt'])), '#0.00')"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="format-number(number(Property[@Name='Amount']), '#0.00')"/>
						</xsl:otherwise>
					</xsl:choose>
				</Property>
				<Property Name="SETTLECODE">
					<xsl:value-of select="Property[@Name='SettleCode']"/>
				</Property>
				<xsl:if test="(Property[@Name='Yield']) and not (Property[@Name='Yield'] = '')">
					<Property Name="TRADE_YIELD">
						<xsl:value-of select="format-number(number(Property[@Name='Yield']), '#0.00')"/>
					</Property>
				</xsl:if>
				<xsl:if test="Property[@Name='AccInt']">
					<Property Name="ACCRUEDINT">
						<xsl:value-of select="format-number(number(Property[@Name='AccInt']), '#0.00')"/>
					</Property>
				</xsl:if>
				<Property Name="TRADE_USERID">
					<xsl:value-of select="Property[@Name='UserId']"/>
				</Property>
				<Property Name="TRADE_FIRMID">
					<xsl:value-of select="Property[@Name='FirmID']"/>
				</Property>
				<xsl:if test="(Property[@Name='BrokerRef']) and not (Property[@Name='BrokerRef'] = '')">
					<Property Name="TRADE_REF">
						<xsl:value-of select="Property[@Name='BrokerRef']"/>
					</Property>
				</xsl:if>
				<xsl:if test="Property[@Name='CPFirmId']">
					<Property Name="CPFIRMID">
						<xsl:value-of select="Property[@Name='CPFirmId']"/>
					</Property>
				</xsl:if>
				<xsl:if test="(Property[@Name='Price2']) and not (Property[@Name='Price2'] = '')">
					<Property Name="PRICE2">
						<xsl:choose>
							<xsl:when test="Property[@Name='Decimals'] = 2">
								<xsl:value-of select="format-number(number(Property[@Name='Price2']), '#0.00')"/>
							</xsl:when>
							<xsl:when test="Property[@Name='Decimals'] = 3">
								<xsl:value-of select="format-number(number(Property[@Name='Price2']), '#0.000')"/>
							</xsl:when>
							<xsl:when test="Property[@Name='Decimals'] = 4">
								<xsl:value-of select="format-number(number(Property[@Name='Price2']), '#0.0000')"/>
							</xsl:when>
							<xsl:when test="Property[@Name='Decimals'] = 5">
								<xsl:value-of select="format-number(number(Property[@Name='Price2']), '#0.00000')"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="format-number(number(Property[@Name='Price2']), '#0.000000')"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
				</xsl:if>
				<xsl:if test="(Property[@Name='RepoRate']) and not (Property[@Name='RepoRate'] = '')">
					<Property Name="REPORATE">
						<xsl:choose>
							<xsl:when test="@Decimals = 2">
								<xsl:value-of select="format-number(number(Property[@Name='RepoRate']), '#0.00')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 3">
								<xsl:value-of select="format-number(number(Property[@Name='RepoRate']), '#0.000')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 4">
								<xsl:value-of select="format-number(number(Property[@Name='RepoRate']), '#0.0000')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 5">
								<xsl:value-of select="format-number(number(Property[@Name='RepoRate']), '#0.00000')"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="format-number(number(Property[@Name='RepoRate']), '#0.000000')"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
				</xsl:if>
				<Property Name="TRADE_DATE">
					<xsl:value-of select="format-number(number(substring(Property[@Name='DOC_DATE'], 7, 4)), '0000')"/>
					<xsl:text>-</xsl:text>
					<xsl:value-of select="format-number(number(substring(Property[@Name='DOC_DATE'], 4, 2)), '00')"/>
					<xsl:text>-</xsl:text>
					<xsl:value-of select="format-number(number(substring(Property[@Name='DOC_DATE'], 1, 2)), '00')"/>
				</Property>
				<xsl:if test="(Property[@Name='RepoPeriod']) and not (Property[@Name='RepoPeriod'] = '')">
					<Property Name="REPOTERM">
						<xsl:value-of select="Property[@Name='RepoPeriod']"/>
					</Property>
				</xsl:if>
				<xsl:if test="(Property[@Name='AccInt2']) and not (Property[@Name='AccInt2'] = '')">
					<Property Name="ACCRUED2">
						<xsl:value-of select="format-number(number(Property[@Name='AccInt2']), '#0.00')"/>
					</Property>
				</xsl:if>
				<Property Name="COMISSION">
					<xsl:value-of select="format-number(number(Property[@Name='ExchComm']), '#0.00')"/>
				</Property>
				<Property Name="SETTLE_DATE">
					<xsl:choose>
						<xsl:when test="(Property[@Name='OutStandingReturnValue']) or (Property[@Name='RepoRate']) or (Property[@Name='RepoValue'])">
							<xsl:choose>
								<xsl:when test="(Property[@Name='RepoValue']) and not (Property[@Name='RepoValue'] = '')">
									<xsl:variable name="vSettleDateStr">
										<xsl:value-of select="format-number(number(substring(Property[@Name='SettleDate'], 7, 4)), '0000')"/>
										<xsl:text>-</xsl:text>
										<xsl:value-of select="format-number(number(substring(Property[@Name='SettleDate'], 4, 2)), '00')"/>
										<xsl:text>-</xsl:text>
										<xsl:value-of select="format-number(number(substring(Property[@Name='SettleDate'], 1, 2)), '00')"/>
									</xsl:variable>
									<xsl:variable name="vSettleDate" select="$vSettleDateStr" as="xs:date"/>
									<xsl:variable name="vRepoPeriod">
										<xsl:choose>
											<xsl:when test="(Property[@Name='RepoPeriod']) and not (Property[@Name='RepoPeriod'] = '')">
												<xsl:copy-of select="Property[@Name='RepoPeriod']"/>
											</xsl:when>
											<xsl:otherwise>
												<xsl:copy-of select="0"/>
											</xsl:otherwise>
										</xsl:choose>
									</xsl:variable>
									<xsl:value-of select="$vSettleDate - $vRepoPeriod * xs:dayTimeDuration('P1D')"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="format-number(number(substring(Property[@Name='DOC_DATE'], 7, 4)), '0000')"/>
									<xsl:text>-</xsl:text>
									<xsl:value-of select="format-number(number(substring(Property[@Name='DOC_DATE'], 4, 2)), '00')"/>
									<xsl:text>-</xsl:text>
									<xsl:value-of select="format-number(number(substring(Property[@Name='DOC_DATE'], 1, 2)), '00')"/>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="format-number(number(substring(Property[@Name='SettleDate'], 1, 4)), '0000')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(Property[@Name='SettleDate'], 6, 2)), '00')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(Property[@Name='SettleDate'], 9, 2)), '00')"/>
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
					<xsl:value-of select="Property[@Name='BoardId']"/>
				</Property>
				<Property Name="TRADING_PLACE_NAME">
					<xsl:value-of select="Property[@Name='BoardName']"/>
				</Property>
				<Property Name="INSTRUMENT_SHORT">
					<xsl:value-of select="Property[@Name='SecurityId']"/>
				</Property>
				<Property Name="INSTRUMENT_NAME">
					<xsl:value-of select="Property[@Name='SecShortName']"/>
				</Property>
				<xsl:if test="(Property[@Name='Period']) and not (Property[@Name='Period'] = '')">
					<Property Name="TRADE_PERIOD">
						<xsl:value-of select="Property[@Name='Period']"/>
					</Property>
				</xsl:if>
				<xsl:if test="(Property[@Name='RepoValue']) and not (Property[@Name='RepoValue'] = '')">
					<Property Name="REPOVALUE">
						<xsl:value-of select="format-number(number(Property[@Name='RepoValue']), '#0.00')"/>
					</Property>
				</xsl:if>
				<xsl:if test="(Property[@Name='OutStandingReturnValue']) and not (Property[@Name='OutStandingReturnValue'] = '')">
					<Property Name="REPO2VALUE">
						<xsl:value-of select="Property[@Name='OutStandingReturnValue']"/>
					</Property>
				</xsl:if>
				<xsl:if test="(Property[@Name='Discount']) and not (Property[@Name='Discount'] = '')">
					<Property Name="STARTDISCOUNT">
						<xsl:choose>
							<xsl:when test="@Decimals = 2">
								<xsl:value-of select="format-number(number(Property[@Name='Discount']), '#0.00')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 3">
								<xsl:value-of select="format-number(number(Property[@Name='Discount']), '#0.000')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 4">
								<xsl:value-of select="format-number(number(Property[@Name='Discount']), '#0.0000')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 5">
								<xsl:value-of select="format-number(number(Property[@Name='Discount']), '#0.00000')"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="format-number(number(Property[@Name='Discount']), '#0.000000')"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
				</xsl:if>
				<xsl:if test="(Property[@Name='LowerDiscount']) and not (Property[@Name='LowerDiscount'] = '')">
					<Property Name="LOWERDISCOUNT">
						<xsl:choose>
							<xsl:when test="@Decimals = 2">
								<xsl:value-of select="format-number(number(Property[@Name='LowerDiscount']), '#0.00')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 3">
								<xsl:value-of select="format-number(number(Property[@Name='LowerDiscount']), '#0.000')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 4">
								<xsl:value-of select="format-number(number(Property[@Name='LowerDiscount']), '#0.0000')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 5">
								<xsl:value-of select="format-number(number(Property[@Name='LowerDiscount']), '#0.00000')"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="format-number(number(Property[@Name='LowerDiscount']), '#0.000000')"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
				</xsl:if>
				<xsl:if test="(Property[@Name='UpperDiscount']) and not (Property[@Name='UpperDiscount'] = '')">
					<Property Name="UPPERDISCOUNT">
						<xsl:choose>
							<xsl:when test="@Decimals = 2">
								<xsl:value-of select="format-number(number(Property[@Name='UpperDiscount']), '#0.00')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 3">
								<xsl:value-of select="format-number(number(Property[@Name='UpperDiscount']), '#0.000')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 4">
								<xsl:value-of select="format-number(number(Property[@Name='UpperDiscount']), '#0.0000')"/>
							</xsl:when>
							<xsl:when test="@Decimals = 5">
								<xsl:value-of select="format-number(number(Property[@Name='UpperDiscount']), '#0.00000')"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="format-number(number(Property[@Name='UpperDiscount']), '#0.000000')"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
				</xsl:if>
				<Property Name="PAYMENTCURR">
					<xsl:choose>
						<xsl:when test="Property[@Name='CurrencyId'] = &quot;RUR&quot;">
							<xsl:value-of select="&quot;RUB&quot;"/>
						</xsl:when>
						<xsl:when test="Property[@Name='CurrencyId'] = &quot;SUR&quot;">
							<xsl:value-of select="&quot;RUB&quot;"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="Property[@Name='CurrencyId']"/>
						</xsl:otherwise>
					</xsl:choose>
				</Property>
				<Property Name="PRICE_CURRENCY">
					<xsl:choose>
						<xsl:when test="Property[@Name='CurrencyId'] = &quot;RUR&quot;">
							<xsl:value-of select="&quot;RUB&quot;"/>
						</xsl:when>
						<xsl:when test="Property[@Name='CurrencyId'] = &quot;SUR&quot;">
							<xsl:value-of select="&quot;RUB&quot;"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="Property[@Name='CurrencyId']"/>
						</xsl:otherwise>
					</xsl:choose>
				</Property>
				<xsl:if test="(Property[@Name='OutStandingReturnValue']) or (Property[@Name='RepoRate']) or (Property[@Name='RepoValue'])">
					<Property Name="FARLEGSETTLEDATE">
						<xsl:value-of select="format-number(number(substring(Property[@Name='SettleDate'], 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(Property[@Name='SettleDate'], 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(Property[@Name='SettleDate'], 1, 2)), '00')"/>
					</Property>
				</xsl:if>
				<xsl:if test="(Property[@Name='OutStandingReturnValue']) or (Property[@Name='RepoRate']) or (Property[@Name='RepoValue'])">
					<Property Name="PARENTTRADENO">
						<xsl:value-of select="Property[@Name='TradeNo']"/>
					</Property>
				</xsl:if>
			</Object>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/|node()" priority="0">
		<xsl:copy>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
