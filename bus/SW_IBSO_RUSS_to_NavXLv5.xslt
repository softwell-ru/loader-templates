<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="windows-1251"/>
    <xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
        <xsl:if test="@Name = 'CLIENT'">
            <Object Name="CUSTOMER">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>
    
                <Property Name ="CUSTID"> 
                    <xsl:value-of select="Property[@Name='CUSTID']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="CUSTNAME"> 
                    <xsl:value-of select="Property[@Name='CUSTNAME']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="SHTNAME"> 
                    <xsl:value-of select="Property[@Name='SHTNAME']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="ENGLISH1"> 
                    <xsl:value-of select="Property[@Name='ENGLISH1']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="NETTING"> 
                    <xsl:value-of select="Property[@Name='NETTING']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BICDOM"> 
                    <xsl:value-of select="Property[@Name='BICDOM']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BICINT"> 
                    <xsl:value-of select="Property[@Name='BICINT']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="INN"> 
                    <xsl:value-of select="Property[@Name='INN']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="ACCOUNT"> 
                    <xsl:value-of select="Property[@Name='ACCOUNT']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="TELEX"> 
                    <xsl:value-of select="Property[@Name='TELEX']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="OKPO"> 
                    <xsl:value-of select="Property[@Name='OKPO']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="PRC_KONV"> 
                    <xsl:value-of select="Property[@Name='PRC_KONV']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="CONFIRM_TYPE"> 
                    <xsl:value-of select="Property[@Name='CONFIRM_TYPE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="CHECKLIMIT"> 
                    <xsl:value-of select="Property[@Name='CHECKLIMIT']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="EMAIL"> 
                    <xsl:value-of select="Property[@Name='EMAIL']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="TELEX_FULL"> 
                    <xsl:value-of select="Property[@Name='TELEX_FULL']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="OPERDAY_ID1"> 
                    <xsl:value-of select="Property[@Name='OPERDAY_ID1']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="OPERDAY_ID2"> 
                    <xsl:value-of select="Property[@Name='OPERDAY_ID2']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="NAGREEMENT"> 
                    <xsl:value-of select="Property[@Name='NAGREEMENT']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="CB_TYPE"> 
                    <xsl:value-of select="Property[@Name='CB_TYPE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="AGREEMENT_TYPE"> 
                    <xsl:value-of select="Property[@Name='AGREEMENT_TYPE']">
                    </xsl:value-of>
                </Property> 
     
                <Property Name ="PRC_NEREZ_T"> 
                    <xsl:value-of select="Property[@Name='PRC_NEREZ_T']">
                    </xsl:value-of>
                </Property> 
     
                <Property Name ="PRC_NEREZ_P"> 
                    <xsl:value-of select="Property[@Name='PRC_NEREZ_P']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="FIXED_CODE"> 
                    <xsl:value-of select="Property[@Name='FIXED_CODE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="KPP"> 
                    <xsl:value-of select="Property[@Name='KPP']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="SEC_ROLES"> 
                    <xsl:value-of select="Property[@Name='SEC_ROLES']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="POSSIBLE_MBK"> 
                    <xsl:value-of select="Property[@Name='POSSIBLE_MBK']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="EVENTID"> 
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="NCLASS"> 
                    <xsl:value-of select="110">
                    </xsl:value-of>
                </Property> 

                <Property Name ="REGN"> 
                    <xsl:value-of select="Property[@Name='REGNUM']">
                    </xsl:value-of>
                </Property> 
<!-- add customer state analyse -->
                <Property Name ="STATE"> 
                    <xsl:value-of select="Property[@Name='STATE']">
                    </xsl:value-of>
                </Property> 				
 <!-- add customer state analyse/ -->
            </Object>
        </xsl:if>
                                              
        <xsl:if test="@Name = 'FINTOOL'">
            <Object Name="INSTRUMENT">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>
    
                <Property Name ="EVENTID"> 
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="NCLASS"> 
                    <xsl:value-of select="111">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="INSTRUMENT_SHORT_NAME"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_SHORT_NAME']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="OPERDAY_ID1"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_CODE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="INSTRUMENTTYPE_CODE"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENTTYPE_CODE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="INSTRUMENT_FULL_NAME"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_FULL_NAME']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="ISSUE_DATE"> 
                    <xsl:value-of select="Property[@Name='ISSUE_DATE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="MATURITY_DATE"> 
                    <xsl:value-of select="Property[@Name='MATURITY_DATE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="NOMINAL"> 
                    <xsl:value-of select="Property[@Name='NOMINAL']">
                    </xsl:value-of>
                </Property> 
    
                <xsl:choose>
                    <xsl:when test="(Property[@Name='CURRENCY'] = 'RUR')">
                        <Property Name ="CURRENCY"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CURRENCY"> 
                            <xsl:value-of select="Property[@Name='CURRENCY']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>
    
                <Property Name ="STATE"> 
                    <xsl:value-of select="Property[@Name='STATE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="DAY_COUNT_CONVENTION"> 
                    <xsl:value-of select="Property[@Name='DAY_COUNT_CONVENTION']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="SETTLEMENT_DAY"> 
                    <xsl:value-of select="Property[@Name='SETTLEMENT_DAY']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="RIC"> 
                    <xsl:value-of select="Property[@Name='RIC']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="LOT"> 
                    <xsl:value-of select="Property[@Name='LOT']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="TRADING_PLACE"> 
                    <xsl:value-of select="Property[@Name='TRADING_PLACE_CODE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="REVALUATION_PRICE"> 
                    <xsl:value-of select="Property[@Name='REVALUATION_PRICE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="COUPONCALCSUMMTYPE"> 
                    <xsl:value-of select="Property[@Name='COUPONCALCSUMMTYPE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="COUPONRATE"> 
                    <xsl:value-of select="Property[@Name='COUPONRATE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="YIELDTYPE"> 
                    <xsl:value-of select="Property[@Name='YIELDTYPE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="NUMBER_REGISTR"> 
                    <xsl:value-of select="Property[@Name='NUMBER_REGISTR']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="DATE_REGISTR"> 
                    <xsl:value-of select="Property[@Name='DATE_REGISTR']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="EMITENT"> 
                    <xsl:value-of select="Property[@Name='EMITENT']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="SHAR_TYPE"> 
                    <xsl:value-of select="Property[@Name='SHAR_TYPE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="COUNT_EMISSION"> 
                    <xsl:value-of select="Property[@Name='COUNT_EMISSION']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="PAYMENT_YEAR"> 
                    <xsl:value-of select="Property[@Name='PAYMENT_YEAR']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="ROUND_TYPE"> 
                    <xsl:value-of select="Property[@Name='ROUND_TYPE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="CALENDAR"> 
                    <xsl:value-of select="Property[@Name='CALENDAR']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BASE_INSTRUMENT_OPERDAYID"> 
                    <xsl:value-of select="Property[@Name='BASE_INSTRUMENT_CODE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="COUNT_BASE_INSTRUMENT"> 
                    <xsl:value-of select="Property[@Name='COUNT_BASE_INSTRUMENT']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="EXCHANGE"> 
                    <xsl:value-of select="Property[@Name='EXCHANGE_ID']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="PRICE_TYPE"> 
                    <xsl:value-of select="Property[@Name='PRICE_TYPE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="SPOT_LAG"> 
                    <xsl:value-of select="Property[@Name='SPOT_LAG']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="MARGIN_CALL_LAG"> 
                    <xsl:value-of select="Property[@Name='MARGIN_CALL_LAG']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="SETTLEMENT_TYPE"> 
                    <xsl:value-of select="Property[@Name='SETTLEMENT_TYPE']">
                    </xsl:value-of>
                </Property> 
    
                <xsl:choose>
                    <xsl:when test="(Property[@Name='MARGIN_CURRENCY_ID'] = 'RUR')">
                        <Property Name ="MARGIN_CURRENCY"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="MARGIN_CURRENCY"> 
                            <xsl:value-of select="Property[@Name='MARGIN_CURRENCY_ID']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="MARGIN_VALUE"> 
                    <xsl:value-of select="Property[@Name='MARGIN_VALUE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="SOVEREIGN"> 
                    <xsl:value-of select="Property[@Name='SOVEREIGN']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="RELEASE"> 
                    <xsl:value-of select="Property[@Name='RELEASE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="TRADE_PLACE_SECTION"> 
                    <xsl:value-of select="Property[@Name='TRADE_PLACE_SECTION']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="FUTU_INTEREST_RATE"> 
                    <xsl:value-of select="Property[@Name='FUTU_INTEREST_RATENTEGER']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="FUTU_DURATION"> 
                    <xsl:value-of select="Property[@Name='FUTU_DURATION']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="CENT_VALUE"> 
                    <xsl:value-of select="Property[@Name='CENT_VALUE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="MULTI_COEFF"> 
                    <xsl:value-of select="Property[@Name='MULTI_COEFF']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="CENT"> 
                    <xsl:value-of select="Property[@Name='CENT']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="FUTU_SERIE"> 
                    <xsl:value-of select="Property[@Name='FUTU_SERIE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_SERIES"> 
                    <xsl:value-of select="Property[@Name='BILL_SERIES']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_NUMBER"> 
                    <xsl:value-of select="Property[@Name='BILL_NUMBER']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="ACCOUNT_EMITENT"> 
                    <xsl:value-of select="Property[@Name='ACCOUNT_EMITENT']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="DAYS_BEFORE_COUPON"> 
                    <xsl:value-of select="Property[@Name='DAYS_BEFORE_COUPON']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_TYPE_DISCOOUNT_PCT"> 
                    <xsl:value-of select="Property[@Name='BILL_TYPE_DISCOOUNT_PCT']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_CREATE_ADDRESS"> 
                    <xsl:value-of select="Property[@Name='BILL_CREATE_ADDRESS']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_HOLDER_ID"> 
                    <xsl:value-of select="Property[@Name='BILL_HOLDER_ID']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_TERM"> 
                    <xsl:value-of select="Property[@Name='BILL_TERM']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_TERM_DPARAM2"> 
                    <xsl:value-of select="Property[@Name='BILL_TERM_DPARAM2']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_TERM_IPARAM1"> 
                    <xsl:value-of select="Property[@Name='BILL_TERM_IPARAM1']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_TERM_IPARAM2"> 
                    <xsl:value-of select="Property[@Name='BILL_TERM_IPARAM2']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_TERM_TEXT"> 
                    <xsl:value-of select="Property[@Name='BILL_TERM_TEXT']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_AVAL"> 
                    <xsl:value-of select="Property[@Name='BILL_AVAL']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="PROTEST"> 
                    <xsl:value-of select="Property[@Name='PROTEST']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="ADDINFO"> 
                    <xsl:value-of select="Property[@Name='ADDINFO']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="PRECISION_"> 
                    <xsl:value-of select="Property[@Name='PRECISION_']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="PRECISION_UNCIA"> 
                    <xsl:value-of select="Property[@Name='PRECISION_UNCIA']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="INSTRUMENT_CODE"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_CODE']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="ISIN"> 
                    <xsl:value-of select="Property[@Name='ISIN']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="CFI"> 
                    <xsl:value-of select="Property[@Name='CFI']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_PAY_ADDRESS"> 
                    <xsl:value-of select="Property[@Name='BILL_PAY_ADDRESS']">
                    </xsl:value-of>
                </Property> 
    
                <Property Name ="BILL_PAYER_ID"> 
                    <xsl:value-of select="Property[@Name='BILL_PAYER_ID']">
                    </xsl:value-of>
                </Property> 
    
            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'MFLOW'">
            <Object Name="INSTRUMENTCASHFLOW">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="SOURCESYSTEM">
                    <xsl:value-of select="'SW_IBSO_RUSS'">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="(concat('C', Property[@Name='OPERDAY_ID1']))">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAYINSTR_ID1">
                    <xsl:value-of select="Property[@Name='INSTRUMENT_CODE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="START_DATE">
                    <xsl:value-of select="Property[@Name='START_DATE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="MATURITY_DATE">
                    <xsl:value-of select="Property[@Name='MATURITY_DATE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="YIELD">
                    <xsl:value-of select="Property[@Name='YIELD']">
                    </xsl:value-of>
                </Property>

                <Property Name ="SUMMA">
                    <xsl:value-of select="Property[@Name='SUMMA']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PAYM_TYPE">
                    <xsl:value-of select="Property[@Name='PAYM_TYPE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="NCLASS">
                    <xsl:value-of select="112">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="DAYS_BEFORE">
                    <xsl:value-of select="Property[@Name='DAYS_BEFORE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CURRENCY">
                    <xsl:value-of select="Property[@Name='CURRENCY']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CAPITAL">
                    <xsl:value-of select="Property[@Name='CAPITAL']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CAPITAL_PART">
                    <xsl:value-of select="Property[@Name='CAPITAL_PART']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CAPITAL_SUMM">
                    <xsl:value-of select="Property[@Name='CAPITAL_SUMM']">
                    </xsl:value-of>
                </Property>

                <Property Name ="FLOAT_COUPON">
                    <xsl:value-of select="Property[@Name='FLOAT_COUPON']">
                    </xsl:value-of>
                </Property>

            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'FX_CUSTOMER'">
            <Object Name="FX">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="TICKET">
                    <xsl:value-of select="Property[@Name='TICKET']">
                    </xsl:value-of>
                </Property>

                <Property Name ="TRADEDATE">
                    <xsl:value-of select="Property[@Name='TRADEDATE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="VALUEBUY">
                    <xsl:value-of select="Property[@Name='VALUEBUY']">
                    </xsl:value-of>
                </Property>

                <Property Name ="VALUESELL">
                    <xsl:value-of select="Property[@Name='VALUESELL']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='VALUEBUYSWAP'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATEBBACK'], 1, 10)) = '1899-12-30'))">
                        <Property Name ="VALUEBUYSWAP">
                            <xsl:value-of select="''">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="VALUEBUYSWAP">
                            <xsl:value-of select="Property[@Name='VALUEBUYSWAP']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='VALUESELLSWAP'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATEBBACK'], 1, 10)) = '1899-12-30'))">
                        <Property Name ="VALUESELLSWAP">
                            <xsl:value-of select="''">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="VALUESELLSWAP">
                            <xsl:value-of select="Property[@Name='VALUESELLSWAP']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="ADDINFO">
                    <xsl:value-of select="Property[@Name='ADDINFO']">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="Property[@Name='OPERDAY_ID1']">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAY_STATUS">
                    <xsl:value-of select="Property[@Name='OPERDAY_STATUS']">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAY_STATUS_NAME">
                    <xsl:value-of select="Property[@Name='OPERDAY_STATUS_NAME']">
                    </xsl:value-of>
                </Property>

                <Property Name ="ISSWAPDEAL">
                    <xsl:value-of select="Property[@Name='ISSWAPDEAL']">
                    </xsl:value-of>
                </Property>

                <Property Name ="TRADER_NAME">
                    <xsl:value-of select="Property[@Name='TRADER_NAME']">
                    </xsl:value-of>
                </Property>

                <Property Name ="TRADETIME">
                    <xsl:value-of select="Property[@Name='TRADETIME']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CUSTID">
                    <xsl:value-of select="Property[@Name='CUSTID']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='CB'] = 'RUR')">
                        <Property Name ="CB">
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CB">
                            <xsl:value-of select="Property[@Name='CB']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='CS'] = 'RUR')">
                        <Property Name ="CS">
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CS">
                            <xsl:value-of select="Property[@Name='CS']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="BROKER">
                    <xsl:value-of select="Property[@Name='BROKER']">
                    </xsl:value-of>
                </Property>

                <Property Name ="BUYSWAP">
                    <xsl:variable name="var7" select="Property[@Name='BUYSWAP']"/>
                    <xsl:variable name="var8">
                        <xsl:choose>
                            <xsl:when test="($var7 &gt; 0)">
                                <xsl:value-of select="$var7"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="-$var7"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <xsl:value-of select="$var8">
                    </xsl:value-of>
                </Property>

                <Property Name ="SELLSWAP">
                    <xsl:variable name="var9" select="Property[@Name='SELLSWAP']"/>
                    <xsl:variable name="var10">
                        <xsl:choose>
                            <xsl:when test="($var9 &gt; 0)">
                                <xsl:value-of select="$var9"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="-$var9"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <xsl:value-of select="$var10">
                    </xsl:value-of>
                </Property>

                <Property Name ="SWAPDEALID">
                    <xsl:value-of select="Property[@Name='SWAPDEALID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="SEC_TRADE_ACCOUNT">
                    <xsl:value-of select="Property[@Name='SEC_TRADE_ACCOUNT']">
                    </xsl:value-of>
                </Property>

                <Property Name ="SEC_TRADE_ACCOUNT2">
                    <xsl:value-of select="Property[@Name='SEC_TRADE_ACCOUNT2']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='TICKET'] &gt; 0)">
                        <Property Name ="SOURCESYSTEM">
                            <xsl:value-of select="'NavXLv5'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="SOURCESYSTEM">
                            <xsl:value-of select="'XXX'">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="CONFIRM_STATUS">
                    <xsl:value-of select="Property[@Name='CONFIRM_STATUS']">
                    </xsl:value-of>
                </Property>

                <Property Name ="FILIAL_STR">
                    <xsl:value-of select="Property[@Name='FILIAL_STR']">
                    </xsl:value-of>
                </Property>

                <Property Name ="IFX_ID">
                    <xsl:value-of select="Property[@Name='IFX_ID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="MARGING">
                    <xsl:value-of select="Property[@Name='MARGING']">
                    </xsl:value-of>
                </Property>

                <Property Name ="MRGLOGIN">
                    <xsl:value-of select="Property[@Name='MRGLOGIN']">
                    </xsl:value-of>
                </Property>

                <Property Name ="ADDFIELDINT1">
                    <xsl:value-of select="Property[@Name='BASE_TYPE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CSCASH">
                    <xsl:value-of select="Property[@Name='CSCASH']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CBCASH">
                    <xsl:value-of select="Property[@Name='CBCASH']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PORTFID_STR">
                    <xsl:value-of select="Property[@Name='CFU_STR']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PORTFID_STR2">
                    <xsl:value-of select="Property[@Name='CFU_STR2']">
                    </xsl:value-of>
                </Property>

                <Property Name ="ACCOUNT_TYPE">
                    <xsl:value-of select="Property[@Name='ACCOUNT_TYPE']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="((Property[@Name='BUYUNCIA'] &gt; 0) or (Property[@Name='SELLUNCIA'] &gt; 0))">
                        <Property Name ="INUNCIA">
                            <xsl:value-of select="'True'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="INUNCIA">
                            <xsl:value-of select="'False'">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="SWAP">
                    <xsl:value-of select="Property[@Name='SWAP']">
                    </xsl:value-of>
                </Property>

                <Property Name ="NCLASS">
                    <xsl:value-of select="113">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='RATEUNCIA'] &gt; 0)">
                        <Property Name ="RATE">
                            <xsl:value-of select="Property[@Name='RATEUNCIA']">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="RATE">
                            <xsl:value-of select="Property[@Name='RATE']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='SWAP_RATEUNCIA'] &gt; 0)">
                        <Property Name ="SWAPRATE">
                            <xsl:value-of select="Property[@Name='SWAP_RATEUNCIA']">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="SWAPRATE">
                            <xsl:value-of select="Property[@Name='SWAPRATE']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='BUYUNCIA'] &gt; 0)">
                        <Property Name ="BUY">
                            <xsl:variable name="var3" select="Property[@Name='BUYUNCIA']"/>
                            <xsl:variable name="var4">
                                <xsl:choose>
                                    <xsl:when test="($var3 &gt; 0)">
                                        <xsl:value-of select="$var3"/>
                                        </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="-$var3"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:variable>
                            <xsl:value-of select="$var4">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="BUY">
                            <xsl:variable name="var3" select="Property[@Name='BUY']"/>
                            <xsl:variable name="var4">
                                <xsl:choose>
                                    <xsl:when test="($var3 &gt; 0)">
                                        <xsl:value-of select="$var3"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="-$var3"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:variable>
                            <xsl:value-of select="$var4">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='SELLUNCIA'] &gt; 0)">
                        <Property Name ="SELL">
                            <xsl:variable name="var5" select="Property[@Name='SELLUNCIA']"/>
                            <xsl:variable name="var6">
                                <xsl:choose>
                                    <xsl:when test="($var5 &gt; 0)">
                                        <xsl:value-of select="$var5"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="-$var5"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:variable>
                            <xsl:value-of select="$var6">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="SELL">
                            <xsl:variable name="var5" select="Property[@Name='SELL']"/>
                            <xsl:variable name="var6">
                                <xsl:choose>
                                    <xsl:when test="($var5 &gt; 0)">
                                        <xsl:value-of select="$var5"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:value-of select="-$var5"/>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:variable>
                            <xsl:value-of select="$var6">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'PAY'">
            <Object Name="vw_T_TRANSACTIONS">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="NCLASS"> 
                    <xsl:value-of select="114">
                    </xsl:value-of>
                </Property> 

                <Property Name ="EVENTID"> 
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="OPERDAY_ID1"> 
                    <xsl:value-of select="Property[@Name='OPERDAYID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="DEALTYPE"> 
                    <xsl:value-of select="'NT'">
                    </xsl:value-of>
                </Property> 

                <Property Name ="AMOUNT"> 
                    <xsl:value-of select="Property[@Name='AMOUNT']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="VALUEDATE"> 
                    <xsl:value-of select="substring(Property[@Name='VALUEDATE'], 1, 10)">
                    </xsl:value-of>
                </Property> 

                <Property Name ="VALUEDATE_FACT"> 
                    <xsl:value-of select="Property[@Name='VALUEDATE_FACT']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="OWNER_ACC"> 
                    <xsl:value-of select="Property[@Name='T_OWNER_ACC']">
                    </xsl:value-of>
                </Property> 

                <xsl:choose>
                    <xsl:when test="(Property[@Name='INSTRUMENT'] = 'RUR')">
                        <Property Name ="CCY"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CCY"> 
                            <xsl:value-of select="Property[@Name='INSTRUMENT']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="CID"> 
                    <xsl:value-of select="Property[@Name='CID_ODB']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="ACCPOINTER"> 
                    <xsl:value-of select="Property[@Name='ACCPOINTER']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="NAZN"> 
                    <xsl:value-of select="Property[@Name='NAZN']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="TRADEDATE"> 
                    <xsl:value-of select="substring(Property[@Name='TRADEDATE'], 1, 10)">
                    </xsl:value-of>
                </Property> 

                <Property Name ="ADD_INSTR"> 
                    <xsl:value-of select="Property[@Name='ADD_INSTR']">
                    </xsl:value-of>
                </Property> 

            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'SEC_DEAL'">
            <Object Name="SEC_DEAL">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="NCLASS"> 
                    <xsl:value-of select="115">
                    </xsl:value-of>
                </Property> 

                <Property Name ="EVENTID"> 
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property> 

                <!-- Дата сделки --> 
                <Property Name ="DEAL_DATE"> 
                    <xsl:value-of select="Property[@Name='DEAL_DATE']">
                    </xsl:value-of>
                </Property> 
                
                <!-- ID инструмента в ОДБ --> 
                <Property Name ="ODB_INSTR_ID"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENTID']">
                    </xsl:value-of>
                </Property> 

                <!-- валюта цены --> 
                <xsl:choose>
                    <xsl:when test="(Property[@Name='PRICECURRENCYCODE'] = 'RUR')">
                        <Property Name ="PRICECURRENCY"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="PRICECURRENCY"> 
                            <xsl:value-of select="Property[@Name='PRICECURRENCYCODE']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>

                <!-- тип сделки: BUY, DREPO, SELL, RREPO, REDEMPTION --> 
                <Property Name ="ACTIONTYPE_CODE"> 
                    <xsl:value-of select="Property[@Name='ACTIONTYPE_CODE']">
                    </xsl:value-of>
                </Property> 
                
                <!-- цена (в валюте PRICECURRENCY) --> 
                <Property Name ="PRICE"> 
                    <xsl:value-of select="Property[@Name='PRICE']">
                    </xsl:value-of>
                </Property> 
                
                <!-- количество инструмента --> 
                <Property Name ="AMOUNT"> 
                    <xsl:value-of select="Property[@Name='AMOUNT']">
                    </xsl:value-of>
                </Property> 
                
                <!-- чистая стоимость --> 
                <Property Name ="CLEAN_AMOUNT"> 
                    <xsl:value-of select="Property[@Name='CLEAN_AMOUNT']">
                    </xsl:value-of>
                </Property> 
                
                <!-- дата поставки --> 
                <Property Name ="SETTLEMENT_DATE"> 
                    <xsl:value-of select="Property[@Name='SETTLEMENT_DATE']">
                    </xsl:value-of>
                </Property> 

                <!-- дата платежа --> 
                <Property Name ="PAYMENT_DATE"> 
                    <xsl:value-of select="Property[@Name='PAYMENT_DATE']">
                    </xsl:value-of>
                </Property> 
                
                <!-- ID КА в ОДБ --> 
                <Property Name ="ODB_COUNTERPARTY_ID"> 
                    <xsl:value-of select="Property[@Name='COUNTERPARTYID']">
                    </xsl:value-of>
                </Property> 
                
                <!-- дата соглашения --> 
                <Property Name ="AGREEDATE"> 
                    <xsl:value-of select="Property[@Name='AGREEDATE']">
                    </xsl:value-of>
                </Property> 
                
                <!-- номер соглашения --> 
                <Property Name ="AGREENUMB"> 
                    <xsl:value-of select="Property[@Name='AGREENUMB']">
                    </xsl:value-of>
                </Property> 
                
                <!-- идентиф. сделки во внешней системе --> 
                <Property Name ="OPERDAY_ID1"> 
                    <xsl:value-of select="Property[@Name='SERIES']">
                    </xsl:value-of>
                </Property> 
                
                <!-- Количество ног мультиинструментальной сделки --> 
                <Property Name ="COUNT_LEG"> 
                    <xsl:value-of select="Property[@Name='MULTI_LEG_COUNT']">
                    </xsl:value-of>
                </Property> 
                
                <!-- идентиф. головы мультиинструментальной сделки --> 
                <Property Name ="ID_MULTIDEAL"> 
                    <xsl:value-of select="Property[@Name='NO_MULTIDEAL']">
                    </xsl:value-of>
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


