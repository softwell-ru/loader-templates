<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/MICEX_DOC">
		<Pocket>
		<Body_Pocket>
			<xsl:if test="SEM26">
				<xsl:for-each select="//RECORDS">
					<Object Name="DEAL">
						<Property Name="TRADE_NUMBER">
							<xsl:value-of select="@RepoTradeNo"/>
						</Property>
                        <Property Name="ORDERSTATUS">
                            <xsl:value-of select="&quot;Replaced&quot;"/>
                        </Property>
                        <Property Name="CLIENTCODE">
                            <xsl:value-of select="@ClientDetails"/>
                        </Property>
						<xsl:if test="@CouponValue">
							<Property Name="ACCRUED2">
								<xsl:value-of select="@CouponValue"/>
							</Property>
						</xsl:if>
						<Property Name="TRADE_FIRMID">
							<xsl:value-of select="../../../@FirmID"/>
						</Property>
						<Property Name="TRADE_DATE">
							<xsl:value-of select="format-number(number(substring(@RepoTradeDate, 1, 4)), '0000')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(@RepoTradeDate, 6, 2)), '00')"/>
							<xsl:text>-</xsl:text>
							<xsl:value-of select="format-number(number(substring(@RepoTradeDate, 9, 2)), '00')"/>
						</Property>					
						<Property Name="MARKET_SHORT">
							<xsl:value-of select="'MICEX'"/>
						</Property>
						<Property Name="MARKET_NAME">
							<xsl:value-of select="'����'"/>
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
						<xsl:if test="@RepoValue">
							<Property Name="REPOVALUE">
								<xsl:value-of select="format-number(number(@RepoValue), '#0.00')"/>
							</Property>
						</xsl:if>
                        <xsl:if test="not(@ReturnValue = 0)">
                            <Property Name="REPO2VALUE">
                                <xsl:value-of select="format-number(number(@ReturnValue), '#0.00')"/>
                            </Property>
                        </xsl:if>						
						<Property Name="PAYMENTCURR">
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
						<Property Name="RULE_NAME">
							<xsl:value-of select="'MicexToStore_SEM26_REPO.xslt'"/>
						</Property>
					</Object>
				</xsl:for-each>
			</xsl:if>			
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>
