<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/RepoCK">
		<Pocket>
		<Body_Pocket>
			<xsl:for-each select="./*">
				<xsl:variable name="currency" select="cur" />
				<Object Name="DEAL">					
					
					<Property Name="MARKET_SHORT">
						<xsl:value-of select="'MICEX'"/>
					</Property>
					<Property Name="MARKET_NAME">
						<xsl:value-of select="'MICEX'"/>
					</Property>
					<Property Name="TRADING_PLACE_SHORT">
						<xsl:value-of select="'REPO-AU-ORG'"/>
					</Property>
					<Property Name="TRADING_PLACE_NAME">
						<xsl:value-of select="'REPO-AU-ORG'"/>
					</Property>
					<Property Name="STARTDISCOUNT">
						<xsl:value-of select="'0'"/>
					</Property>
					<Property Name="PARENTTRADENO">
						<xsl:value-of select="'REPO-RAN-CK'"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="id"/>
					</Property>					
					<Property Name ="INSTRUMENT_SHORT">
						<xsl:value-of select="'ORG_BASKET'"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="ratetype"/>
						<xsl:choose>
							<xsl:when test="baseflrate=&quot;-&quot;">
							</xsl:when>
							<xsl:otherwise>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="baseflrate"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
					<Property Name ="INSTRUMENT_NAME">
						<xsl:value-of select="'ORG_BASKET'"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="ratetype"/>
						<xsl:choose>
							<xsl:when test="baseflrate=&quot;-&quot;">
							</xsl:when>
							<xsl:otherwise>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="baseflrate"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
					
                    <Property Name ="TRADE_FIRMID ">
                        <xsl:value-of select="'MINFIN'"/>
                    </Property>					
					<Property Name ="TRADE_NUMBER">
						<xsl:value-of select="'REPO-RAN-CK'"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="id"/>
					</Property>
					<Property Name ="TRADE_SIDE">
						<xsl:value-of select="'BUY'"/>
					</Property>
					<Property Name ="TRADE_ACCOUNT">
						<xsl:value-of select="'ROSKAZNA-REPOAUC-ORG'"/>
					</Property>
					<Property Name ="TRADE_PRICE">
						<xsl:value-of select="totalaccept"/>
					</Property>
					<Property Name ="TRADE_QUANTITY">
						<xsl:value-of select="'1'"/>
					</Property>
					<Property Name ="TRADE_VALUE">
						<xsl:value-of select="totalaccept"/>
					</Property>
					<Property Name ="TRADE_REF">
						<xsl:value-of select="tradestate"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="DogType"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="FundsPlaced"/>
					</Property>
					<Property Name ="CPFIRMID">
						<xsl:value-of select="'CPFIRMID.ROSKAZNA.GOV'"/>
					</Property>
					<Property Name ="PRICE2">
						<xsl:value-of select="'100'"/>
					</Property>
					<Property Name ="REPORATE">
						<xsl:variable name="rate" select="ratetype" />
						<xsl:if test="$rate='FIXED'">
							<xsl:value-of select="translate(waacceptrate, ',', '.')"/>
						</xsl:if>
					</Property>
					<Property Name ="FLOAT_SPREAD">
						<xsl:variable name="rate" select="ratetype" />
						<xsl:if test="$rate='FLOATING'">
							<xsl:value-of select="translate(waacceptrate, ',', '.')"/>
						</xsl:if>
					</Property>
					<Property Name ="FLOAT_RATE_SHORT">
						<xsl:choose>
							<xsl:when test="baseflrate=&quot;-&quot;">
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="baseflrate"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
					<Property Name ="TRADE_DATE">
						<xsl:value-of select="format-number(number(substring(aucdate, 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(aucdate, 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(aucdate, 1, 2)), '00')"/>
					</Property>
					<Property Name ="REPOTERM">
						<xsl:value-of select="term"/>
					</Property>
					<Property Name ="SETTLE_DATE">
						<xsl:value-of select="format-number(number(substring(firstdate, 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(firstdate, 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(firstdate, 1, 2)), '00')"/>
					</Property>
					<Property Name ="PAYMENT_DATE">
						<xsl:value-of select="format-number(number(substring(firstdate, 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(firstdate, 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(firstdate, 1, 2)), '00')"/>
					</Property>
					<Property Name ="INSTRUMENT_ID">
						<xsl:value-of select="'ORG_BASKET'"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="ratetype"/>
						<xsl:choose>
							<xsl:when test="baseflrate=&quot;-&quot;">
							</xsl:when>
							<xsl:otherwise>
								<xsl:text>-</xsl:text>
								<xsl:value-of select="baseflrate"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
					<Property Name ="REPOVALUE">
						<xsl:value-of select="totalaccept"/>
					</Property>
					<Property Name ="PAYMENTCURR">
						<xsl:choose>
							<xsl:when test="$currency=&quot;&#x0440;&#x0443;&#x0431;&#x043b;&#x0438;&quot;">
								<xsl:value-of select="&quot;RUB&quot;"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="cur"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
					<Property Name ="PRICE_CURRENCY">
						<xsl:choose>
							<xsl:when test="$currency=&quot;&#x0440;&#x0443;&#x0431;&#x043b;&#x0438;&quot;">
								<xsl:value-of select="&quot;RUB&quot;"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:value-of select="cur"/>
							</xsl:otherwise>
						</xsl:choose>
					</Property>
					<Property Name ="DVP">
						<xsl:value-of select="'TRUE'"/>
					</Property>
					<Property Name ="QTYTYPE">
						<xsl:value-of select="'1'"/>
					</Property>
					<Property Name ="DAYCNTCONV">
						<xsl:value-of select="'1'"/>
					</Property>
					<Property Name ="FARLEGSETTLEDATE">
						<xsl:value-of select="format-number(number(substring(seconddate, 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(seconddate, 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(seconddate, 1, 2)), '00')"/>
					</Property>
					<Property Name ="FARLEGVALUEDATE">
						<xsl:value-of select="format-number(number(substring(seconddate, 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(seconddate, 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(seconddate, 1, 2)), '00')"/>
					</Property>
				</Object>
			</xsl:for-each>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>