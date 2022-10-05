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
                        <xsl:value-of select="@SECID"/>
                    </Property>
                    <Property Name ="INSTRUMENT_NAME">
                        <xsl:value-of select="@SECID"/>
                    </Property>
                    <Property Name ="C$DATE">
                        <xsl:variable name="vToday">
                            <xsl:value-of select="current-dateTime()"/>
                        </xsl:variable>
                        <xsl:value-of select="substring($vToday, 1, 10)"/>
                    </Property>
                    <Property Name ="C$PROOF">
                        <xsl:value-of select="1"/>
                    </Property>
                    <Property Name ="BID">
                        <xsl:value-of select="@HIGHBID"/>
                    </Property>
                    <Property Name ="ASK">
                        <xsl:value-of select="@LOWOFFER"/>
                    </Property>
                    <Property Name ="LOW">
                        <xsl:value-of select="@LOW"/>
                    </Property>
                    <Property Name ="HIGH">
                        <xsl:value-of select="@HIGH"/>
                    </Property>
                    <Property Name ="OPEN">
                        <xsl:value-of select="@OPEN"/>
                    </Property>
                    <Property Name ="OFFER">
                        <xsl:value-of select="@LOWOFFER"/>
                    </Property>
                    <Property Name ="LOWOFFER">
                        <xsl:value-of select="@LOWOFFER"/>
                    </Property>
                    <Property Name ="NUMTRADES">
                        <xsl:value-of select="@NUMTRADES"/>
                    </Property>
                    <Property Name ="LAST_PRICE">
                        <xsl:value-of select="@LAST"/>
                    </Property>
                    <Property Name ="CLOSE_PRICE">
                        <xsl:value-of select="@CLOSEPRICE"/>
                    </Property>
                    <Property Name ="MARKETPRICE">
                        <xsl:value-of select="@MARKETPRICE2"/>
                    </Property>
                    <Property Name ="PREVWAPRICE">
                        <xsl:value-of select="@WAPRICE"/>
                    </Property>
                    <Property Name ="PRICEMINUSPREVWAPRICE">
                        <xsl:value-of select="@PRICEMINUSPREVWAPRICE"/>
                    </Property>
                    <Property Name ="SETTLEPRICE">
                        <xsl:value-of select="@LCURRENTPRICE"/>
                    </Property>
                </Object>
            </xsl:for-each>
            </Body_Pocket>
		</Pocket>
    </xsl:template>
</xsl:stylesheet>