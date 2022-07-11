<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="windows-1251"/>
    <xsl:template match="/MICEX_DOC">
        <Pocket>
            <Body_Pocket>
                <xsl:if test="EQM15">
                    <xsl:for-each select="//FEE">
                        <xsl:variable name="var1" select="@Value"/>
                            <Object Name="TRANSACTION">
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
                                    <xsl:value-of select="&quot;RUB&quot;"/>
                                </Property>
                                <Property Name="INSTRUMENT_NAME">
                                    <xsl:value-of select="&quot;RUB&quot;"/>
                                </Property>
                                <Property Name="VALUE_DATE">
                                    <xsl:value-of select="ancestor::EQM15/preceding-sibling::DOC_REQUISITES/@DOC_DATE" />
                                </Property>
                                <Property Name="TRADE_DATE">
                                    <xsl:value-of select="ancestor::EQM15/preceding-sibling::DOC_REQUISITES/@DOC_DATE" />
                                </Property>
                                <Property Name="FILE_REC_IDENTIF">
                                    <xsl:value-of select="ancestor::EQM15/preceding-sibling::DOC_REQUISITES/@DOC_NO" />
                                </Property>
                                <Property Name="COUNTERPARTNER">
                                    <xsl:value-of select="../../../../@MainFirmId"/>
                                </Property>
                                <Property Name="TRANSACT_TYPE">
                                    <xsl:choose>
                                        <xsl:when test="../../@ComType = 1">
                                            <xsl:value-of select="&quot;SCMC3&quot;"/>
                                        </xsl:when>
                                        <xsl:when test="../../@ComType = 2">
                                            <xsl:value-of select="&quot;SCMC2&quot;"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="&quot;SCMC1&quot;"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </Property>
                                <Property Name="TRADE_ACCOUNT">
                                    <xsl:value-of select="../@BankAccId"/>
                                </Property>
                                <Property Name="ID_REAL">
                                    <xsl:value-of select="../@BankAccId"/>
                                    <xsl:value-of select="../../../../@ReportDate"/>
                                    <xsl:value-of select="../../@ComType"/>
                                    <xsl:value-of select="@FeeType"/>
                                </Property>
                                <Property Name="PRICE_CURRENCY">
                                    <xsl:value-of select="&quot;RUB&quot;"/>
                                </Property>
                                <Property Name="AMOUNT">
                                    <xsl:value-of select="@TotComm"/>
                                </Property>
                                <Property Name="RULE_NAME">
                                    <xsl:value-of select="'EQM15'"/>
                                </Property>
                            </Object>
                    </xsl:for-each>
                </xsl:if>
            </Body_Pocket>
        </Pocket>
    </xsl:template>
</xsl:stylesheet>
