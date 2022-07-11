<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/Metall">
		<Pocket>
		<Body_Pocket>
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
						<xsl:when test="@Code = '1'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'XAU'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'XAU'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Code = '2'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'XAG'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'XAG'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Code = '3'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'XPT'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'XPT'"/>
							</Property>
						</xsl:when>
						<xsl:when test="@Code = '4'">
							<Property Name ="INSTRUMENT_SHORT">
								<xsl:value-of select="'XPD'"/>
							</Property>
							<Property Name ="INSTRUMENT_NAME">
								<xsl:value-of select="'XPD'"/>
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
						<xsl:call-template name="StringReplace">
							<xsl:with-param name="input" select="Buy" />
							<xsl:with-param name="oldValue" select="','" />
							<xsl:with-param name="newValue" select="'.'" />
						</xsl:call-template>
					</Property>
					<Property Name ="FACEVALUE">
						<xsl:value-of select="1"/>
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

	<xsl:template name="StringReplace">
		<xsl:param name="input" />
		<xsl:param name="oldValue" />
		<xsl:param name="newValue" />
		<xsl:choose>
			<xsl:when test="contains($input, $oldValue)">
				<xsl:value-of select="substring-before($input,$oldValue)" />
				<xsl:value-of select="$newValue" />
				<xsl:call-template name="StringReplace">
					<xsl:with-param name="input" select="substring-after($input,$oldValue)" />
					<xsl:with-param name="oldValue" select="$oldValue" />
					<xsl:with-param name="newValue" select="$newValue" />
				</xsl:call-template>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$input" />
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>

</xsl:stylesheet>