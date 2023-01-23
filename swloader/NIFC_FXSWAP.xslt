<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/chart">
		<Pocket>
		<Body_Pocket>
            <xsl:if test="/chart/data/settings='fx-c-sw-curvsettings.xml'">
                <xsl:for-each select="/chart/records">
                    <Object Name="QUOTATION">
                        <Property Name ="TRADING_PLACE_SHORT">
                            <xsl:value-of select="'NIFC_FXSWAP'"/>
                        </Property>
                        <Property Name ="MARKET_NAME">
                            <xsl:value-of select="'NIFC_FXSWAP'"/>
                        </Property>
                        <Property Name ="MARKET_SHORT">
                            <xsl:value-of select="'NIFC'"/>
                        </Property>
                        <Property Name ="TRADING_PLACE_NAME">
                            <xsl:value-of select="'NIFC'"/>
                        </Property>
                        <Property Name ="C$DATE">
                        <xsl:value-of select="substring(curveTime, 1, 10)"/>
                        </Property>
                        <Property Name ="C$PROOF">
                            <xsl:value-of select="1"/>
                        </Property>
                        <Property Name ="LAST_PRICE">
                            <xsl:value-of select="swapPnt"/>    
                        </Property>
                        <Property Name ="INSTRUMENT_SHORT">
                            <xsl:text>FXS-</xsl:text>
                            <xsl:value-of select="currencyPair"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="tenor"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="replace(dataSourceEn, '\s', '')"/>
                        </Property>
                        <Property Name ="INSTRUMENT_NAME">
                            <xsl:text>FXS-</xsl:text>
                            <xsl:value-of select="currencyPair"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="tenor"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="replace(dataSourceEn, '\s', '')"/>
                        </Property>
                    </Object>
                </xsl:for-each>
            </xsl:if>
            <xsl:if test="/chart/data/settings='fx-sw-curv-settings.xml'">
            <xsl:variable name="curveType" select="/chart/data/curveType" />
                <xsl:for-each select="/chart/data/voArray">
                    <Object Name="QUOTATION">
                        <Property Name ="TRADING_PLACE_SHORT">
                            <xsl:value-of select="'NIFC_FXSWAP'"/>
                        </Property>
                        <Property Name ="MARKET_NAME">
                            <xsl:value-of select="'NIFC_FXSWAP'"/>
                        </Property>
                        <Property Name ="MARKET_SHORT">
                            <xsl:value-of select="'NIFC'"/>
                        </Property>
                        <Property Name ="TRADING_PLACE_NAME">
                            <xsl:value-of select="'NIFC'"/>
                        </Property>
                        <Property Name ="C$DATE">
                        <xsl:value-of select="../showDateCN"/>
                        </Property>
                        <Property Name ="C$PROOF">
                            <xsl:value-of select="1"/>
                        </Property>
                        <Property Name ="LAST_PRICE">
                            <xsl:value-of select="points"/>  
                        </Property>
                        <Property Name ="INSTRUMENT_SHORT">
                            <xsl:text>FXS-</xsl:text>
                            <xsl:value-of select="$curveType"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="tenor"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="replace(sourceEN, '\s', '')"/>
                        </Property>
                        <Property Name ="INSTRUMENT_NAME">
                            <xsl:text>FXS-</xsl:text>
                            <xsl:value-of select="$curveType"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="tenor"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="replace(sourceEN, '\s', '')"/>
                        </Property>
                    </Object>
                </xsl:for-each>
            </xsl:if>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>