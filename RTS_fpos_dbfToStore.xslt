<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
		<xsl:if test="@Name = 'TRANSACTION'">
		        		<xsl:if test="((Property[@Name='ACCOUNT'] = 'CL') 
		        	)">
			<Object Name="TRANSACTION">
				<xsl:for-each select="@*[name(.) != 'Name']">
					<xsl:attribute name="{name(.)}">
						<xsl:value-of select="."/>
					</xsl:attribute>
				</xsl:for-each>
				<Property Name ="MARKET_SHORT">
					<xsl:value-of select="'RTS'"/>
				</Property>
				<Property Name ="MARKET_NAME">
					<xsl:value-of select="'���'"/>
				</Property>
				<Property Name ="TRADING_PLACE_SHORT">
					<xsl:value-of select="'FORTS'"/>
				</Property>
				<Property Name ="TRADING_PLACE_NAME">
					<xsl:value-of select="'FORTS'"/>
				</Property>
				<Property Name="INSTRUMENT_SHORT">
					<xsl:value-of select="Property[@Name='ISIN']"/>
				</Property>
				<Property Name ="PRICE_CURRENCY">
					<xsl:value-of select="'RUB'"/>
				</Property>
				<Property Name="AMOUNT">
					<xsl:value-of select="Property[@Name='VAR_MARG_P']+Property[@Name='VAR_MARG_D']"/>
				</Property>
				<Property Name ="TRNS_DIRECTION">
					<xsl:value-of select="'1'"/>
				</Property>								
				<Property Name ="VALUE_DATE">
					<xsl:value-of select="format-number(number(substring(Property[@Name='DATE'], 1, 4)), '0000')"/>
					<xsl:text>-</xsl:text>
					<xsl:value-of select="format-number(number(substring(Property[@Name='DATE'], 6, 2)), '00')"/>
					<xsl:text>-</xsl:text>
					<xsl:value-of select="format-number(number(substring(Property[@Name='DATE'], 9, 2)), '00')"/>
				</Property>
				<Property Name ="TRANSACT_TYPE">
					<xsl:value-of select="'VARMRG'"/>
				</Property>
				<Property Name ="TRADE_ACCOUNT">
					<xsl:value-of select="Property[@Name='ACCOUNT']"/>
					<xsl:value-of select="substring(Property[@Name='KOD'],1,4)"/>
				</Property>
				<Property Name="DEAL_NUM">
					<xsl:value-of select="''"/>
				</Property>
				<Property Name="DEAL_SIDE">
					<xsl:value-of select="''"/>
				</Property>
				<Property Name="RULE_NAME">
					<xsl:value-of select="'RTS_fpos_dbfToStore.xslt'"/>
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
