<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
		<xsl:if test="@Name = 'INSTRUMENT'">
			<Object Name="INSTRUMENT">
				<xsl:for-each select="@*[name(.) != 'Name']">
					<xsl:attribute name="{name(.)}">
						<xsl:value-of select="."/>
					</xsl:attribute>
				</xsl:for-each>
				<Property Name ="MARKET_SHORT">
					<xsl:value-of select="'RTS'"/>
				</Property>
				<Property Name ="MARKET_NAME">
					<xsl:value-of select="'РТС'"/>
				</Property>
				<Property Name ="TRADING_PLACE_SHORT">
					<xsl:value-of select="'FORTS'"/>
				</Property>
				<Property Name ="TRADING_PLACE_NAME">
					<xsl:value-of select="'FORTS'"/>
				</Property>
				<Property Name="INSTRUMENT_SHORT">
					<xsl:value-of select="Property[@Name='NAME']"/>
				</Property>
				<Property Name="INSTRUMENTTYPE_CODE">
					<xsl:value-of select="'FUT'"/>
				</Property>
				<Property Name="MARGIN_VALUE">
					<xsl:value-of select="Property[@Name='DEPOSIT']"/>
				</Property>
				<Property Name="MARGIN_CURRENCY">
					<xsl:value-of select="'RUB'"/>
				</Property>
				<Property Name="CENT">
					<xsl:value-of select="Property[@Name='TICK']"/>
				</Property>
				<Property Name="CENT_VALUE">
					<xsl:value-of select="Property[@Name='TICK_PRICE']"/>
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
