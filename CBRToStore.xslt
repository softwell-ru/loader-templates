<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/ValCurs">
		<Pocket>
		<Body_Pocket>
			<xsl:for-each select="//Valute">
				<Object Name="QUOTATION">
					<Property Name ="MARKET_SHORT">
						<xsl:value-of select="'NATIONALBANK'"/>
					</Property>
					<Property Name ="MARKET_NAME">
						<xsl:value-of select="'NATIONALBANK'"/>
					</Property>
					<Property Name ="TRADING_PLACE_SHORT">
						<xsl:value-of select="'CB_RATES'"/>
					</Property>
					<Property Name ="TRADING_PLACE_NAME">
						<xsl:value-of select="'CB_RATES'"/>
					</Property>
					<Property Name ="INSTRUMENT_SHORT">
						<xsl:value-of select="CharCode"/>
					</Property>
					<Property Name ="INSTRUMENT_NAME">
						<xsl:value-of select="CharCode"/>
					</Property>
					<Property Name ="C$DATE">
						<xsl:value-of select="format-number(number(substring(../@Date, 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(../@Date, 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(../@Date, 1, 2)), '00')"/>
					</Property>
					<Property Name ="CLOSE_PRICE">
						<xsl:value-of select="substring-before(Value, ',')"/>
						<xsl:text>.</xsl:text>
						<xsl:value-of select="substring-after(Value, ',')"/>
					</Property>
					<Property Name ="FACEVALUE">
						<xsl:value-of select="Nominal"/>
					</Property>
					<Property Name ="CURRENCYID">
						<xsl:value-of select="'RUB'"/>
					</Property>
					<Property Name ="C$PROOF">
						<xsl:value-of select="1"/>
					</Property>
				</Object>
			</xsl:for-each>
			<xsl:for-each select="//Record">
				<Object Name="QUOTATION">
					<Property Name ="MARKET_SHORT">
						<xsl:value-of select="'NATIONALBANK'"/>
					</Property>
					<Property Name ="MARKET_NAME">
						<xsl:value-of select="'NATIONALBANK'"/>
					</Property>
					<Property Name ="TRADING_PLACE_SHORT">
						<xsl:value-of select="'CB_RATES'"/>
					</Property>
					<Property Name ="TRADING_PLACE_NAME">
						<xsl:value-of select="'CB_RATES'"/>
					</Property>
					<xsl:choose>
						<xsl:when test="@Id = 'R01010'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'AUD'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'AUD'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01035'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'GBP'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'GBP'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01090'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'BYR'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'BYR'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01215'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'DKK'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'DKK'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01235'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'USD'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'USD'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01239'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'EUR'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'EUR'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01310'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'ISK'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'ISK'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01335'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'KZT'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'KZT'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01350'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'CAD'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'CAD'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01375'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'CNY'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'CNY'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01535'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'NOK'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'NOK'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01589'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'XDR'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'XDR'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01625'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'SGD'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'SGD'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01700J'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'TRY'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'TRY'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01720'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'UAH'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'UAH'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01770'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'SEK'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'SEK'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01775'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'CHF'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'CHF'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Id = 'R01820'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'JPY'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'JPY'"/>
							</Property>
						</xsl:when>
					</xsl:choose>
					<Property Name ="C$DATE">
						<xsl:value-of select="format-number(number(substring(@Date, 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(@Date, 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(@Date, 1, 2)), '00')"/>
					</Property>
					<Property Name ="CLOSE_PRICE">
						<xsl:value-of select="substring-before(Value, ',')"/>
						<xsl:text>.</xsl:text>
						<xsl:value-of select="substring-after(Value, ',')"/>
					</Property>
					<Property Name ="FACEVALUE">
						<xsl:value-of select="Nominal"/>
					</Property>
					<Property Name ="CURRENCYID">
						<xsl:value-of select="'RUB'"/>
					</Property>
					<Property Name ="C$PROOF">
						<xsl:value-of select="1"/>
					</Property>
				</Object>
			</xsl:for-each>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>