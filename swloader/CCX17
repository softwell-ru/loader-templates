<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/MICEX_DOC">
	<Pocket>
		<Body_Pocket>
			<xsl:if test="CCX17">
				<xsl:for-each select="//RECORDS">
					<Object Name="TRANSACTION">
						<Property Name="GEN_NEW">
								<xsl:value-of select="../../../@ExtSettleCode"/>
						  </Property>
						  <Property Name="MARKET_SHORT">
							  <xsl:value-of select="'MICEX'"/>
						  </Property>
						  <Property Name="MARKET_NAME">
							  <xsl:value-of select="'ММВБ'"/>
						  </Property>
						  <Property Name="TRADING_PLACE_SHORT">
							  <xsl:value-of select="'MAIN'"/>
						  </Property>
						  <Property Name="TRADING_PLACE_NAME">
							  <xsl:value-of select="''"/>
						  </Property>
						  <Property Name="PRICE_CURRENCY">
							  <xsl:value-of select="'RUB'"/> <!-- RUB nir -->
						  </Property> 
						  <Property Name="INSTRUMENT_SHORT">
							  <xsl:value-of select="'RUB'"/> <!-- RUB nir -->
						  </Property>						  
						  <Property Name="VALUE_DATE">
							  <xsl:value-of select="../../../../../@ReportDate"/>
						  </Property>
						  <Property Name="AMOUNT">
							  <xsl:value-of select="format-number(number(@Varm), '#0.00')" />
						  </Property>
						  <Property Name="TRADE_ACCOUNT">
							  <xsl:value-of select="substring(../../../@FirmId, 1, 7)"/>
							  <xsl:value-of select="../../../../@ExtSettleCode"/>
							  <xsl:value-of select="'CCX17'"/>
						  </Property>
						  <Property Name="TRANSACT_TYPE">
							  <xsl:value-of select="'SCFVM'"/>
						  </Property>
						  <Property Name="DEAL_NUM">
							  <xsl:value-of select="@TradeNo"/>
						  </Property>
						  <Property Name="DEAL_SIDE">
							  <xsl:value-of select="@BuySell"/>
						  </Property>
						  <Property Name="TRADE_DATE">
							  <xsl:value-of select="@TradeDate"/>
						  </Property>
						<Property Name="ID_REAL">
                            <xsl:value-of select="format-number(number(substring(../../../../../@ReportDate, 1, 4)), '0000')"/>
                            <xsl:value-of select="format-number(number(substring(../../../../../@ReportDate, 6, 2)), '00')"/>
                            <xsl:value-of select="format-number(number(substring(../../../../../@ReportDate, 9, 2)), '00')"/>
							<xsl:value-of select="@TradeNo"/>
							<xsl:value-of select="'SCFVM'"/>
						</Property>
					</Object>			  
				</xsl:for-each>
			</xsl:if>
		</Body_Pocket>
	</Pocket>
	</xsl:template>
</xsl:stylesheet>
