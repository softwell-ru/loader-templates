<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="windows-1251"/>
    <xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
		     <xsl:if test="@Name='vw_SEC_MARKET'">
            <Object Name="vw_SEC_MARKET">
                <xsl:for-each select="@*[name(.) != 'Name']">
                    <xsl:attribute name="{name(.)}"><xsl:value-of select="."/></xsl:attribute>
                </xsl:for-each>
                <Property Name="ID">
                    <xsl:value-of select="Property[@Name='ID']">
                    </xsl:value-of>
                </Property>
                <Property Name="TRADE_DATE">
                    <xsl:value-of select="Property[@Name='TRADE_DATE']">
                    </xsl:value-of>
                </Property>
				<Property Name="TRADE_CLASSCODE">
                    <xsl:value-of select="Property[@Name='TRADE_CLASSCODE']">
                    </xsl:value-of>
                </Property>
                <Property Name="MARKET_PRICE">
                    <xsl:value-of select="Property[@Name='MARKET_PRICE']">
                    </xsl:value-of>
                </Property>
                <Property Name="INSTRUMENT_CODE_EXCH">
                    <xsl:value-of select="Property[@Name='INSTRUMENT_CODE_EXCH']">
                    </xsl:value-of>
                </Property>
                <Property Name="EXCHANGE_ODB">
                    <xsl:value-of select="Property[@Name='EXCHANGE_ODB']">
                    </xsl:value-of>
                </Property>
                <Property Name="FUNDING_RATE">
                    <xsl:value-of select="Property[@Name='FUNDING_RATE']">
                    </xsl:value-of>
                </Property>
                <Property Name="ACTION_PRODUCT_CODE">
                    <xsl:value-of select="Property[@Name='ACTION_PRODUCT_CODE']">
                    </xsl:value-of>
                </Property>
            </Object>                
        </xsl:if>
		<xsl:if test="@Name='vw_SEC_INSTRUMENT'">
            <Object Name="vw_SEC_INSTRUMENT">
                <xsl:for-each select="@*[name(.) != 'Name']">
                    <xsl:attribute name="{name(.)}"><xsl:value-of select="."/></xsl:attribute>
                </xsl:for-each>
                <Property Name="INSTRUMENT_ID">
                    <xsl:value-of select="Property[@Name='INSTRUMENT_ID']">
                    </xsl:value-of>
                </Property>
                <Property Name="INSTRUMENT_SHORT_NAME">
                    <xsl:value-of select="Property[@Name='INSTRUMENT_SHORT_NAME']">
                    </xsl:value-of>
                </Property>
				<Property Name="INSTRUMENT_CODE_EXCH">
                    <xsl:value-of select="Property[@Name='INSTRUMENT_CODE_EXCH']">
                    </xsl:value-of>
                </Property>
                <Property Name="INSTRUMENT_FULL_NAME">
                    <xsl:value-of select="Property[@Name='INSTRUMENT_FULL_NAME']">
                    </xsl:value-of>
                </Property>
                <Property Name="INSTRUMENTTYPE_CODE">
                    <xsl:value-of select="Property[@Name='INSTRUMENTTYPE_CODE']">
                    </xsl:value-of>
                </Property>
                <Property Name="EXCHANGE_ODB">
                    <xsl:value-of select="Property[@Name='EXCHANGE_ODB']">
                    </xsl:value-of>
                </Property>
                <Property Name="TRADE_PLACE_SECTION">
                    <xsl:value-of select="Property[@Name='TRADE_PLACE_SECTION']">
                    </xsl:value-of>
                </Property>
                <Property Name="ISSUE_DATE">
                    <xsl:value-of select="Property[@Name='ISSUE_DATE']">
                    </xsl:value-of>
                </Property>
				<Property Name="MATURITY_DATE">
                    <xsl:value-of select="Property[@Name='MATURITY_DATE']">
                    </xsl:value-of>
                </Property>
				<Property Name="BASE_INSTRUMENT">
                    <xsl:value-of select="Property[@Name='BASE_INSTRUMENT']">
                    </xsl:value-of>
                </Property>
				<Property Name="COUNT_BASE_INSTRUMENT">
                    <xsl:value-of select="Property[@Name='COUNT_BASE_INSTRUMENT']">
                    </xsl:value-of>
                </Property>
				<Property Name="PRICE_TYPE">
                    <xsl:choose>
						<xsl:when test="(Property[@Name='PRICE_TYPE']=48)">
							<xsl:value-of select="1"/>
						</xsl:when>
						<xsl:when test="(Property[@Name='PRICE_TYPE']=51)">
							<xsl:value-of select="2"/>
						</xsl:when>
						<xsl:when test="(Property[@Name='PRICE_TYPE']=52)">
							<xsl:value-of select="3"/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="2"/>
						</xsl:otherwise>
					</xsl:choose>
                </Property>
				<Property Name="PRICE">
                    <xsl:value-of select="Property[@Name='PRICE']">
                    </xsl:value-of>
                </Property>
				<Property Name="BASE_INSTRUMENT">
                    <xsl:value-of select="Property[@Name='BASE_INSTRUMENT']">
                    </xsl:value-of>
                </Property>
				<Property Name="CURRENCY">
                    <xsl:value-of select="Property[@Name='CURRENCY']">
                    </xsl:value-of>
                </Property>
				<Property Name="SETTLEMENT_TYPE">
                    <xsl:value-of select="Property[@Name='SETTLEMENT_TYPE']">
                    </xsl:value-of>
                </Property>
				<Property Name="MARGIN_CURRENCY">
                    <xsl:value-of select="Property[@Name='MARGIN_CURRENCY']">
                    </xsl:value-of>
                </Property>
				<Property Name="FIXING_TITLE">
                    <xsl:value-of select="Property[@Name='FIXING_TITLE']">
                    </xsl:value-of>
                </Property>
				<Property Name="FIXING_PERIOD_OFFSET">
                    <xsl:value-of select="Property[@Name='FIXING_PERIOD_OFFSET']">
                    </xsl:value-of>
                </Property>
				<Property Name="CENT">
                    <xsl:value-of select="Property[@Name='CENT']">
                    </xsl:value-of>
                </Property>
				<Property Name="CENT_VALUE">
                    <xsl:value-of select="Property[@Name='CENT_VALUE']">
                    </xsl:value-of>
                </Property>
				<Property Name="PRICE_PRECISION">
                    <xsl:value-of select="Property[@Name='PRICE_PRECISION']">
                    </xsl:value-of>
                </Property>
            </Object>                
        </xsl:if>
         <xsl:if test="@Name='vw_FIXING'">
            <Object Name="vw_FIXING">
                <xsl:for-each select="@*[name(.) != 'Name']">
                    <xsl:attribute name="{name(.)}"><xsl:value-of select="."/></xsl:attribute>
                </xsl:for-each>
                <Property Name="FIXING_PRICE_ID">
                    <xsl:value-of select="Property[@Name='FIXING_PRICE_ID']">
                    </xsl:value-of>
                </Property>
                <Property Name="FIXING_NAME">
                    <xsl:value-of select="Property[@Name='FIXING_SOURCE_ODB']">
                    </xsl:value-of>
                </Property>
                <Property Name="FIXING_DATE">
                    <xsl:value-of select="Property[@Name='FIXING_DATE']">
                    </xsl:value-of>
                </Property>
                <Property Name="LEAD_FIXING_CCY">
                    <xsl:value-of select="Property[@Name='FIXING_CCY_1']">
                    </xsl:value-of>
                </Property>
                <Property Name="QUOTE_FIXING_CCY">
                    <xsl:value-of select="Property[@Name='FIXING_CCY_2']">
                    </xsl:value-of>
                </Property>
                <Property Name="FIXING_PRICE">
                    <xsl:value-of select="Property[@Name='FIXING_PRICE']">
                    </xsl:value-of>
                </Property>
                <Property Name="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>
            </Object>                
        </xsl:if>
        <xsl:if test="@Name='NETTING'">
            <Object Name="NETTING">
                <xsl:for-each select="@*[name(.) !='Name']">
                    <xsl:attribute name="{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each> 
                <xsl:choose>
                    <xsl:when test="(@actnotif='delete')">
                        <Property Name="ID">
                            <xsl:value-of select="Property[@Name='ID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="EVENTID">
                            <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name="EVENTID">
                            <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="ID">
                            <xsl:value-of select="Property[@Name='ID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="VALUEDATE">
                            <xsl:value-of select="Property[@Name='VALUEDATE']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="PRODUCT_CODE_ARRAY">
                            <xsl:value-of select="Property[@Name='PRODUCT_CODE_ARRAY']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="INSTRUMENTTYPE_CODE">
                            <xsl:value-of select="Property[@Name='INSTRUMENTTYPE_CODE']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="INSTRUMENT_SHORTNAME">
                            <xsl:value-of select="Property[@Name='INSTRUMENT_SHORTNAME']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="INSTRUMENT_ISIN">
                            <xsl:value-of select="Property[@Name='INSTRUMENT_ISIN']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="AMOUNT">
                            <xsl:value-of select="Property[@Name='AMOUNT']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="COUNTERPARTY_ID_ODB">
                            <xsl:value-of select="Property[@Name='COUNTERPARTY_ID_ODB']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TICKET_ARRAY">
                            <xsl:value-of select="Property[@Name='TICKET_ARRAY']">
                            </xsl:value-of>
                        </Property>
						<Property Name="CURR_REL_NETT_TICKET_ARRAY">
                            <xsl:value-of select="Property[@Name='CURR_REL_NETT_TICKET_ARRAY']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="NETT_CURRENCY">
                            <xsl:value-of select="Property[@Name='NETT_CURRENCY']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>
            </Object>
        </xsl:if>
        <xsl:if test="@Name='vw_FX'">
            <Object Name="FX">
                <xsl:for-each select="@*[name(.) !='Name']">
                    <xsl:attribute name="{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each> 
                <xsl:choose>
                    <xsl:when test="(@actnotif='delete')">
                        <Property Name="TICKET">
                            <xsl:value-of select="Property[@Name='TICKET']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="EVENTID">
                            <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name="TICKET">
                            <xsl:value-of select="Property[@Name='TICKET']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="EVENTID">
                            <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADEDATE">
                            <xsl:value-of select="Property[@Name='TRADEDATE']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="CUSTID">
                            <xsl:value-of select="Property[@Name='CUSTID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADE_CLASSCODE">
                            <xsl:value-of select="Property[@Name='TRADE_CLASSCODE']">
                            </xsl:value-of>
                        </Property>
                        <xsl:choose>
                            <xsl:when test="starts-with(Property[@Name='TRADE_CLASSCODE'],'SPFI_')">
                                <Property Name="CID">
                                    <xsl:value-of select="Property[@Name='FILIAL_ID_ODB']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="CUSTID_MDM">
                                    <xsl:value-of select="Property[@Name='OWNER_ACNT_ODB']">
                                    </xsl:value-of>
                                </Property>
                                <xsl:choose>
                                    <xsl:when test="(Property[@Name='SWAP']='B')">
                                        <Property Name="SWAP">S</Property>
                                    </xsl:when>
                                    <xsl:when test="(Property[@Name='SWAP']='S')">
                                        <Property Name="SWAP">B</Property>
                                    </xsl:when>
                                    <xsl:when test="(Property[@Name='SWAP']='SB')">
                                        <Property Name="SWAP">BS</Property>
                                    </xsl:when>
                                    <xsl:when test="(Property[@Name='SWAP']='BS')">
                                        <Property Name="SWAP">SB</Property>
                                    </xsl:when>
                                </xsl:choose>
                                <Property Name="BUY">
                                    <xsl:value-of select="Property[@Name='SELL']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="SELL">
                                    <xsl:value-of select="Property[@Name='BUY']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="VALUEBUY">
                                    <xsl:value-of select="Property[@Name='VALUESELL']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="VALUESELL">
                                    <xsl:value-of select="Property[@Name='VALUEBUY']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="CB">
                                    <xsl:value-of select="Property[@Name='CS']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="CS">
                                    <xsl:value-of select="Property[@Name='CB']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="BUYSWAP">
                                    <xsl:value-of select="Property[@Name='SELL_SWAP']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="SELLSWAP">
                                    <xsl:value-of select="Property[@Name='BUY_SWAP']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="VALUEBUY_SWAP">
                                    <xsl:value-of select="Property[@Name='VALUESELL_SWAP']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="VALUESELL_SWAP">
                                    <xsl:value-of select="Property[@Name='VALUEBUY_SWAP']">
                                    </xsl:value-of>
                                </Property>
                            </xsl:when>
                            <xsl:otherwise>
                                <Property Name="CID">
                                    <xsl:value-of select="Property[@Name='CID']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="CUSTID_MDM">
                                    <xsl:value-of select="Property[@Name='CUSTID_MDM']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="SWAP">
                                    <xsl:value-of select="Property[@Name='SWAP']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="BUY">
                                    <xsl:value-of select="Property[@Name='BUY']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="SELL">
                                    <xsl:value-of select="Property[@Name='SELL']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="VALUEBUY">
                                    <xsl:value-of select="Property[@Name='VALUEBUY']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="VALUESELL">
                                    <xsl:value-of select="Property[@Name='VALUESELL']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="CB">
                                    <xsl:value-of select="Property[@Name='CB']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="CS">
                                    <xsl:value-of select="Property[@Name='CS']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="BUYSWAP">
                                    <xsl:value-of select="Property[@Name='BUY_SWAP']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="SELLSWAP">
                                    <xsl:value-of select="Property[@Name='SELL_SWAP']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="VALUEBUY_SWAP">
                                    <xsl:value-of select="Property[@Name='VALUEBUY_SWAP']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="VALUESELL_SWAP">
                                    <xsl:value-of select="Property[@Name='VALUESELL_SWAP']">
                                    </xsl:value-of>
                                </Property>
                            </xsl:otherwise>
                        </xsl:choose>
                        <Property Name="SWAP_ID">
                            <xsl:value-of select="Property[@Name='SWAP_ID']">
                            </xsl:value-of>
                        </Property>
                        <xsl:choose>
                            <xsl:when test="(Property[@Name='SWAP']='SB')">
                                <Property Name="ISSWAPDEAL">
                                    <xsl:value-of select="'True'">
                                    </xsl:value-of>
                                </Property>
                            </xsl:when>
                            <xsl:when test="(Property[@Name='SWAP']='BS')">
                                <Property Name="ISSWAPDEAL">
                                    <xsl:value-of select="'True'">
                                    </xsl:value-of>
                                </Property>
                            </xsl:when>
                            <xsl:otherwise>
                                <Property Name="ISSWAPDEAL">
                                    <xsl:value-of select="'False'">
                                    </xsl:value-of>
                                </Property>
                            </xsl:otherwise>
                        </xsl:choose>
                        <Property Name="LEAD_CCY">
                            <xsl:value-of select="Property[@Name='LEAD_CCY']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="RATE">
                            <xsl:value-of select="Property[@Name='RATE']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="RATE_DIRECTION">
                            <xsl:value-of select="Property[@Name='RATE_DIRECTION']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="RATE_SWAP">
                            <xsl:value-of select="Property[@Name='RATE_SWAP']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="FIXED_CURRENCY_SWAP">
                            <xsl:value-of select="Property[@Name='FIXED_CURRENCY_SWAP']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="GIVEFROM_STR">
                            <xsl:value-of select="Property[@Name='GIVEFROM_STR']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="RECEIVETO_STR">
                            <xsl:value-of select="Property[@Name='RECEIVETO_STR']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="RECEIVETO_SWAP_STR">
                            <xsl:value-of select="Property[@Name='RECEIVETO_SWAP_STR']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="BROKER">
                            <xsl:value-of select="Property[@Name='BROKER_ODB']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADER_STR">
                            <xsl:value-of select="Property[@Name='TRADER_STR']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADER_ODB">
                            <xsl:value-of select="Property[@Name='TRADER_ODB']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="STATUS">
                            <xsl:value-of select="Property[@Name='STATUS']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="R_TICKET">
                            <xsl:value-of select="Property[@Name='R_TICKET']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="MICEXDEAL">
                            <xsl:value-of select="Property[@Name='MICEXDEAL']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="SETTL_SCHEME">
                            <xsl:value-of select="Property[@Name='SETTL_SCHEME']">
                            </xsl:value-of>                         
                        </Property>
                        <Property Name="MICEXCLAIM">
                            <xsl:value-of select="Property[@Name='MICEXCLAIM']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="WORKDAYS">
                            <xsl:value-of select="Property[@Name='WORKDAYS']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="CONVERSATION">
                            <xsl:value-of select="Property[@Name='CONVERSATION']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="AGREEMENT">
                            <xsl:value-of select="Property[@Name='CONTRACT_NUMBER']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TICKET_SWAP">
                            <xsl:value-of select="Property[@Name='TICKET_SWAP']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="EXCHANGE_ODB">
                            <xsl:value-of select="Property[@Name='EXCHANGE_ODB']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="EXCHANGE_ODB">
                            <xsl:value-of select="Property[@Name='EXT_SYSTEM_NAME']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADESECTION_STR">
                            <xsl:if test="not ( (Property[@Name='TRADE_CLASSCODE']='SPFI_OTC') or (Property[@Name='TRADE_CLASSCODE']='SPFI_ARREAR_TRANSFER') or (Property[@Name='TRADE_CLASSCODE']='SPFI_OPTION_EXEC') )">
                                <xsl:value-of select="'OTC'"/>
                            </xsl:if>                            
                        </Property>
                        <Property Name="OTC">
                            <xsl:choose>
                                <xsl:when test="Property[@Name='FX_CLEARING_DEBT']='True'">
                                    <xsl:value-of select="3"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:choose>
                                        <xsl:when test="starts-with(Property[@Name='TRADE_CLASSCODE'],'SPFI_')">
                                            <xsl:choose>
                                                <xsl:when test="(Property[@Name='NDF']='False')">
                                                    <xsl:choose>
                                                        <xsl:when test="(Property[@Name='PRODUCT_CODE']='FX_SWAP')">
                                                            <xsl:value-of select="1"/>
                                                        </xsl:when>
                                                        <xsl:when test="(Property[@Name='PRODUCT_CODE']='FX')">
                                                            <xsl:value-of select="4"/>
                                                        </xsl:when>
                                                        <xsl:otherwise>
                                                            <xsl:value-of select="' '"/>
                                                        </xsl:otherwise>
                                                    </xsl:choose>
                                                </xsl:when>
                                                <xsl:when test="(Property[@Name='NDF']='True')">
                                                    <xsl:value-of select="2"/>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="' '"/>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="' '"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:otherwise>
                            </xsl:choose>
                        </Property>
                        <Property Name="RCOD">
                            <xsl:value-of select="Property[@Name='OWNER_CONTRACT_ODB_ID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="FIXING_DATE">
                            <xsl:value-of select="Property[@Name='FIXING_DATE']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADE_CLASSCODE">
                            <xsl:value-of select="Property[@Name='TRADE_CLASSCODE']">
                            </xsl:value-of>
                        </Property>                                
                        <Property Name="LIMIT_STATUS">
                                <xsl:value-of select="Property[@Name='LIMIT_STATUS']">
                            </xsl:value-of>
                        </Property>                                
                        <Property Name="NDF">
                                <xsl:value-of select="Property[@Name='NDF']">
                            </xsl:value-of>
                        </Property>                                
                        <Property Name="DEALER_ID_ODB">
                            <xsl:value-of select="Property[@Name='DEALER_ID_ODB']">
                            </xsl:value-of>
                        </Property>
                        <Property Name ="LEAD_COUNT"> 
                            <xsl:value-of select="Property[@Name='LEAD_COUNT']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="EXT_SYSTEM_NAME">
                            <xsl:value-of select="Property[@Name='EXT_SYSTEM_NAME']">
                            </xsl:value-of>
                        </Property>
                        <Property Name ="TRD_PL_SECTION_NM">
                            <xsl:value-of select="Property[@Name='TRD_PL_SECTION_NM']">
                            </xsl:value-of>
                        </Property>
                        <Property Name ="TRADETIME">
                            <xsl:value-of select="Property[@Name='TRADETIME']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="DEALCOMISION">
                            <xsl:value-of select="translate(Property[@Name='DEALCOMISION'], '-', '')">
                            </xsl:value-of>
                        </Property>
                        <Property Name="FIXING_SOURCE">
                            <xsl:value-of select="Property[@Name='FIXING_SOURCE']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="ADDINFO">
                            <xsl:value-of select="Property[@Name='ADDINFO']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="NDF_CURRENCY">
                            <xsl:value-of select="Property[@Name='NDF_CURRENCY']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>
            </Object>
        </xsl:if>
        <xsl:if test="@Name='vw_DP'">
            <Object Name="DP">
                <xsl:for-each select="@*[name(.) !='Name']">
                    <xsl:attribute name="{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>
                <xsl:choose>
                    <xsl:when test="(@actnotif='delete')">
                        <Property Name="TICKET">
                            <xsl:value-of select="Property[@Name='TICKET']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="EVENTID">
                            <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name="TICKET">
                            <xsl:value-of select="Property[@Name='TICKET']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="EVENTID">
                            <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADEDATE">
                            <xsl:value-of select="Property[@Name='TRADEDATE']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="VALUEDATE">
                            <xsl:value-of select="Property[@Name='VALUEDATE']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="MATURITY">
                            <xsl:value-of select="Property[@Name='MATURITY']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="CID">
                            <xsl:value-of select="Property[@Name='CID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="CUSTID">
                            <xsl:value-of select="Property[@Name='CUSTID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="CUSTID_MDM">
                            <xsl:value-of select="Property[@Name='CUSTID_MDM']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRAN">
                            <xsl:value-of select="Property[@Name='TRAN']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="AGREEMENT">
                            <xsl:value-of select="Property[@Name='CONTRACT_NUMBER']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="CONVERSATION">
                            <xsl:value-of select="Property[@Name='CONVERSATION']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="CCY">
                            <xsl:value-of select="Property[@Name='CCY']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="INTEREST">
                            <xsl:value-of select="Property[@Name='INTEREST']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="RATE">
                            <xsl:value-of select="Property[@Name='RATE']">
                            </xsl:value-of>
                        </Property>
                        <xsl:choose>
                            <xsl:when test="(Property[@Name='PRODUCT_CODE']='IRS_CIRS')">
                                <xsl:choose>
                                    <xsl:when test="(Property[@Name='CCY_IRS'] !=Property[@Name='CCY'])">
                                        <Property Name="PRODUCT_CODE">
                                            <xsl:value-of select="'CCXY'">
                                            </xsl:value-of>
                                        </Property>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:choose>
                                            <xsl:when test="((Property[@Name='FLOAT_A_MAT_CLASS_ID']=11) or (Property[@Name='FLOAT_A_MAT_CLASS_ID_IRS']=11))">
                                                <Property Name="PRODUCT_CODE">
                                                    <xsl:value-of select="'OIS'">
                                                    </xsl:value-of>
                                                </Property>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <Property Name="PRODUCT_CODE">
                                                    <xsl:value-of select="'IRS'">
                                                    </xsl:value-of>
                                                </Property>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:when>
                            <xsl:otherwise>
                                <Property Name="PRODUCT_CODE">
                                    <xsl:value-of select="Property[@Name='PRODUCT_CODE']">
                                    </xsl:value-of>
                                </Property>
                            </xsl:otherwise>
                        </xsl:choose>
                        <Property Name="AMOUNT">
                            <xsl:value-of select="Property[@Name='AMOUNT']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TICKET_ROL">
                            <xsl:value-of select="Property[@Name='TICKET_ROL']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="INTEREST_TYPE">
                            <xsl:value-of select="Property[@Name='INTEREST_TYPE']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="GIVEFROM_STR">
                            <xsl:value-of select="Property[@Name='GIVEFROM_STR']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="RECEIVETO_STR">
                            <xsl:value-of select="Property[@Name='RECEIVETO_STR']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="RESERV_ACC">
                            <xsl:value-of select="Property[@Name='RESERV_ACC']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="NAR_PRC_ACC">
                            <xsl:value-of select="Property[@Name='NAR_PRC_ACC']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="BROKER">
                            <xsl:value-of select="Property[@Name='BROKER_ODB']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADER_STR">
                            <xsl:value-of select="Property[@Name='TRADER_STR']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADER_ODB">
                            <xsl:value-of select="Property[@Name='TRADER_ODB']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="STATUS">
                            <xsl:value-of select="Property[@Name='STATUS']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="BASE_">
                            <xsl:value-of select="Property[@Name='BASE_']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="R_TICKET">
                            <xsl:choose>
                                <xsl:when test="(Property[@Name='R_TICKET'] !='')">
                                    <xsl:value-of select="Property[@Name='R_TICKET']">
                                    </xsl:value-of>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="Property[@Name='SWAP_ID']">
                                    </xsl:value-of>
                                </xsl:otherwise>
                            </xsl:choose>
                        </Property>
                        <Property Name="PRETERM_CLOSURE">
                            <xsl:value-of select="Property[@Name='PRETERM_CLOSURE']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="REL_ID">
                            <xsl:value-of select="Property[@Name='REL_ID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADETIME">
                            <xsl:value-of select="Property[@Name='TRADETIME']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="DTADDREC">
                            <xsl:value-of select="Property[@Name='DTADDREC']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="OWNER">
                            <xsl:value-of select="Property[@Name='OWNER_ACNT_ODB']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="EXCHANGE_ODB">
                            <xsl:value-of select="Property[@Name='EXT_SYSTEM_NAME']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADESECTION_STR">
                            <xsl:if test="not ( (Property[@Name='TRADE_CLASSCODE']='SPFI_OTC') or (Property[@Name='TRADE_CLASSCODE']='SPFI_ARREAR_TRANSFER') or (Property[@Name='TRADE_CLASSCODE']='SPFI_OPTION_EXEC') )">
                                <xsl:value-of select="'OTC'"/>
                            </xsl:if>                            
                        </Property>
                        <Property Name="ADDINFO">
                            <xsl:value-of select="Property[@Name='ADDINFO']">
                            </xsl:value-of>
                        </Property>
                        <xsl:choose>
                            <xsl:when test="(Property[@Name='TRAN']='P')">
                                <Property Name="PAY_TICKET">
                                    <xsl:value-of select="Property[@Name='TICKET']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="PAY_CCY">
                                    <xsl:value-of select="Property[@Name='CCY']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="PAY_AMOUNT">
                                    <xsl:value-of select="Property[@Name='AMOUNT']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="PAY_TYPE">
                                    <xsl:value-of select="Property[@Name='FF']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="REC_TICKET">
                                    <xsl:value-of select="Property[@Name='TICKET_IRS']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="REC_CCY">
                                    <xsl:value-of select="Property[@Name='CCY_IRS']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="REC_AMOUNT">
                                    <xsl:value-of select="Property[@Name='AMOUNT_IRS']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="REC_TYPE">
                                    <xsl:value-of select="Property[@Name='FF_IRS']">
                                    </xsl:value-of>
                                </Property>
                            </xsl:when>
                            <xsl:otherwise>
                                <Property Name="REC_TICKET">
                                    <xsl:value-of select="Property[@Name='TICKET']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="REC_CCY">
                                    <xsl:value-of select="Property[@Name='CCY']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="REC_AMOUNT">
                                    <xsl:value-of select="Property[@Name='AMOUNT']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="REC_TYPE">
                                    <xsl:value-of select="Property[@Name='FF']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="PAY_TICKET">
                                    <xsl:value-of select="Property[@Name='TICKET_IRS']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="PAY_CCY">
                                    <xsl:value-of select="Property[@Name='CCY_IRS']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="PAY_AMOUNT">
                                    <xsl:value-of select="Property[@Name='AMOUNT_IRS']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="PAY_TYPE">
                                    <xsl:value-of select="Property[@Name='FF_IRS']">
                                    </xsl:value-of>
                                </Property>
                            </xsl:otherwise>
                        </xsl:choose>
                        <Property Name="RATE_IRS">
                            <xsl:value-of select="Property[@Name='RATE _IRS']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="LEAD_CCY">
                            <xsl:value-of select="Property[@Name='LEAD_CCY_IRS']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="RCOD">
                            <xsl:value-of select="Property[@Name='OWNER_CONTRACT_ODB_ID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADE_CLASSCODE">
                            <xsl:value-of select="Property[@Name='TRADE_CLASSCODE']">
                            </xsl:value-of>
                        </Property>                                
                        <Property Name="LIMIT_STATUS">
                            <xsl:value-of select="Property[@Name='LIMIT_STATUS']">
                            </xsl:value-of>
                        </Property>      
                        <Property Name="TRNID">
                            <xsl:value-of select="Property[@Name='TRNID']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name="PARENT_SEC_DEAL">
                            <xsl:value-of select="Property[@Name='PARENT_SEC_DEAL']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name="AMOUNT2PART">
                            <xsl:value-of select="Property[@Name='AMOUNT2PART']">
                            </xsl:value-of>
                        </Property>                                                                                
                        <Property Name="TRADE_NUMBER">
                            <xsl:value-of select="Property[@Name='TRADE_NUMBER']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="DEALER_ID_ODB">
                            <xsl:value-of select="Property[@Name='DEALER_ID_ODB']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="EXT_SYSTEM_NAME">
                                    <xsl:value-of select="Property[@Name='EXT_SYSTEM_NAME']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>
            </Object>
        </xsl:if>
        <xsl:if test="@Name='vw_T_TRANSACTIONS'">
            <Object Name="TRANSACTIONS">
                <xsl:for-each select="@*[name(.) !='Name']">
                    <xsl:attribute name="{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>
                <xsl:choose>
                    <xsl:when test="(@actnotif='delete')">
                        <Property Name="TICKET">
                            <xsl:value-of select="Property[@Name='TICKET']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="EVENTID">
                            <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="ID">
                            <xsl:value-of select="Property[@Name='ID']"> 
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name="TICKET">
                            <xsl:value-of select="Property[@Name='ID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="ID">
                            <xsl:value-of select="Property[@Name='ID']"> 
                            </xsl:value-of>
                        </Property>
                        <Property Name="EVENTID">
                            <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="DEAL_ID">
                            <xsl:variable name="lenAdd" select="string-length(Property[@Name='ARREAR_PAYMENT_TICKET'])"/>
                            <xsl:choose>
                                <xsl:when test="($lenAdd &gt; 0)">
                                    <xsl:value-of select="Property[@Name='ARREAR_PAYMENT_TICKET']">
                                    </xsl:value-of>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="Property[@Name='TICKET']">
                                    </xsl:value-of>
                                </xsl:otherwise>
                            </xsl:choose>
                        </Property>
                        <Property Name="TRN_TYPE">
                            <xsl:value-of select="Property[@Name='TRNID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="OPERDAYID">
                            <xsl:value-of select="Property[@Name='OPERDAYID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="VALUEDATE">
                            <xsl:value-of select="Property[@Name='VALUEDATE']"> 
                            </xsl:value-of>
                        </Property>
                        <Property Name="S_DATE">
                            <xsl:value-of select="Property[@Name='VALUEDATE']"> 
                            </xsl:value-of>
                        </Property>
                        <xsl:variable name="vIs_IRS">
                            <xsl:choose>
                                <xsl:when test="((Property[@Name='PRODUCT_CODE']='IRS_CIRS') or (Property[@Name='PRODUCT_CODE']='FX_SWAP') or (Property[@Name='PRODUCT_CODE']='FX') or (Property[@Name='PRODUCT_CODE']='OPTION') or (Property[@Name='TRNID']='SCIRS'))">
                                    <xsl:value-of select="1"/>
                                </xsl:when>                 
                                <xsl:when test="((Property[@Name='PRODUCT_CODE']='SEC_REPO'))">
                                    <xsl:value-of select="1"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:variable name="lenAdd2" select="string-length(Property[@Name='ARREAR_PAYMENT_TICKET'])"/>
                                    <xsl:variable name="lenAdd3" select="string-length(Property[@Name='OWNER_CONTRACT_ODB_ID'])"/>
                                    <xsl:choose>
                                        <xsl:when test="($lenAdd2 &gt; 0) or ($lenAdd3 &gt; 0)">
                                            <xsl:value-of select="1"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="0"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:variable>
                        <Property Name="AMOUNT">
                            <xsl:variable name="var1" select="Property[@Name='AMOUNT']"/>
                            <xsl:choose>
                                <xsl:when test="($vIs_IRS=1)">
                                    <xsl:value-of select="$var1"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:variable name="var2">
                                        <xsl:choose>
                                            <xsl:when test="($var1 &gt; 0)">
                                                <xsl:value-of select="$var1"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="-$var1"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:variable>
                                    <xsl:value-of select="$var2"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </Property>
                        <Property Name="TR_VID">
                            <xsl:variable name="lenDTF" select="string-length(Property[@Name='VALUEDATE_FACT'])"/>
                            <xsl:variable name="lenAddAttr" select="string-length(Property[@Name='ARREAR_PAYMENT'])"/>
                            <xsl:variable name="Status" select="Property[@Name='STATUS']"/>
                            <xsl:choose>
                                <xsl:when test="($Status &lt; 2)">
                                    <xsl:value-of select="3"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:choose>
                                        <xsl:when test="($lenAddAttr &gt; 0)">
                                            <xsl:value-of select="2"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:choose>
                                                <xsl:when test="($lenDTF=0)">
                                                    <xsl:value-of select="1"/>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="0"/>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:otherwise>
                            </xsl:choose>
                        </Property>
                        <Property Name="IS_IRS">
                            <xsl:value-of select="$vIs_IRS"/>
                        </Property>
                        <Property Name="TRNID">
                            <xsl:choose>
                                <xsl:when test="($vIs_IRS=1)">
                                    <xsl:variable name="lenAddAttr2" select="string-length(Property[@Name='ARREAR_PAYMENT'])"/>
                                    <xsl:variable name="ValueTRNID">
                                        <xsl:choose>
                                            <xsl:when test="($lenAddAttr2=0)">
                                                <xsl:value-of select="Property[@Name='TRNID']"/>
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="Property[@Name='ARREAR_PAYMENT']"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:variable>
                                    <xsl:variable name="rslt">
                                        <xsl:choose>
                                            <xsl:when test="($ValueTRNID='SCBNS')">
                                                <xsl:value-of select="1"/>
                                            </xsl:when>
                                            <xsl:when test="($ValueTRNID='SCFVM')">
                                                <xsl:value-of select="2"/>
                                            </xsl:when>
                                            <xsl:when test="(($ValueTRNID='DT03') or ($ValueTRNID='DP03'))">
                                                <xsl:value-of select="3"/>
                                            </xsl:when>
                                            <xsl:when test="(($ValueTRNID='SCMC2') or ($ValueTRNID='SCMOD'))">
                                                <xsl:value-of select="4"/>
                                            </xsl:when>
                                            <xsl:when test="($ValueTRNID='SCMC1')">
                                                <xsl:value-of select="5"/>
                                            </xsl:when>
                                            <xsl:when test="($ValueTRNID='SCMC3')">
                                                <xsl:value-of select="6"/>
                                            </xsl:when>
                                            <xsl:when test="(($ValueTRNID='DT01') or ($ValueTRNID='DP02') or ($ValueTRNID='DP01') or ($ValueTRNID='DT02') or ($ValueTRNID='FX01') or ($ValueTRNID='FX02') )">
                                                <xsl:value-of select="7"/>
                                            </xsl:when>
                                            <xsl:when test="($ValueTRNID='SCCVM')">
                                                <xsl:value-of select="8"/>
                                            </xsl:when>
                                            <xsl:when test="($ValueTRNID='PNLSC')">
                                                <xsl:value-of select="9"/>
                                            </xsl:when>
                                            <xsl:when test="($ValueTRNID='SCIRS')">
                                                <xsl:value-of select="13"/>
                                            </xsl:when>
                                            <xsl:when test="($ValueTRNID='NDF0')">
                                                <xsl:value-of select="14"/>
                                            </xsl:when>
                                            <xsl:when test="($ValueTRNID='SCFDM')">
                                                <xsl:value-of select="15"/>
                                            </xsl:when>
                                            <xsl:when test="($ValueTRNID='SCIDM')">
                                                <xsl:value-of select="16"/>
                                            </xsl:when>
                                            <xsl:when test="($ValueTRNID='SCPRM')">
                                                <xsl:value-of select="17"/>
                                            </xsl:when>
                                            <xsl:when test="($ValueTRNID='PNLTY')">
                                                <xsl:value-of select="18"/>
                                            </xsl:when>
											<xsl:when test="(contains($ValueTRNID, 'SCMGC'))">
												<xsl:value-of select="'SCMGC'"/>
											</xsl:when>
											<xsl:when test="(contains($ValueTRNID, 'SCMGA'))">
												<xsl:value-of select="'SCCMP'"/>
											</xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="0"/>
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:variable>
                                    <xsl:value-of select="$rslt"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:choose>
                                        <xsl:when test="((Property[@Name='TRNID']='DP02') or (Property[@Name='TRNID']='DT02'))">
                                            <xsl:value-of select="1"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="0"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:otherwise>
                            </xsl:choose>
                        </Property>
                        <Property Name="CCY">
                            <xsl:value-of select="Property[@Name='CCY']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="DEAL_TICKET">
                            <xsl:value-of select="Property[@Name='TICKET']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="RCOD">
                            <xsl:value-of select="Property[@Name='OWNER_CONTRACT_ODB_ID']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="CUSTID_ODB">
                            <xsl:value-of select="Property[@Name='OWNER_ACNT_ODB']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="DATEREG_For_test_env_only_">
                            <xsl:value-of select="Property[@Name='TRADEDATE']"> 
                            </xsl:value-of>
                        </Property>
                        <Property Name="TRADEDATE">
                            <xsl:value-of select="Property[@Name='TRADEDATE']">
                            </xsl:value-of>
                        </Property>
                        <Property Name="AMOUNT2PART">
                            <xsl:value-of select="Property[@Name='AMOUNT2PART']"> 
                            </xsl:value-of>
                        </Property>
                        <Property Name="INSTRUMENT_ISIN">
                            <xsl:value-of select="Property[@Name='INSTRUMENT_ISIN']"> 
                            </xsl:value-of>
                        </Property>
                        <Property Name="AMOUNT2">
                            <xsl:choose>
                                <xsl:when test="(Property[@Name='TRNID']='SCFDM')">
                                    <xsl:value-of select="Property[@Name='PAYMENT_VARMRG_NPV']"/>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="''"/>
                                </xsl:otherwise>
                            </xsl:choose>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>
            </Object>
        </xsl:if>
        <xsl:if test="@Name='vw_SEC_DEAL'">
            <xsl:variable name="obj_type" select="Property[@Name='ACTIONTYPE_CODE']"/>
            <xsl:choose>
                <xsl:when test="(contains($obj_type, 'OPTBUY')) or (contains($obj_type, 'OPTSELL'))">
                    <Object Name="OPTION">
                        <xsl:for-each select="@*[name(.) !='Name']">
                            <xsl:attribute name="{name(.)}">
                                <xsl:value-of select="."/>
                            </xsl:attribute>
                        </xsl:for-each>
                        <xsl:choose>
                            <xsl:when test="(@actnotif='delete')">
                                <Property Name="TICKET">
                                    <xsl:value-of select="Property[@Name='TICKET']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="EVENTID">
                                    <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                                </Property>
                            </xsl:when>
                            <xsl:otherwise>
                                <Property Name="TICKET">
                                    <xsl:value-of select="Property[@Name='TICKET']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="EVENTID">
                                    <xsl:value-of select="Property[@Name='EVENTID']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="DEAL_DATE">
                                    <xsl:value-of select="Property[@Name='DEAL_DATE']">
                                    </xsl:value-of>
                                </Property>
                                <xsl:choose>
                                    <xsl:when test="starts-with(Property[@Name='TRADE_CLASSCODE'],'SPFI_')">
                                        <Property Name="COUNTERPARTY_ID">
                                            <xsl:value-of select="Property[@Name='COUNTERPARTY_ID']">
                                    </xsl:value-of>
                                        </Property>
                                        <Property Name="COUNTERPARTY_ID_STR">
                                            <xsl:value-of select="Property[@Name='OWNER_ACNT_STR']">
                                    </xsl:value-of>
                                        </Property>
                                        <Property Name="COUNTERPARTY_ODB">
                                            <xsl:value-of select="Property[@Name='OWNER_ACNT_ODB']">
                                    </xsl:value-of>
                                        </Property>
                                        <Property Name="DEAL_TYPE">
                                            <xsl:variable name="Deal_TP" select="Property[@Name='ACTIONTYPE_CODE']"/>
                                            <xsl:choose>
                                                <xsl:when test="(contains($Deal_TP, 'BUY'))">
                                                    <xsl:value-of select="'OPTSELL'"/>
                                                </xsl:when>
                                                <xsl:when test="(contains($Deal_TP, 'SELL'))">
                                                    <xsl:value-of select="'OPTBUY'"/>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="0"/>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </Property>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <Property Name="COUNTERPARTY_ID">
                                            <xsl:value-of select="Property[@Name='COUNTERPARTY_ID']">
                                    </xsl:value-of>
                                        </Property>
                                        <Property Name="COUNTERPARTY_ID_STR">
                                            <xsl:value-of select="Property[@Name='COUNTERPARTY_ID_STR']">
                                    </xsl:value-of>
                                        </Property>
                                        <Property Name="COUNTERPARTY_ODB">
                                            <xsl:value-of select="Property[@Name='COUNTERPARTY_ODB']">
                                    </xsl:value-of>
                                        </Property>
                                        <Property Name="DEAL_TYPE">
                                            <xsl:variable name="Deal_TP" select="Property[@Name='ACTIONTYPE_CODE']"/>
                                            <xsl:choose>
                                                <xsl:when test="(contains($Deal_TP, 'BUY'))">
                                                    <xsl:value-of select="'OPTBUY'"/>
                                                </xsl:when>
                                                <xsl:when test="(contains($Deal_TP, 'SELL'))">
                                                    <xsl:value-of select="'OPTSELL'"/>
                                                </xsl:when>
                                                <xsl:otherwise>
                                                    <xsl:value-of select="0"/>
                                                </xsl:otherwise>
                                            </xsl:choose>
                                        </Property>
                                    </xsl:otherwise>
                                </xsl:choose>
                                <Property Name="OPTION_STYLE">
                                    <xsl:value-of select="Property[@Name='OPTION_STYLE']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="OPTION_STRIKE">
                                    <xsl:value-of select="Property[@Name='OPTION_STRIKE']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="OPTION_NOTIONAL_AMOUNT">
                                    <xsl:value-of select="Property[@Name='AMOUNT1']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="OPTION_TYPE">
                                    <xsl:value-of select="Property[@Name='OPTION_TYPE']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="COUPON_AMOUNT">
                                    <xsl:value-of select="Property[@Name='COUPON_AMOUNT']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="PAYCURRENCY">
                                    <xsl:value-of select="Property[@Name='PAYCURRENCY']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="COUPON_DATE">
                                    <xsl:value-of select="Property[@Name='COUPON_DATE']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="OPTION_EXPIRY">
                                    <xsl:value-of select="Property[@Name='OPTION_EXPIRY']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="PAYMENT_DATE">
                                    <xsl:value-of select="Property[@Name='PAYMENT_DATE']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="SETTLEMENT_TYPE">
                                    <xsl:value-of select="Property[@Name='SETTLEMENT_TYPE']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="PRICECURRENCY">
                                    <xsl:value-of select="Property[@Name='OPTION_UNDERLYING_CODE']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="OPTION_PRICE_CCY_SHORTNAME">
                                    <xsl:value-of select="Property[@Name='OPTION_PRICE_CCY_SHORTNAME']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="RCOD">
                                    <xsl:value-of select="Property[@Name='OWNER_CONTRACT_ODB_ID']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="EXCHANGE_ODB">
                                    <xsl:value-of select="Property[@Name='EXCHANGE_ODB']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="TRADESECTION_STR">
                                    <xsl:if test="not ( (Property[@Name='TRADE_CLASSCODE']='SPFI_OTC') or (Property[@Name='TRADE_CLASSCODE']='SPFI_ARREAR_TRANSFER') or (Property[@Name='TRADE_CLASSCODE']='SPFI_OPTION_EXEC') )">
                                        <xsl:value-of select="'OTC'"/>
                                    </xsl:if>                            
                                </Property>
                                <Property Name="INSTRUMENT_CODE">
                                    <xsl:value-of select="Property[@Name='OPTION_UNDERLYING_CODE']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="OPTION_UNDERLYING_TYPE">
                                    <xsl:variable name="ValOpt_TP" select="Property[@Name='OPTION_UNDERLYING_TYPE']"/>
                                    <xsl:choose>
                                        <xsl:when test="(($ValOpt_TP='CASH') or ($ValOpt_TP='PREC'))">
                                            <xsl:value-of select="1"/>
                                        </xsl:when>
                                        <xsl:when test="($ValOpt_TP='INDX')">
                                            <xsl:value-of select="2"/>
                                        </xsl:when>
                                        <xsl:when test="($ValOpt_TP='FUTU')">
                                            <xsl:value-of select="3"/>
                                        </xsl:when>
                                        <xsl:when test="(($ValOpt_TP='BOND') or ($ValOpt_TP='SHAR') or ($ValOpt_TP='AGDR') or ($ValOpt_TP='PNOT') or ($ValOpt_TP='OFBU'))">
                                            <xsl:value-of select="4"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="0">
                                    </xsl:value-of>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </Property>
                                <Property Name="EXERCISED"> 
                                    <xsl:variable name="ValOptSts" select="Property[@Name='OPTION_STATUS']"/>
                                    <xsl:choose>
                                        <xsl:when test="($ValOptSts='2')">
                                            <xsl:value-of select="1"/>
                                        </xsl:when>
                                        <xsl:when test="($ValOptSts='3')">
                                            <xsl:value-of select="0"/>
                                        </xsl:when>
                                    </xsl:choose>
                                </Property> 
                                <Property Name="REPODISCOUNTLOW">
                                    <xsl:value-of select="Property[@Name='REPODISCOUNTLOW']">
                                    </xsl:value-of>
                                </Property>                                                        
                                <Property Name="REPODISCOUNTHIGHT">
                                    <xsl:value-of select="Property[@Name='REPODISCOUNTHIGHT']">
                                    </xsl:value-of>
                                </Property>                                                        
                                <Property Name="PRICEREPAYMENT">
                                    <xsl:value-of select="Property[@Name='PRICEREPAYMENT']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="DEALCOMISION">
                                    <xsl:value-of select="translate(Property[@Name='DEALCOMISION'], '-', '')">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="CLIRINGCOMISION">
                                    <xsl:value-of select="translate(Property[@Name='CLIRINGCOMISION'], '-', '')">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="REFERENCE_CODE">
                                    <xsl:value-of select="Property[@Name='REFERENCE_CODE']">
                                    </xsl:value-of>
                                </Property>
                            </xsl:otherwise>
                        </xsl:choose>
                    </Object>
                </xsl:when>
				<xsl:when test="(contains($obj_type, 'FTBUY')) or (contains($obj_type, 'FTSELL'))">
                    <Object Name="FUTURES">
                        <xsl:for-each select="@*[name(.) !='Name']">
                            <xsl:attribute name="{name(.)}">
                                <xsl:value-of select="."/>
                            </xsl:attribute>
                        </xsl:for-each>
                        <xsl:choose>
                            <xsl:when test="(@actnotif='delete')">
                                <Property Name="TICKET">
                                    <xsl:value-of select="Property[@Name='TICKET']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="EVENTID">
                                    <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                                </Property>
                            </xsl:when>
                            <xsl:otherwise>
                                <Property Name="EVENTID">
                                    <xsl:value-of select="Property[@Name='EVENTID']">
                                </xsl:value-of>
                                </Property>
                                <Property Name="TICKET">
                                    <xsl:value-of select="Property[@Name='TICKET']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="EXCH_DEALNUM">
                                    <xsl:value-of select="Property[@Name='EXCH_DEALNUM']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="DEAL_TIME">
                                    <xsl:value-of select="Property[@Name='DEAL_TIME']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="DEAL_DATE">
                                    <xsl:value-of select="Property[@Name='DEAL_DATE']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="ACTIONTYPE_CODE">
                                    <xsl:variable name="Deal_TP" select="Property[@Name='ACTIONTYPE_CODE']"/>
                                        <xsl:choose>
                                            <xsl:when test="(contains($Deal_TP, 'FTBUY'))">
                                                <xsl:value-of select="'BUY'"/>
                                                </xsl:when>
                                            <xsl:when test="(contains($Deal_TP, 'FTSELL'))">
                                                <xsl:value-of select="'SELL'"/>
                                            </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="0"/>
                                        </xsl:otherwise>
                                        </xsl:choose>
                                </Property>
								<Property Name="DEALER_ID_ODB">
                                    <xsl:value-of select="Property[@Name='DEALER_ID_ODB']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="COUNTERPARTY_ODB">
                                    <xsl:value-of select="Property[@Name='COUNTERPARTY_ODB']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="BROKER_ODB">
                                    <xsl:value-of select="Property[@Name='BROKER_ODB']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="INSTRUMENT_ID">
                                    <xsl:value-of select="Property[@Name='INSTRUMENT_ID']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="INSTRUMENT_CODE_EXCH">
                                    <xsl:value-of select="Property[@Name='INSTRUMENT_CODE_EXCH']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="PRICE">
                                    <xsl:value-of select="Property[@Name='PRICE']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="AMOUNT1">
                                    <xsl:value-of select="Property[@Name='AMOUNT1']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="LIMIT_STATUS">
                                    <xsl:value-of select="Property[@Name='LIMIT_STATUS']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="DEALCOMISION">
                                    <xsl:value-of select="Property[@Name='DEALCOMISION']">
                                    </xsl:value-of>
                                </Property>
								<Property Name="BROKERAGE_AMOUNT">
                                    <xsl:value-of select="Property[@Name='BROKERAGE_AMOUNT']">
                                    </xsl:value-of>
                                </Property>
                            </xsl:otherwise>
                        </xsl:choose>
                    </Object>
                </xsl:when>
                <xsl:otherwise>    
                    <Object Name="SEC_DEAL">
                        <xsl:for-each select="@*[name(.) !='Name']">
                            <xsl:attribute name="{name(.)}"><xsl:value-of select="."/></xsl:attribute>
                        </xsl:for-each>
                        <xsl:choose>
                            <xsl:when test="(@actnotif='delete')">
                                <Property Name="TICKET">
                                    <xsl:value-of select="Property[@Name='TICKET']"/>
                                </Property>
                                <Property Name="EVENTID">
                                    <xsl:value-of select="Property[@Name='EVENTID']"/>
                                </Property>
                            </xsl:when>
                            <xsl:otherwise>
                                <Property Name="TICKET">
                                    <xsl:value-of select="Property[@Name='TICKET']"/>
                                </Property>
                                <Property Name="EVENTID">
                                    <xsl:value-of select="Property[@Name='EVENTID']"/>
                                </Property>
                                <Property Name="DEAL_DATE">
                                    <xsl:value-of select="Property[@Name='DEAL_DATE']"/>
                                </Property>
                                <Property Name="COUNTERPARTY_ID">
                                    <xsl:value-of select="Property[@Name='COUNTERPARTY_ID']"/>
                                </Property>
                                <Property Name="COUNTERPARTY_ID_STR">
                                    <xsl:value-of select="Property[@Name='COUNTERPARTY_ID_STR']"/>
                                </Property>
                                <Property Name="COUNTERPARTY_ODB">
                                    <xsl:value-of select="Property[@Name='COUNTERPARTY_ODB']"/>
                                </Property>
                                <Property Name="INSTRUMENT_CODE">
                                    <xsl:value-of select="Property[@Name='INSTRUMENT_CODE']"/>
                                </Property>
                                <Property Name="ACTIONTYPE_CODE">
                                    <xsl:value-of select="Property[@Name='ACTIONTYPE_CODE']"/>
                                </Property>
                                <Property Name="PORTFOLIO_ID">
                                    <xsl:value-of select="Property[@Name='PORTFOLIO_ID']"/>
                                </Property>
                                <Property Name="REPOBASE">
                                    <xsl:value-of select="Property[@Name='REPOBASE']"/>
                                </Property>
                                <Property Name="SETTL_SCHEME">
                                    <xsl:value-of select="Property[@Name='SETTL_SCHEME']"/>
                                </Property>
                                <Property Name="SETTL_SCHEME_REPO">
                                    <xsl:value-of select="Property[@Name='SETTL_SCHEME']"/>
                                </Property>
                                <Property Name="PAYMENT_DATE">
                                    <xsl:value-of select="Property[@Name='PAYMENT_DATE']"/>
                                </Property>
                                <Property Name="SETTLEMENT_DATE">
                                    <xsl:value-of select="Property[@Name='SETTLEMENT_DATE']"/>
                                </Property>
                                <Property Name="INSTRUMENT_ISIN">
                                    <xsl:value-of select="Property[@Name='INSTRUMENT_ISIN']"/>
                                </Property>
                                <Property Name="AMOUNT1">
                                    <xsl:value-of select="Property[@Name='AMOUNT1']"/>
                                </Property>
                                <Property Name="PRICE">
                                    <xsl:value-of select="Property[@Name='PRICE']"/>
                                </Property>
                                <Property Name="CLEAN_AMOUNT">
                                    <xsl:value-of select="Property[@Name='CLEAN_AMOUNT']"/>
                                </Property>
                                <Property Name="COUPON_AMOUNT">
                                    <xsl:value-of select="Property[@Name='COUPON_AMOUNT']"/>
                                </Property>
                                <Property Name="PAYCURRENCY">
                                    <xsl:value-of select="Property[@Name='PAYCURRENCY']"/>
                                </Property>
                                <Property Name="CROSSRATE_DEAL_PAY">
                                    <xsl:value-of select="Property[@Name='CROSSRATE_DEAL_PAY']"/>
                                </Property>
                                <Property Name="REPORATE">
                                    <xsl:value-of select="Property[@Name='REPORATE']"/>
                                </Property>
                                <Property Name="REPODISCOUNT">
                                    <xsl:value-of select="Property[@Name='REPODISCOUNT']"/>
                                </Property>
                                <Property Name="REPOREVALLEVEL">
                                    <xsl:value-of select="Property[@Name='REPOREVALLEVEL']"/>
                                </Property>
                                <Property Name="REPAYMENTDATE">
                                    <xsl:value-of select="Property[@Name='REPAYMENTDATE']"/>
                                </Property>
                                <Property Name="REPAYSETTLEMENTDATE">
                                    <xsl:value-of select="Property[@Name='REPAYSETTLEMENTDATE']"/>
                                </Property>
                                <Property Name="CLEANAMOUNTREPAYMENT">
                                    <xsl:value-of select="Property[@Name='CLEANAMOUNTREPAYMENT']"/>
                                </Property>
                                <Property Name="COUPONAMOUNTREPAYMENT">
                                    <xsl:value-of select="Property[@Name='COUPONAMOUNTREPAYMENT']"/>
                                </Property>
                                <Property Name="CROSSRATE">
                                    <xsl:value-of select="Property[@Name='CROSSRATE']"/>
                                </Property>                 
                                <Property Name="TRADE_CLASSCODE">
                                    <xsl:value-of select="Property[@Name='TRADE_CLASSCODE']">
                                    </xsl:value-of>
                                </Property>                    
                                <Property Name="TRI_PARTY_REPO">
                                    <xsl:value-of select="Property[@Name='TRI_PARTY_REPO']">
                                    </xsl:value-of>
                                </Property>                                
                                <Property Name="LIMIT_STATUS">
                                    <xsl:value-of select="Property[@Name='LIMIT_STATUS']">
                                    </xsl:value-of>
                                </Property>                                
                                <Property Name="DEAL_DEPO_MC_TYPE">
                                    <xsl:value-of select="Property[@Name='DEAL_DEPO_MC_TYPE']">
                                    </xsl:value-of>
                                </Property>                                                        
                                <Property Name="DEAL_REPO_MC_CALC_INTEREST">
                                    <xsl:value-of select="Property[@Name='DEAL_REPO_MC_CALC_INTEREST']">
                                    </xsl:value-of>
                                </Property>                                                        
                                <Property Name="MARKET_PRICE">
                                    <xsl:value-of select="Property[@Name='MARKET_PRICE']">
                                    </xsl:value-of>
                                </Property>                                                        
                                <Property Name="BROKER_ODB">
                                    <xsl:value-of select="Property[@Name='BROKER_ODB']">
                                    </xsl:value-of>
                                </Property>                                                        
                                <Property Name="BSK_NEAR_LEG_FULL_AMOUNT">
                                    <xsl:value-of select="Property[@Name='BSK_NEAR_LEG_FULL_AMOUNT']">
                                    </xsl:value-of>
                                </Property>                                                        
                                <Property Name="FULL_AMOUNTREPAYMENT">
                                    <xsl:value-of select="Property[@Name='FULL_AMOUNTREPAYMENT']">
                                    </xsl:value-of>
                                </Property>                                                        
                                <Property Name="DEAL_DEPO_MC_INTEREST_RATE">
                                    <xsl:value-of select="Property[@Name='DEAL_DEPO_MC_INTEREST_RATE']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="FULL_AMOUNT">
                                    <xsl:value-of select="Property[@Name='FULL_AMOUNT']">
                                    </xsl:value-of>
                                </Property>                                                     
                                <Property Name="FULL_AMOUNT2">
                                    <xsl:value-of select="Property[@Name='FULL_AMOUNT2']">
                                    </xsl:value-of>
                                </Property>                                                     
                                <Property Name="NDS_TRADEREF">
                                    <xsl:value-of select="Property[@Name='NDS_TRADEREF']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="MATURITY">
                                    <xsl:value-of select="Property[@Name='MATURITY']">
                                    </xsl:value-of>
                                </Property>                             
                                <Property Name="REPODISCOUNTLOW">
                                    <xsl:value-of select="Property[@Name='REPODISCOUNTLOW']">
                                    </xsl:value-of>
                                </Property>                                                        
                                <Property Name="REPODISCOUNTHIGHT">
                                    <xsl:value-of select="Property[@Name='REPODISCOUNTHIGHT']">
                                    </xsl:value-of>
                                </Property>                                                        
                                <Property Name="EXT_SYSTEM_NAME">
                                    <xsl:value-of select="Property[@Name='EXT_SYSTEM_NAME']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="SECOND_CLEAR_PRICE">
                                    <xsl:value-of select="Property[@Name='SECOND_CLEAR_PRICE']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="SECOND_FULL_PRICE">
                                    <xsl:value-of select="Property[@Name='SECOND_FULL_PRICE']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="PRICEREPAYMENT">
                                    <xsl:value-of select="Property[@Name='PRICEREPAYMENT']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="DEALER_ID_ODB">
                                    <xsl:value-of select="Property[@Name='DEALER_ID_ODB']">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="DEALCOMISION">
                                    <xsl:value-of select="translate(Property[@Name='DEALCOMISION'], '-', '')">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="CLIRINGCOMISION">
                                    <xsl:value-of select="translate(Property[@Name='CLIRINGCOMISION'], '-', '')">
                                    </xsl:value-of>
                                </Property>
                                <Property Name="REFERENCE_CODE">
                                    <xsl:value-of select="Property[@Name='REFERENCE_CODE']">
                                    </xsl:value-of>
                                </Property>
                            </xsl:otherwise>
                        </xsl:choose>
                    </Object>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:if>
    </xsl:template>
    <xsl:template match="/|node()" priority="0">
        <xsl:copy>
            <xsl:apply-templates/>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
