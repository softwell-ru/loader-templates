<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/MICEX_DOC">
		<Pocket>
		<Body_Pocket>
			<xsl:if test="CCX04">
				<xsl:for-each select="//CURRENCY">
					<Object Name="RESTS">
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
								<xsl:when test="@CurrencyId">
									<xsl:value-of select="@CurrencyId"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="@SecurityId"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<Property Name="INSTRUMENT_NAME">
							<xsl:choose>
								<xsl:when test="@CurrencyId">
									<xsl:value-of select="@CurrencyId"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="@SecurityId"/>
								</xsl:otherwise>
							</xsl:choose>
						</Property>
						<Property Name="FILE_REC_IDENTIF">
							<xsl:value-of select="ancestor::CCX04/preceding-sibling::DOC_REQUISITES/@DOC_NO" />
						</Property>
						<Property Name="REPORTDATE">
							<xsl:value-of select="../../@ReportDate"/>
						</Property>
						<Property Name="FIRMID">
							<xsl:value-of select="../../@FirmId"/>
						</Property>
						<Property Name="REALACCOUNT">
							<xsl:value-of select="../@ExtSettleCode"/>
						</Property>
                       
                        <Property Name="DEBITSUM">
                            <xsl:value-of select="@Debit"/>
                        </Property>
                        <Property Name="CREDITSUM">
                            <xsl:value-of select="@Credit"/>
                        </Property>
					</Object>
				</xsl:for-each>
			</xsl:if>			
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>
