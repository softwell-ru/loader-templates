<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/chart">
		<Pocket>
		<Body_Pocket>
            <xsl:if test="curve">
            <xsl:variable name="item" select="curve/@item" />
            <xsl:variable name="type" select="curve/@type" />
            <xsl:variable name="date" select="curve/date" />
                <xsl:for-each select="/chart//xaxis/value[@show='true']">
                    <Object Name="QUOTATION">
                        <xsl:variable name="valid" select="@xid" />
                        <Property Name ="TRADING_PLACE_SHORT">
                            <xsl:value-of select="'NIFC_IRS'"/>
                        </Property>
                        <Property Name ="MARKET_NAME">
                            <xsl:value-of select="'NIFC_IRS'"/>
                        </Property>
                        <Property Name ="MARKET_SHORT">
                            <xsl:value-of select="'NIFC'"/>
                        </Property>
                        <Property Name ="TRADING_PLACE_NAME">
                            <xsl:value-of select="'NIFC'"/>
                        </Property>
                        <Property Name ="C$DATE">
                        <xsl:value-of select="$date"/>
                        </Property>
                        <Property Name ="C$PROOF">
                            <xsl:value-of select="1"/>
                        </Property>
                        <Property Name ="BID">
                            <xsl:for-each select="../../graphs/graph[@gid='0']">
                                <xsl:value-of select="value[@xid=$valid]"/>
                            </xsl:for-each>
                        </Property>
                        <Property Name ="OFFER">
                            <xsl:for-each select="../../graphs/graph[@gid='0']">
                                <xsl:value-of select="value[@xid=$valid]"/>
                            </xsl:for-each>
                        </Property>
                        <Property Name ="ASK">
                            <xsl:for-each select="../../graphs/graph[@gid='2']">
                                <xsl:value-of select="value[@xid=$valid]"/>
                            </xsl:for-each>
                        </Property>
                        <Property Name ="INSTRUMENT_SHORT">
                            <xsl:value-of select="$item"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="."/>
                            <xsl:text>-</xsl:text>
                            <xsl:if test="$type='Closing' or $type='Quotes'">
                                <xsl:text>CQ</xsl:text>
                            </xsl:if>
                            <xsl:if test="$type='Fixing'">
                                <xsl:text>F</xsl:text>
                            </xsl:if>
                        </Property>
                        <Property Name ="INSTRUMENT_NAME">
                            <xsl:value-of select="$item"/>
                            <xsl:text>-</xsl:text>
                            <xsl:value-of select="."/>
                            <xsl:text>-</xsl:text>
                            <xsl:if test="$type='Closing' or $type='Quotes'">
                                <xsl:text>CQ</xsl:text>
                            </xsl:if>
                            <xsl:if test="$type='Fixing'">
                                <xsl:text>F</xsl:text>
                            </xsl:if>
                        </Property>
                    </Object>
                </xsl:for-each>
            </xsl:if>
		</Body_Pocket>
		</Pocket>
	</xsl:template>
</xsl:stylesheet>