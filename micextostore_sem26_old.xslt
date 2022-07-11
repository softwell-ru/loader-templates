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
						<xsl:if test="@RepoValue">
							<Property Name="REPOVALUE">
								<xsl:value-of select="format-number(number(@RepoValue), '#0.00')"/>
							</Property>
						</xsl:if>						
						<Property Name="REPO2VALUE">
							<xsl:choose>
								<xsl:when test="@OutStandingReturnValue2">
									<xsl:value-of select="format-number(number(@OutStandingReturnValue2), '#0.00')"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="format-number(number(@OutStandingReturnValue), '#0.00')"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<xsl:if test="@AccInt">
							<Property Name="ACCRUEDINT">
								<xsl:value-of select="format-number(number(@AccInt), '#0.00')"/>
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
					</Object>
				</xsl:for-each>
			</xsl:if>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>
