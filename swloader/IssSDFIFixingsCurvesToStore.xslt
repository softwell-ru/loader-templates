<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:p1="http://xecdapi.xe.com">
	<xsl:output method="xml" encoding="windows-1251"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="data">
		<Pocket>
            <Body_Pocket>
            <xsl:for-each select="//row">
                <xsl:if test="not(@value='0')">
                    <xsl:if test="(@level=&quot;Regular&quot;) or (@level=&quot;ProxyCurve&quot;)">
                        <Object Name="QUOTATION">
                            <Property Name ="MARKET_SHORT">
                                <xsl:value-of select="'MICEX'"/>
                            </Property>
                            <Property Name ="MARKET_NAME">
                                <xsl:value-of select="'MICEX'"/>
                            </Property>
                            <Property Name ="TRADING_PLACE_SHORT">
                                <xsl:value-of select="'MAIN'"/>
                            </Property>
                            <Property Name ="TRADING_PLACE_NAME">
                                <xsl:value-of select="'MAIN'"/>
                            </Property>
                            <Property Name ="INSTRUMENT_SHORT">
                                <xsl:value-of select="@swap_curve"/>
                                <xsl:text>_</xsl:text>
                                <xsl:value-of select="@tenor"/>
                            </Property>
                            <Property Name ="INSTRUMENT_NAME">
                                <xsl:value-of select="@swap_curve"/>
                                <xsl:text>_</xsl:text>
                                <xsl:value-of select="@tenor"/>
                            </Property>
                            <Property Name ="C$DATE">
                                <xsl:value-of select="@tradedate"/>
                            </Property>
                            <Property Name ="C$TIME">
                                <xsl:value-of select="@tradetime"/>
                            </Property>
                            <Property Name ="C$PROOF">
                                <xsl:value-of select="1"/>
                            </Property>
                            <Property Name ="BID">
                                <xsl:value-of select="format-number( @swap_rate*100, '#.####')"/>
                            </Property>
                            <Property Name ="ASK">
                                <xsl:value-of select="format-number( @swap_rate*100, '#.####')"/>
                            </Property>
                            <Property Name ="OFFER">
                                <xsl:value-of select="format-number( @swap_rate*100, '#.####')"/>
                            </Property>
							<Property Name ="MARKETPRICE">
                                <xsl:value-of select="format-number( @swap_rate*100, '#.####')"/>
                            </Property>
                        </Object>
                    </xsl:if>    
                </xsl:if>    
            </xsl:for-each>
            </Body_Pocket>
		</Pocket>
    </xsl:template>
</xsl:stylesheet>