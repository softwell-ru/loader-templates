<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
		<xsl:if test="@Name = 'TRANSACTION'">
			<Object Name="TRANSACTION">
				<xsl:for-each select="@*[name(.) != 'Name']">
					<xsl:attribute name="{name(.)}">
						<xsl:value-of select="."/>
					</xsl:attribute>
				</xsl:for-each>
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
				<Property Name="ID_REAL">
					<xsl:value-of select="Property[@Name='ID_DEAL']"/>
				</Property>
				<Property Name="DEAL_NUM">
					<xsl:value-of select="Property[@Name='ID_DEAL']"/>
				</Property>
				<Property Name="INSTRUMENT_SHORT">
					<xsl:value-of select="Property[@Name='ISIN']"/>
				</Property>
                <Property Name="DEAL_SIDE">
                    <xsl:choose>
                        <xsl:when test="(Property[@Name='KOD_SELL'] = '')">
                            <xsl:choose>
                                <xsl:when test="(Property[@Name='KOD_BUY'] = '')">
                                    <xsl:value-of select="'-'"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="'B'"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="'S'"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </Property>
                <Property Name="AMOUNT">
                    <xsl:choose>
                        <xsl:when test="(Property[@Name='KOD_SELL'] = '')">
                            <xsl:value-of select="Property[@Name='FEE_BUY']"/>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="Property[@Name='FEE_SELL']"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </Property>
                <Property Name="TRADE_ACCOUNT">
                    <xsl:choose>
                        <xsl:when test="(Property[@Name='KOD_SELL'] = '')">
                            <xsl:choose>
                                <xsl:when test="(Property[@Name='KOD_BUY'] = '')">
                                    <xsl:value-of select="'-'"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="substring(Property[@Name='KOD_BUY'],1,4)"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="substring(Property[@Name='KOD_SELL'],1,4)"/>
                        </xsl:otherwise>
                    </xsl:choose>
                </Property>
                <Property Name="VALUE_DATE">
                    <xsl:value-of select="format-number(number(substring(Property[@Name='DATE'], 1, 4)), '0000')"/>
                    <xsl:text>-</xsl:text>
                    <xsl:value-of select="format-number(number(substring(Property[@Name='DATE'], 6, 2)), '00')"/>
                    <xsl:text>-</xsl:text>
                    <xsl:value-of select="format-number(number(substring(Property[@Name='DATE'], 9, 2)), '00')"/>
                    <xsl:text>T</xsl:text>
                    <xsl:value-of select="Property[@Name='TIME']"/>
                </Property>
                <Property Name="TRNS_DIRECTION">
                    <xsl:value-of select="-1"/> <!-- RUB nir -->
                </Property>
                <Property Name="TRANSACT_TYPE">
                    <xsl:value-of select="'SCMC1'"/> <!-- RUB nir -->
                </Property>
                <Property Name="RULE_NAME">
					<xsl:value-of select="'RTS_comm_f04_dbfToStore.xslt'"/>
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
