<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/MICEX_DOC">
		<Pocket>
		<Body_Pocket>
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
									<xsl:value-of select="../../../../../../../../../../@ReportDate"/>
								</Property>
								<Property Name="TRADE_NUMBER">
									<xsl:value-of select="@RepoTradeNo"/>
								</Property>
								<Property Name="TRADE_SIDE">
									<xsl:value-of select="@BuySell"/>
								</Property>
								<Property Name="TRADE_ACCOUNT">
									<xsl:value-of select="substring(../../../../../../../../../@FirmId, 1,7 )"/>
									<xsl:value-of select="../../../../../../../@ExtSettleCode"/>
								</Property>
								<Property Name="ORDERNO">
									<xsl:value-of select="@OrderNo"/>
								</Property>
								<Property Name="TRADE_TIME">
									<xsl:value-of select="../../../../../../../../../../@ReportDate"/>
									<xsl:text>T</xsl:text>
									<xsl:value-of select="@TradeTime"/>
								</Property>
								<Property Name ="TRADE_TYPE">
									<xsl:choose>
										<xsl:when test="((@RepoTradeNo = 0) and (@ExchComm = 0))">
											<xsl:text>T</xsl:text>
										</xsl:when>
										<xsl:otherwise>
											<xsl:value-of select="@TradeType"/>
										</xsl:otherwise>
									</xsl:choose>
								</Property>
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
                                    <xsl:value-of select="../../../../../../../../../../@FirmId"/>
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
								<Property Name="RULE_NAME">
									<xsl:value-of select="'CUX23'"/>
								</Property>
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
							<xsl:value-of select="../../../../../../../../../../@ReportDate"/>
						</Property>
						<Property Name="TRADE_NUMBER">
							<xsl:value-of select="@TradeNo"/>
						</Property>
						<Property Name="TRADE_SIDE">
							<xsl:value-of select="@BuySell"/>
						</Property>
						<Property Name="TRADE_ACCOUNT">
			       			<xsl:value-of select="substring(../../../../../../../../../../@FirmId, 1, 7)"/>
							<xsl:value-of select="../../../../../../../../@ExtSettleCode"/>
			       		</Property>
						<Property Name="ORDERNO">
							<xsl:value-of select="@OrderNo"/>
						</Property>
						<Property Name="TRADE_TIME">
							<xsl:value-of select="../../../../../../../../../../@ReportDate"/>
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
							<xsl:value-of select="../../../../../../../../../../@FirmId"/>
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
						<Property Name="RULE_NAME">
							<xsl:value-of select="'MicexToStore_CUX23.xslt'"/>
						</Property>
						<Property Name ="PARENTTRADENO">
							<xsl:value-of select="@RepoTradeNo"/>
						</Property>
					</Object>
				</xsl:for-each>
			</xsl:if>			
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>
