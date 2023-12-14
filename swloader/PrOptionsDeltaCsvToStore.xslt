<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
		<xsl:if test="@Name = 'QUOTATION'">
			<xsl:if test="(starts-with(Property[@Name='&#x41A;&#x43E;&#x434;&#x20;&#x43E;&#x43F;&#x446;&#x438;&#x43E;&#x43D;&#x430;'], 'Si')) or (starts-with(Property[@Name='&#x41A;&#x43E;&#x434;&#x20;&#x43E;&#x43F;&#x446;&#x438;&#x43E;&#x43D;&#x430;'], 'Eu')) or (starts-with(Property[@Name='&#x41A;&#x43E;&#x434;&#x20;&#x43E;&#x43F;&#x446;&#x438;&#x43E;&#x43D;&#x430;'], 'CNY'))">
				<Object Name="QUOTATION">
					<Property Name="MARKET_SHORT">
						<xsl:value-of select="'MICEX'"/>
					</Property>
					<Property Name="MARKET_NAME">
						<xsl:value-of select="'MICEX'"/>
					</Property>
					<Property Name="TRADING_PLACE_SHORT">
						<xsl:value-of select="'FORTS'"/>
					</Property>
					<Property Name="TRADING_PLACE_NAME">
						<xsl:value-of select="'FORTS'"/>
					</Property>
					<Property Name="C$PROOF">
						<xsl:value-of select="1"/>
					</Property>
					<Property Name="MARKET_PRICE">
						<xsl:value-of select="Property[@Name='&#x422;&#x435;&#x43E;&#x440;&#x435;&#x442;&#x438;&#x447;&#x435;&#x441;&#x43A;&#x430;&#x44F;&#x20;&#x446;&#x435;&#x43D;&#x430;&#x20;&#x43E;&#x43F;&#x446;&#x438;&#x43E;&#x43D;&#x430;']"/>
					</Property>
					<Property Name="INSTRUMENT_NAME">
						<xsl:value-of select="Property[@Name='&#x41A;&#x43E;&#x434;&#x20;&#x43E;&#x43F;&#x446;&#x438;&#x43E;&#x43D;&#x430;']"/>
					</Property>
					<Property Name="INSTRUMENT_SHORT">
						<xsl:value-of select="Property[@Name='&#x41A;&#x43E;&#x434;&#x20;&#x43E;&#x43F;&#x446;&#x438;&#x43E;&#x43D;&#x430;']"/>
					</Property>
					<Property Name="OPTION_PRICE_DELTA">
						<xsl:value-of select="Property[@Name='&#x41A;&#x43E;&#x44D;&#x444;&#x444;&#x438;&#x446;&#x438;&#x435;&#x43D;&#x442;&#x20;&#x434;&#x435;&#x43B;&#x44C;&#x442;&#x430;']"/>
					</Property>
					<Property Name="OPTION_PRICE_VOLA">
						<xsl:value-of select="Property[@Name='&#x412;&#x43E;&#x43B;&#x430;&#x442;&#x438;&#x43B;&#x44C;&#x43D;&#x43E;&#x441;&#x442;&#x44C;']"/>
					</Property>
					<Property Name="C$DATE">
						<xsl:value-of select="format-number(number(substring(Property[@Name='&#x414;&#x430;&#x442;&#x430;'], 7, 4)), '0000')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(Property[@Name='&#x414;&#x430;&#x442;&#x430;'], 4, 2)), '00')"/>
						<xsl:text>-</xsl:text>
						<xsl:value-of select="format-number(number(substring(Property[@Name='&#x414;&#x430;&#x442;&#x430;'], 1, 2)), '00')"/>
					</Property>
				</Object>
			</xsl:if>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/|node()" priority="0">
		<xsl:copy>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
