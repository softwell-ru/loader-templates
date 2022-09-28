<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
		<xsl:if test="@Name = 'QUOTATION'">
            <xsl:if test="contains(Property[@Name='Security Description'], 'FX Swap')">
                <Object Name="QUOTATION">
                    <Property Name ="MARKET_SHORT">
                        <xsl:value-of select="'RUDATA'"/>
                    </Property>
                    <Property Name ="MARKET_NAME">
                        <xsl:value-of select="'MAIN'"/>
                    </Property>
                    <Property Name ="TRADING_PLACE_SHORT">
                        <xsl:value-of select="'MAIN'"/>
                    </Property>
                    <Property Name ="TRADING_PLACE_NAME">
                        <xsl:value-of select="'RUDATA'"/>
                    </Property>
                    <Property Name ="C$PROOF">
                        <xsl:value-of select="1"/>
                    </Property>
                    <Property Name ="OFFER">
                        <xsl:value-of select="Property[@Name='Ask Price']"/>
                    </Property>
                    <Property Name ="BID">
                        <xsl:value-of select="Property[@Name='Bid Price']"/>
                    </Property>
                    <Property Name ="ASK">
                        <xsl:value-of select="Property[@Name='Ask Price']"/>
                    </Property>
                    <Property Name ="INSTRUMENT_NAME">
                        <xsl:value-of select="Property[@Name='Instrument']"/>
                    </Property>
                    <Property Name ="INSTRUMENT_SHORT">
                        <xsl:value-of select="Property[@Name='Instrument']"/>
                    </Property>
                    <Property Name ="C$DATE">
                        <xsl:value-of select="format-number(number(substring(Property[@Name='Trade Date'], 1, 4)), '0000')"/>
                        <xsl:text>-</xsl:text>
                        <xsl:value-of select="format-number(number(substring(Property[@Name='Trade Date'], 5, 2)), '00')"/>
                        <xsl:text>-</xsl:text>
                        <xsl:value-of select="format-number(number(substring(Property[@Name='Trade Date'], 7, 2)), '00')"/>
                    </Property>
                </Object>
            </xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/|node()" priority="0">
		<xsl:copy>
			<xsl:apply-templates></xsl:apply-templates>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
