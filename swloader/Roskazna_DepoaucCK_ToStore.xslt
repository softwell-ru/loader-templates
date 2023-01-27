<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/DepoCK">
		<Pocket>
		<Body_Pocket>
			<xsl:for-each select="./*">
				<xsl:variable name="currency" select="cur" />
				<Object Name="DEAL">
					<Property Name="MARKET_SHORT">
						<xsl:value-of select="'MICEX'"/>
					</Property>
					<Property Name="MARKET_NAME">
						<xsl:value-of select="'���������� �����'"/>
					</Property>
					<Property Name="TRADING_PLACE_SHORT">
						<xsl:value-of select="'DP-AU-ORG-CK'"/>
					</Property>
					<Property Name="TRADING_PLACE_NAME">
						<xsl:value-of select="'DP-AU-ORG-CK'"/>
					</Property>
					<Property Name ="TRADE_NUMBER">
						<xsl:value-of select="id"/>
					</Property>
					<Property Name ="TRADE_SIDE">
						<xsl:value-of select="'SELL'"/>
					</Property>
					<Property Name ="TRADE_ACCOUNT">
						<xsl:value-of select="'ROSKAZNA.GOV.CK'"/>
					</Property>
					<Property Name ="TRADE_PRICE">
						<xsl:value-of select="waacceptrate"/>
					</Property>
					<Property Name ="TRADE_QUANTITY">
						<xsl:value-of select="'1'"/>
					</Property>
					<Property Name ="TRADE_VALUE">
						<xsl:variable name="totalsettle" select="translate(totalsettle, ' ', '')"/>
						<xsl:variable name="totalsettle1" select="number($totalsettle)"/>
						<xsl:value-of select="format-number($totalsettle1*1000000, '#')"/>
					</Property>
					<Property Name ="TRADE_REF">
						<xsl:value-of select="FundsPlaced"/>
						<xsl:text> </xsl:text>
						<xsl:value-of select="startdisc"/>
					</Property>
					<Property Name ="CPFIRMID">
						<xsl:value-of select="'CPFIRMID.ROSKAZNA.GOV'"/>
					</Property>
					<Property Name ="PRICE2">
						<xsl:value-of select="'100'"/>
					</Property>
					<Property Name ="REPORATE">
						<xsl:value-of select="waacceptrate"/>
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
						<xsl:value-of select="format-number(number(substring(seconddate, 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(seconddate, 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(seconddate, 1, 2)), '00')"/>
					</Property>
					<Property Name ="INSTRUMENT_ID">
						<xsl:value-of select="'DPKAZNA'"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="ratetype"/>
					</Property>
					<Property Name ="INSTRUMENT_NAME">
						<xsl:value-of select="'RUB'"/>
					</Property>
					<Property Name ="INSTRUMENT_SHORT">
						<xsl:value-of select="'RUB'"/>
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
						<xsl:value-of select="&quot;RUB&quot;"/>
					</Property>
					<Property Name ="DVP">
						<xsl:value-of select="'DVP'"/>
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
					<Property Name ="DELIVERY_TYPE">
						<xsl:value-of select="settletype"/>
					</Property>
				</Object>
			</xsl:for-each>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>