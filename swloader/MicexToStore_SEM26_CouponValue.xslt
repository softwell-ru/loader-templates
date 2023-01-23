<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="windows-1251"/>
    <xsl:template match="/MICEX_DOC">
        <Pocket>
            <Body_Pocket>
                <xsl:if test="SEM26">
                    <xsl:for-each select="//RECORDS">
                        <xsl:variable name="var1" select="@Value"/>
                        <Object Name="TRANSACTION">
                            <Property Name="GENERATE_ID_ON">
                                <xsl:value-of select="'true'"/>
                            </Property>
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
                                    <xsl:when test="../../@CurrencyId = &quot;RUR&quot;">
                                        <xsl:value-of select="&quot;RUB&quot;"/>
                                    </xsl:when>
                                    <xsl:when test="../../@CurrencyId = &quot;SUR&quot;">
                                        <xsl:value-of select="&quot;RUB&quot;"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="../../@CurrencyId"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </Property>
                            <Property Name="INSTRUMENT_NAME">
                                <xsl:choose>
                                    <xsl:when test="../../@CurrencyId = &quot;RUR&quot;">
                                        <xsl:value-of select="&quot;RUB&quot;"/>
                                    </xsl:when>
                                    <xsl:when test="../../@CurrencyId = &quot;SUR&quot;">
                                        <xsl:value-of select="&quot;RUB&quot;"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="../../@CurrencyId"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </Property>
                            <Property Name="PRICE_CURRENCY">
                                <xsl:choose>
                                    <xsl:when test="../../@CurrencyId = &quot;RUR&quot;">
                                        <xsl:value-of select="&quot;RUB&quot;"/>
                                    </xsl:when>
                                    <xsl:when test="../../@CurrencyId = &quot;SUR&quot;">
                                        <xsl:value-of select="&quot;RUB&quot;"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="../../@CurrencyId"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </Property>
                            <Property Name="AMOUNT">
                                <xsl:value-of select="format-number(number(@CouponValue), '#0.00')"/>
                            </Property>
                            <Property Name="VALUE_DATE">
                                <xsl:value-of select="@RepoValueDate"/>
                            </Property>
                            <Property Name="TRADE_ACCOUNT">
                                <xsl:choose>
                                    <xsl:when test="@ClientDetails">
                                        <xsl:value-of select="substring(../../../@FirmID,1,7)"/>
                                        <xsl:value-of select="substring(@ClientDetails,6,5)"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="../../../@FirmID"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </Property>
                            <Property Name="TRANSACT_TYPE">
                                <xsl:value-of select="'SCCPN'"/>
                            </Property>
                            <Property Name="DEAL_NUM">
                                <xsl:value-of select="''"/>
                            </Property>
                            <Property Name="DEAL_SIDE">
                                <xsl:value-of select="''"/>
                            </Property>
                            <Property Name="TRNS_DIRECTION">
                                <xsl:value-of select="1"/>
                            </Property>
                            <Property Name="TRADE_DATE">
                                <xsl:value-of select="../../../../@ReportDate"/>
                            </Property>
                            <Property Name="RULE_NAME">
                                <xsl:value-of select="'SEM26CouponValue.xslt'"/>
                            </Property>
                        </Object>
                    </xsl:for-each>
                </xsl:if>
            </Body_Pocket>
        </Pocket>
    </xsl:template>
</xsl:stylesheet>
