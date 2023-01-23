<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
		<xsl:if test="@Name = 'QUOTATION'">
			<Object Name="QUOTATION">
				<xsl:for-each select="@*[name(.) != 'Name']">
					<xsl:attribute name="{name(.)}">
						<xsl:value-of select="."/>
					</xsl:attribute>
				</xsl:for-each>
				<Property Name ="TRADING_PLACE_SHORT">
					<xsl:value-of select="'MAIN'"/>
				</Property>
				<Property Name ="MARKET_NAME">
					<xsl:value-of select="'MAIN'"/>
				</Property>
				<Property Name ="MARKET_SHORT">
					<xsl:value-of select="'NFA'"/>
				</Property>
				<Property Name ="TRADING_PLACE_NAME">
					<xsl:value-of select="'NFA'"/>
				</Property>
				<Property Name="C$DATE">
					<xsl:value-of select="Property[@Name='FIX_DATE']"/>
				</Property>
				<Property Name ="C$PROOF">
					<xsl:value-of select="1"/>
				</Property>
				<Property Name ="CURRENCYID">
					<xsl:value-of select="'RUB'"/>
				</Property>
				<Property Name="MARKETPRICE">
					<xsl:value-of select="Property[@Name='SEC_PRC']"/>
				</Property>
				<Property Name="INSTRUMENT_SHORT">
					<xsl:value-of select="Property[@Name='SEC_CODE']"/>
				</Property>
				<Property Name="INSTRUMENT_NAME">
					<xsl:value-of select="Property[@Name='SEC_CODE']"/>
				</Property>
			</Object>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/|node()" priority="0">
		<xsl:copy>
			<xsl:apply-templates></xsl:apply-templates>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
