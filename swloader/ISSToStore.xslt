<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:p1="http://xecdapi.xe.com">
	<xsl:output method="xml" encoding="windows-1251"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="data">
		<Pocket>
            <Body_Pocket>
            <xsl:for-each select="//row">
                    <Object Name="QUOTATION">
                        <Property Name ="MARKET_SHORT">
                            <xsl:value-of select="'MICEX'"/>
                        </Property>
                        <Property Name ="MARKET_NAME">
                            <xsl:value-of select="'MICEX'"/>
                        </Property>
                        <Property Name ="TRADING_PLACE_SHORT">
                            <xsl:value-of select="@BOARDID"/>
                        </Property>
                        <Property Name ="TRADING_PLACE_NAME">
                            <xsl:value-of select="@BOARDID"/>
                        </Property>
                        <Property Name ="INSTRUMENT_SHORT">
                            <xsl:value-of select="@SHORTNAME"/>
                        </Property>
                        <Property Name ="INSTRUMENT_NAME">
                            <xsl:value-of select="@SECID"/>
                        </Property>
                        <Property Name ="FACEVALUE">
                            <xsl:value-of select="@FACEVALUE"/>
                        </Property>
                        <Property Name ="C$DATE">
                            <xsl:value-of select="@TRADEDATE"/>
                        </Property>
                        <Property Name ="CURRENCYID">
                            <xsl:choose>
								<xsl:when test="@CURRENCYID = &quot;RUR&quot;">
									<xsl:value-of select="&quot;RUB&quot;"/>
								</xsl:when>
								<xsl:when test="@CURRENCYID = &quot;SUR&quot;">
									<xsl:value-of select="&quot;RUB&quot;"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:value-of select="@CURRENCYID"/>
								</xsl:otherwise>
							</xsl:choose>
                        </Property>
                        <Property Name ="HIGH">
                            <xsl:value-of select="@HIGH"/>
                        </Property>
                        <Property Name ="LOW">
                            <xsl:value-of select="@LOW"/>
                        </Property>
                        <Property Name ="CLOSE">
                            <xsl:value-of select="@LAST_PRICE"/>
                        </Property>
                        <Property Name ="CLOSE_PRICE">
                            <xsl:value-of select="@LEGALCLOSEPRICE"/>
                        </Property>
                        <Property Name ="AVERAGE_PRICE">
                            <xsl:value-of select="@WAPRICE"/>
                        </Property>
                        <Property Name ="CURRENCYID">
                            <xsl:value-of select="@CURRENCYID"/>
                        </Property>
                        <Property Name ="C$PROOF">
                            <xsl:value-of select="1"/>
                        </Property>
						<Property Name="AMOUNT">
							<xsl:value-of select="@VOLUME"/>
						</Property>
						<Property Name="VOLUME">
							<xsl:value-of select="@VALUE"/>
						</Property>
                        <Property Name="YIELDATWAP">
							<xsl:value-of select="@YIELDATWAP"/>
						</Property>
                        <Property Name="DURATION">
							<xsl:value-of select="@DURATION"/>
						</Property>
                        <Property Name="DAT_YIELD">
							<xsl:value-of select="@MATDATE"/>
						</Property>
                        <Property Name="MARKETPRICE2">
							<xsl:value-of select="@MARKETPRICE2"/>
						</Property>
                        <Property Name="YIELD">
							<xsl:value-of select="@YIELDCLOSE"/>
						</Property>
                        <Property Name="NKD">
							<xsl:value-of select="@ACCINT"/>
						</Property>
                        <Property Name="NUMTRADES">
							<xsl:value-of select="@NUMTRADES"/>
						</Property>
                        <Property Name="BUYBACKDATE">
							<xsl:value-of select="@OFFERDATE"/>
						</Property>
                        <Property Name="FACEVALUE_CURRENCY">
							<xsl:value-of select="@FACEUNIT"/>
						</Property>
                    </Object>
                </xsl:for-each>
            </Body_Pocket>
		</Pocket>
    </xsl:template>
</xsl:stylesheet>