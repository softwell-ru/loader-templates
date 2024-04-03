<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
		<xsl:if test="@Name = 'CUSTOMER'">
			<Object Name="CUSTOMER">
				<xsl:for-each select="@*[name(.) != 'Name']">
					<xsl:attribute name="{name(.)}"><xsl:value-of select="."/></xsl:attribute>
				</xsl:for-each>
				<Property Name="OPERDAY_ID">
					<xsl:value-of select="Property[@Name='OPERDAY_ID']">
					</xsl:value-of>
				</Property>
				<Property Name="CUSTID">
					<xsl:value-of select="Property[@Name='CODE_OTC']">
					</xsl:value-of>
				</Property>
				<Property Name="CUSTNAME">
					<xsl:value-of select="Property[@Name='CUSTOMER_FULL']">
					</xsl:value-of>
				</Property>
				<Property Name="SHTNAME">
					<xsl:value-of select="Property[@Name='CUSTOMER_SHORT']">
					</xsl:value-of>
				</Property>
				<Property Name="ENGLISH1">
					<xsl:value-of select="Property[@Name='CUSTOMER_ENGLISH']">
					</xsl:value-of>
				</Property>
				<Property Name="EMAIL">
					<xsl:value-of select="Property[@Name='EMAIL']">
					</xsl:value-of>
				</Property>
				<Property Name="INN">
					<xsl:value-of select="Property[@Name='INN_KIO']">
					</xsl:value-of>
				</Property>
				<Property Name="KPP">
					<xsl:value-of select="Property[@Name='KPP']">
					</xsl:value-of>
				</Property>
				<Property Name="BICINT">
					<xsl:value-of select="Property[@Name='SWIFT']">
					</xsl:value-of>
				</Property>
				<Property Name="BICDOM">
					<xsl:value-of select="Property[@Name='BIK']">
					</xsl:value-of>
				</Property>
				<Property Name="COUNTRY_NAME">
					<xsl:value-of select="Property[@Name='COUNTRY_CODE']">
					</xsl:value-of>
				</Property>
				<Property Name="LICENCE_BROKER">
					<xsl:value-of select="Property[@Name='LICENCE_BROKER']">
					</xsl:value-of>
				</Property>
				<Property Name="LICENCE_DEALER">
					<xsl:value-of select="Property[@Name='LICENCE_DEALER']">
					</xsl:value-of>
				</Property>
				<Property Name="LICENCE_TRUSTEE">
					<xsl:value-of select="Property[@Name='LICENCE_TRUSTEE']">
					</xsl:value-of>
				</Property>
				<Property Name="FSFR_CODE">
					<xsl:value-of select="Property[@Name='FSFR_CODE']">
					</xsl:value-of>
				</Property>
				<Property Name="FROM_FILE">
					<xsl:value-of select="Property[@Name='FROM_FILE']">
					</xsl:value-of>
				</Property>
				<Property Name="OWNER_CUSTOMER">
					<xsl:value-of select="Property[@Name='OWNER_ID']">
					</xsl:value-of>
				</Property>
				<Property Name="TRADE_STATUS">
					<xsl:value-of select="Property[@Name='TRADE_STATUS']">
                                    </xsl:value-of>
				</Property>
				<Property Name="CLEARING_STATUS">
					<xsl:value-of select="Property[@Name='CLEARING_STATUS']">
                                    </xsl:value-of>
				</Property>
				<Property Name="TRADE_ACCESS">
					<xsl:value-of select="Property[@Name='TRADE_ACCESS']">
                                    </xsl:value-of>
				</Property>
				<Property Name="CLEARING_ACCESS">
					<xsl:value-of select="Property[@Name='CLEARING_ACCESS']">
                                    </xsl:value-of>
				</Property>
				<Property Name="T_P_S">
					<xsl:value-of select="'OTC'">
                                    </xsl:value-of>
				</Property>
				<Property Name="EVENTID">
					<xsl:value-of select="Property[@Name='EVENTID']">
					</xsl:value-of>
				</Property>
				<Property Name="NCLASS">
					<xsl:value-of select="150">
					</xsl:value-of>
				</Property>
				<Property Name="SEC_ROLES">
					<xsl:variable name="TradeAccess">
						<xsl:choose>
							<xsl:when test="not( not(//Property[@Name='TRADE_ACCESS']) or (//Property[@Name='TRADE_ACCESS']=''))">	67108864</xsl:when>
							<xsl:otherwise>0</xsl:otherwise>
						</xsl:choose>
					</xsl:variable>
					<xsl:variable name="ClearingAccess">
						<xsl:choose>
							<xsl:when test="not( not(//Property[@Name='CLEARING_ACCESS']) or (//Property[@Name='CLEARING_ACCESS']=''))">134217728</xsl:when>
							<xsl:otherwise>0</xsl:otherwise>
						</xsl:choose>
					</xsl:variable>
					<xsl:value-of select="$TradeAccess + $ClearingAccess"/>
				</Property>
			</Object>
		</xsl:if>
		<xsl:if test="@Name = 'PAYMENTS'">
			<Object Name="vw_T_TRANSACTIONS">
				<xsl:for-each select="@*[name(.) != 'Name']">
					<xsl:attribute name="{name(.)}"><xsl:value-of select="."/></xsl:attribute>
				</xsl:for-each>
				<Property Name="NCLASS">
					<xsl:value-of select="151">
                            </xsl:value-of>
				</Property>
				<Property Name="OPERDAY_ID">
					<xsl:value-of select="Property[@Name='OPERDAYID']">
                            </xsl:value-of>
				</Property>
				<Property Name="RATE">
					<xsl:value-of select="Property[@Name='RATE']">
                            </xsl:value-of>
				</Property>
				<Property Name="EVENTID">
					<xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
				</Property>
				<Property Name="DEALTYPE">
					<xsl:value-of select="'NT'">
                            </xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1899-12-30'))">
						<Property Name="VALUEDATE">
							<xsl:value-of select="''">
                                    </xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="VALUEDATE">
							<xsl:value-of select="Property[@Name='VALUEDATE']">
                                    </xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:choose>
					<xsl:when test="(((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1899-12-30'))">
						<Property Name="VALUEDATE_FACT">
							<xsl:value-of select="''">
                                    </xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="VALUEDATE_FACT">
							<xsl:value-of select="Property[@Name='VALUEDATE']">
                                    </xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:choose>
					<xsl:when test="(((substring(Property[@Name='TRADEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='TRADEDATE'], 1, 10)) = '1899-12-30'))">
						<Property Name="TRADEDATE">
							<xsl:value-of select="''">
                                    </xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="TRADEDATE">
							<xsl:value-of select="Property[@Name='TRADEDATE']">
                                    </xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:choose>
					<xsl:when test="(Property[@Name='INSTRUMENT'] = 'RUR')">
						<Property Name="CCY">
							<xsl:value-of select="'RUB'">
                                    </xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="CCY">
							<xsl:value-of select="Property[@Name='INSTRUMENT']">
                                    </xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="ACCPOINTER">
					<xsl:value-of select="Property[@Name='T_OWNER_ACC']">
                            </xsl:value-of>
				</Property>
				<Property Name="NAZN">
					<xsl:value-of select="Property[@Name='NAZN']">
                            </xsl:value-of>
				</Property>
				<Property Name="AMOUNT">
					<xsl:value-of select="Property[@Name='AMOUNT']">
                            </xsl:value-of>
				</Property>
			</Object>
		</xsl:if>
		<xsl:if test="@Name = 'REST'">
			<Object Name="ACCBALANCE">
				<xsl:for-each select="@*[name(.) != 'Name']">
					<xsl:attribute name="{name(.)}"><xsl:value-of select="."/></xsl:attribute>
				</xsl:for-each>
				<Property Name="NCLASS">
					<xsl:value-of select="152">
                            </xsl:value-of>
				</Property>
				<Property Name="OPERDAY_ID">
					<xsl:value-of select="Property[@Name='ID']">
                            </xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='CURRENCY'] = 'RUR')">
						<Property Name="CCY">
							<xsl:value-of select="'RUB'">
                                    </xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="CCY">
							<xsl:value-of select="Property[@Name='CURRENCY']">
                                    </xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="OWNER_ACC">
					<xsl:value-of select="Property[@Name='CODE_OTC']">
                            </xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(((substring(Property[@Name='TIMESTAMP'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='TIMESTAMP'], 1, 10)) = '1899-12-30'))">
						<Property Name="AMOUNTDATE">
							<xsl:value-of select="''">
                                    </xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="AMOUNTDATE">
							<xsl:value-of select="substring(Property[@Name='TIMESTAMP'], 1, 10)">
                                    </xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="AMOUNT">
					<xsl:value-of select="Property[@Name='AMOUNT']">
                            </xsl:value-of>
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
