<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:p1="http://xecdapi.xe.com">
	<xsl:output method="xml" encoding="windows-1251"/>
    <xsl:strip-space elements="*"/>
    <xsl:template match="data">
		<Pocket>
            <Body_Pocket>
            <xsl:for-each select="//row">
                <xsl:if test="not(@value='0')">
                    <xsl:if test="(@secid=&quot;fixing&quot;) or (@group=&quot;rates&quot;) or (@group=&quot;discount_curves&quot;)">
                        <Object Name="QUOTATION">
                            <Property Name ="MARKET_SHORT">
                                <xsl:value-of select="'MICEX'"/>
                            </Property>
                            <Property Name ="MARKET_NAME">
                                <xsl:value-of select="'MICEX'"/>
                            </Property>
                            <Property Name ="TRADING_PLACE_SHORT">
                                <xsl:value-of select="'MICEX'"/>
                            </Property>
                            <Property Name ="TRADING_PLACE_NAME">
                                <xsl:value-of select="'MICEX'"/>
                            </Property>
                            <Property Name ="INSTRUMENT_SHORT">
                                <xsl:choose>
                                    <xsl:when test="@secid = &quot;fixing&quot;">
                                        <xsl:value-of select="@group"/>
                                        <xsl:text>_</xsl:text>
                                        <xsl:value-of select="@secid"/>
                                        <xsl:text>_</xsl:text>
                                        <xsl:value-of select="@term"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="@secid"/>
                                        <xsl:text>_</xsl:text>
                                        <xsl:value-of select="@term"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </Property>
                            <Property Name ="INSTRUMENT_NAME">
                                <xsl:choose>
                                    <xsl:when test="@secid = &quot;fixing&quot;">
                                        <xsl:value-of select="@group"/>
                                        <xsl:text>_</xsl:text>
                                        <xsl:value-of select="@secid"/>
                                        <xsl:text>_</xsl:text>
                                        <xsl:value-of select="@term"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="@secid"/>
                                        <xsl:text>_</xsl:text>
                                        <xsl:value-of select="@term"/>
                                    </xsl:otherwise>
                                </xsl:choose>
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
                                <xsl:choose>
                                    <xsl:when test="@secid = &quot;fixing&quot;">
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="@value"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </Property>
                            <Property Name ="ASK">
                                <xsl:choose>
                                    <xsl:when test="@secid = &quot;fixing&quot;">
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="@value"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </Property>
                            <Property Name ="MARKETPRICE">
                                <xsl:choose>
                                    <xsl:when test="not(@secid = &quot;fixing&quot;)">
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="@value"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </Property>
                        </Object>
                    </xsl:if>    
                </xsl:if>    
            </xsl:for-each>
            </Body_Pocket>
		</Pocket>
    </xsl:template>
</xsl:stylesheet>