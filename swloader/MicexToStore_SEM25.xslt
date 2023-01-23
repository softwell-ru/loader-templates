<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="windows-1251"/>
    <xsl:template match="/MICEX_DOC">
        <Pocket>
            <Body_Pocket>
                <xsl:if test="SEM25">
                    <xsl:for-each select="//RECORDS">
                        <xsl:variable name="var1" select="@Value"/>
                            <Object Name="TRANSACTION">
                                <Property Name="MARKET_SHORT">
                                    <xsl:value-of select="'MICEX'"/>
                                </Property>
                                <Property Name="MARKET_NAME">
                                    <xsl:value-of select="'����'"/>
                                </Property>
                                <Property Name="TRADING_PLACE_SHORT">
                                    <xsl:value-of select="'Main'"/>
                                </Property>
                                <Property Name="TRADING_PLACE_NAME">
                                    <xsl:value-of select="'Main'"/>
                                </Property>
                                <Property Name="INSTRUMENT_SHORT">
                                    <xsl:choose>
                                        <xsl:when test="@Value &gt; 0">
                                            <xsl:value-of select="../../@CurrencyId"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="../@SecurityId"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </Property>
                                <Property Name="INSTRUMENT_NAME">
                                    <xsl:choose>
                                        <xsl:when test="@Value &gt; 0">
                                            <xsl:value-of select="../../@CurrencyId"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="../@SecName"/>
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
                                    <xsl:choose>
                                        <xsl:when test="@Value &gt; 0">
                                            <xsl:value-of select="format-number(number(@Value), '#0.00')"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="@Quantity"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </Property>
                                <Property Name="VALUE_DATE">
                                    <xsl:value-of select="@SettleDate"/>
                                </Property>
                                <Property Name="TRADE_ACCOUNT">
                                    <xsl:value-of select="@TrdAccId"/>
                                </Property>
                                <Property Name="TRANSACT_TYPE">
                                    <xsl:value-of select="'MARGINCALL'"/>
                                </Property>
                                <Property Name="DEAL_NUM">
                                    <xsl:value-of select="@RepoTradeNo"/>
                                </Property>
                                <Property Name="DEAL_SIDE">
                                    <xsl:value-of select="''"/>
                                </Property>
                                <Property Name="TRNS_DIRECTION">
                                    <xsl:choose>
                                        <xsl:when test="@Direction = &quot;D&quot;">
                                            <xsl:value-of select="-1"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="1"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </Property>
                                <Property Name="TRADE_DATE">
                                    <xsl:value-of select="@RepoTradeDate"/>
                                </Property>
                                <Property Name="ID_REAL">
                                    <xsl:value-of select="@RepoTradeNo"/>
                                    <xsl:value-of select="@Direction"/>
                                    <xsl:value-of select="@SettleDate"/>
                                </Property>
                                <Property Name="RULE_NAME">
                                    <xsl:value-of select="'MicexToStore_SEM25.xslt'"/>
                                </Property>
                            </Object>
                    </xsl:for-each>
                </xsl:if>
            </Body_Pocket>
        </Pocket>
    </xsl:template>
</xsl:stylesheet>
