<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
		<xsl:if test="@Name = 'TRANSACTION'">
		<xsl:variable name="currency" select="Property[@Name='&#x412;&#x430;&#x43B;&#x44E;&#x442;&#x430;&#x20;&#x441;&#x434;&#x435;&#x43B;&#x43A;&#x438;']"/>
		<xsl:variable name="transacttype" select="Property[@Name='&#x422;&#x438;&#x43F;&#x20;&#x442;&#x440;&#x430;&#x43D;&#x437;&#x430;&#x43A;&#x446;&#x438;&#x438;']"/>
			<Object Name="TRANSACTION">
				<Property Name="MARKET_SHORT">
					<xsl:value-of select="'QUIK'"/>
				</Property>
				<Property Name="MARKET_NAME">
					<xsl:value-of select="'QUIK'"/>
				</Property>
				<Property Name="TRADING_PLACE_SHORT">
					<xsl:value-of select="'FORTS'"/>
				</Property>
				<Property Name="TRADING_PLACE_NAME">
					<xsl:value-of select="'FORTS'"/>
				</Property>
				<Property Name="LOADTIME">
					<xsl:value-of  select="current-dateTime()"/>
				</Property>
				<Property Name="INSTRUMENT_ID">
					<xsl:value-of select="Property[@Name='&#x41A;&#x43E;&#x434;&#x20;&#x43A;&#x43E;&#x43D;&#x442;&#x440;&#x430;&#x43A;&#x442;&#x430;&#x20;&#x43F;&#x440;&#x438;&#x43D;&#x44F;&#x442;&#x44B;&#x439;&#x20;&#x443;&#x20;&#x43E;&#x440;&#x433;&#x430;&#x43D;&#x438;&#x437;&#x430;&#x442;&#x43E;&#x440;&#x430;&#x20;&#x442;&#x43E;&#x440;&#x433;&#x43E;&#x432;']"/>
				</Property>
				<Property Name="PRICE_CURRENCY">
					<xsl:choose>
						<xsl:when test="$currency = &quot;RUR&quot;">
							<xsl:value-of select="&quot;RUB&quot;"/>
						</xsl:when>
						<xsl:when test="$currency = &quot;SUR&quot;">
							<xsl:value-of select="&quot;RUB&quot;"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="$currency"/>
						</xsl:otherwise>
					</xsl:choose>
				</Property>
				<Property Name="AMOUNT">
					<xsl:value-of select="Property[@Name='&#x412;&#x430;&#x440;&#x438;&#x430;&#x446;&#x438;&#x43E;&#x43D;&#x43D;&#x430;&#x44F;&#x20;&#x43C;&#x430;&#x440;&#x436;&#x430;']"/>
				</Property>
				<Property Name="VALUE_DATE">
					<xsl:value-of select="format-number(number(substring(Property[@Name='&#x414;&#x430;&#x442;&#x430;&#x20;&#x43E;&#x43F;&#x43B;&#x430;&#x442;&#x44B;'], 7, 4)), '0000')"/>
					<xsl:text>-</xsl:text>
					<xsl:value-of select="format-number(number(substring(Property[@Name='&#x414;&#x430;&#x442;&#x430;&#x20;&#x43E;&#x43F;&#x43B;&#x430;&#x442;&#x44B;'], 4, 2)), '00')"/>
					<xsl:text>-</xsl:text>
					<xsl:value-of select="format-number(number(substring(Property[@Name='&#x414;&#x430;&#x442;&#x430;&#x20;&#x43E;&#x43F;&#x43B;&#x430;&#x442;&#x44B;'], 1, 2)), '00')"/>
				</Property>
				<Property Name="TRADE_ACCOUNT">
					<xsl:value-of select="Property[@Name='&#x41A;&#x43E;&#x434;&#x20;&#x43F;&#x43E;&#x440;&#x442;&#x444;&#x435;&#x43B;&#x44F;']"/>
				</Property>
				<Property Name="DEAL_NUM">
					<xsl:value-of select="Property[@Name='&#x420;&#x435;&#x433;&#x438;&#x441;&#x442;&#x440;&#x430;&#x446;&#x438;&#x43E;&#x43D;&#x43D;&#x44B;&#x439;&#x20;&#x43A;&#x43E;&#x434;']"/>
				</Property>
				<Property Name="DEAL_SIDE">
					<xsl:choose>
						<xsl:when test="$transacttype = &quot;&#x41F;&#x43E;&#x43A;&#x443;&#x43F;&#x43A;&#x430;&quot;">
							<xsl:value-of select="&quot;B&quot;"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="&quot;S&quot;"/>
						</xsl:otherwise>
					</xsl:choose>
				</Property>
				<Property Name="TRNS_DIRECTION">
				<xsl:choose>
						<xsl:when test="$transacttype = &quot;&#x41F;&#x43E;&#x43A;&#x443;&#x43F;&#x43A;&#x430;&quot;">
							<xsl:value-of select="&quot;1&quot;"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="&quot;-1&quot;"/>
						</xsl:otherwise>
					</xsl:choose>
				</Property>
				<Property Name="TRADE_DATE">
					<xsl:value-of select="Property[@Name='&#x414;&#x430;&#x442;&#x430;&#x20;&#x440;&#x435;&#x433;&#x438;&#x441;&#x442;&#x440;&#x430;&#x446;&#x438;&#x438;']"/>
				</Property>
			</Object>
		</xsl:if>
	</xsl:template>
	<xsl:template match="/|node()" priority="0">
		<xsl:copy>
			<xsl:apply-templates/>
		</xsl:copy>
	</xsl:template>
</xsl:stylesheet>
