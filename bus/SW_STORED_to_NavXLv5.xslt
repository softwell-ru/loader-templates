<?xml version="1.0" encoding="windows-1251" ?>

<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="windows-1251"/>

    <xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
        <xsl:if test="@Name = 'VW_TRADES'">
            <Object Name="ONLINETRADES">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>
                <Property Name ="TRADE_NUMBER"> 
                    <xsl:value-of select="Property[@Name='TRADE_NUMBER']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="QTYTYPE"> 
                    <xsl:value-of select="Property[@Name='QTYTYPE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADE_TIME"> 
                    <xsl:value-of select="Property[@Name='TRADE_TIME']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_ORDER_NUMBER"> 
                    <xsl:value-of select="Property[@Name='TRADE_ORDER_NUMBER']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADE_TYPE"> 
                    <xsl:value-of select="Property[@Name='TRADE_TYPE']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_SIDE"> 
                    <xsl:variable name="vlueSide" select="Property[@Name='TRADE_SIDE']"/>
                    <xsl:variable name="upperValue" select="translate($vlueSide, '0123456789abcdefghijklmnopqrstuvwxyzабвгдеёжзийклмнопрстуфхцчшщъыьэюя-!?', '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ-!?')"/>
                    <xsl:variable name="rsltSide">
                        <xsl:choose>
                            <xsl:when test="(($upperValue = 'B') or ($upperValue = 'BUY') or ($upperValue = 'ПОКУПКА') or ($upperValue = 'К'))">
                                <xsl:value-of select="'BUY'"/>
                            </xsl:when>
                            <xsl:when test="(($upperValue = 'S') or ($upperValue = 'SELL') or ($upperValue = 'ПРОДАЖА') or ($upperValue = 'П'))">
                                <xsl:value-of select="'SELL'"/>
                            </xsl:when>
                            <xsl:when test="(($upperValue = 'S/B') or ($upperValue = 'B/S') or ($upperValue = 'SWAP') or ($upperValue = 'СВОП'))">
                                <xsl:value-of select="'SWAP'"/>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="$upperValue"/>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <xsl:value-of select="$rsltSide"/>
                </Property> 
                                                                                          
                <Property Name ="TRADE_ACCOUNT"> 
                    <xsl:value-of select="Property[@Name='TRADE_ACCOUNT']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_PRICE"> 
                    <xsl:value-of select="Property[@Name='TRADE_PRICE']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_QUANTITY"> 
                    <xsl:value-of select="Property[@Name='TRADE_QUANTITY']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_SECCODE"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_SHORT']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_SEC"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_NAME']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_VALUE"> 
                    <xsl:value-of select="Property[@Name='TRADE_VALUE']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_SETTLE_CODE"> 
                    <xsl:value-of select="Property[@Name='TRADE_SETTLE_CODE']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_YIELD"> 
                    <xsl:value-of select="Property[@Name='TRADE_YIELD']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_USERID"> 
                    <xsl:value-of select="Property[@Name='TRADE_USERID']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_FIRMID"> 
                    <xsl:value-of select="Property[@Name='TRADE_FIRMID']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_ACRUEDINT"> 
                    <xsl:value-of select="Property[@Name='TRADE_ACRUEDINT']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_REF"> 
                    <xsl:value-of select="Property[@Name='TRADE_REF']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_PARTNER_USERID"> 
                    <xsl:value-of select="Property[@Name='TRADE_PARTNER_USERID']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_PARTNER_FIRMID"> 
                    <xsl:value-of select="Property[@Name='TRADE_PARTNER_FIRMID']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_RANSOM_PRICE"> 
                    <xsl:value-of select="Property[@Name='TRADE_RANSOM_PRICE']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_REPO_RATE"> 
                    <xsl:value-of select="Property[@Name='TRADE_REPO_RATE']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_DATE"> 
                    <xsl:value-of select="Property[@Name='TRADE_DATE']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_TRADER"> 
                    <xsl:value-of select="Property[@Name='TRADE_TRADER']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_REPO_TERM"> 
                    <xsl:value-of select="Property[@Name='TRADE_REPO_TERM']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_RANSOM_VALUE"> 
                    <xsl:value-of select="Property[@Name='TRADE_RANSOM_VALUE']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_ACRUEDINT2"> 
                    <xsl:value-of select="Property[@Name='TRADE_ACRUEDINT2']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="COMISSION"> 
                    <xsl:value-of select="Property[@Name='COMISSION']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="COMISSION_SETTLE"> 
                    <xsl:value-of select="Property[@Name='COMISSION_SETTLE']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="COMISSION_ITS"> 
                    <xsl:value-of select="Property[@Name='COMISSION_ITS']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="SETTLE_DATE"> 
                    <xsl:value-of select="Property[@Name='SETTLE_DATE']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="PAYMENT_DATE"> 
                    <xsl:value-of select="Property[@Name='PAYMENT_DATE']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="DEAL_SOURCE"> 
                    <xsl:value-of select="'SW_STORED'">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_NUMBER2"> 
                    <xsl:value-of select="Property[@Name='TRADE_NUMBER2']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="TRADE_CLASSCODE"> 
                    <xsl:value-of select="Property[@Name='TRADING_PLACE_SHORT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADE_CLASS"> 
                    <xsl:value-of select="Property[@Name='TRADING_PLACE_NAME']">
                    </xsl:value-of>
                </Property> 
                                           
                <Property Name ="STARTDISCOUNT"> 
                    <xsl:value-of select="Property[@Name='TRADE_STARTDISCOUNT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="LOWERDISCOUNT"> 
                    <xsl:value-of select="Property[@Name='TRADE_LOWERDISCOUNT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="UPPERDISCOUNT"> 
                    <xsl:value-of select="Property[@Name='TRADE_UPPERDISCOUNT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="PAYMENT_CURRENCY"> 
                    <xsl:value-of select="Property[@Name='PAYMENT_CURRENCY']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="PRICE_CURRENCY"> 
                    <xsl:value-of select="Property[@Name='PRICE_CURRENCY']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="PRICE_RATE"> 
                    <xsl:value-of select="Property[@Name='PRICE_RATE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="PAYMENT_RATE"> 
                    <xsl:value-of select="Property[@Name='PAYMENT_RATE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="INSTRUMENT_ID"> 
                    <xsl:value-of select="Property[@Name='SECURITY_ID']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="EXCHANGE_CODE"> 
                    <xsl:value-of select="Property[@Name='MARKET_PLACE_CODE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="DAYCNTCONV"> 
                    <xsl:value-of select="Property[@Name='DAYCNTCONV']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="DAYCNTCONV2L"> 
                    <xsl:value-of select="Property[@Name='DAYCNTCONV2L']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="MARKET_PRICE"> 
                    <xsl:value-of select="Property[@Name='MARKET_PRICE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="INFTYPE"> 
                    <xsl:value-of select="Property[@Name='INFTYPE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="SETTLE_DATE_FACT"> 
                    <xsl:value-of select="Property[@Name='SETTLE_DATE_FACT']">
                    </xsl:value-of>
                </Property> 
                
                <xsl:choose>
                    <xsl:when test="(Property[@Name='MARKET_PLACE_CODE'] = 'BLOOMBERG')">
                        <Property Name ="DVP"> 
                            <xsl:value-of select="'False'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="DVP"> 
                            <xsl:variable name="vlue" select="Property[@Name='DVP']"/>
                            <xsl:variable name="lenValue" select="string-length($vlue)"/>
                            <xsl:variable name="binValue">
                                <xsl:choose>
                                    <xsl:when test="($lenValue = 0)">
                                        <xsl:value-of select="0"/>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:call-template name="bin">
                                            <xsl:with-param name="decimalNumber" select="$vlue"/>
                                        </xsl:call-template>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:variable>
                            <xsl:variable name="binStr" select="string($binValue)"/>
                            <xsl:variable name="lenBinValue" select="string-length($binStr)"/>
                            <xsl:variable name="rslt">
                                <xsl:if test="($lenBinValue &lt; 3)">
                                    <xsl:value-of select="'False'"/>
                                </xsl:if>
                                <xsl:if test="($lenBinValue = 3)">
                                    <xsl:choose>
                                        <xsl:when test="(substring($binStr, $lenBinValue - 2, 1) = '1')">
                                            <xsl:value-of select="'True'"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="'False'"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:if>
                                <xsl:if test="($lenBinValue &gt;= 4) and ($lenBinValue &lt; 11)">
                                    <xsl:choose>
                                        <xsl:when test="((substring($binStr, $lenBinValue - 2, 1) = '1') or 
                                                         (substring($binStr, $lenBinValue - 3, 1) = '1'))">
                                            <xsl:value-of select="'True'"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="'False'"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:if>
                                <xsl:if test="($lenBinValue = 11)">
                                    <xsl:choose>
                                        <xsl:when test="((substring($binStr, $lenBinValue - 2, 1) = '1') or 
                                                         (substring($binStr, $lenBinValue - 3, 1) = '1') or 
                                                         (substring($binStr, $lenBinValue - 10, 1) = '1'))">
                                            <xsl:value-of select="'True'"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="'False'"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:if>
                                <xsl:if test="($lenBinValue &gt;= 12)">
                                    <xsl:choose>
                                        <xsl:when test="((substring($binStr, $lenBinValue - 2, 1) = '1') or 
                                                         (substring($binStr, $lenBinValue - 3, 1) = '1') or 
                                                         (substring($binStr, $lenBinValue - 10, 1) = '1') or 
                                                         (substring($binStr, $lenBinValue - 11, 1) = '1'))">
                                            <xsl:value-of select="'True'"/>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <xsl:value-of select="'False'"/>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </xsl:if>
                            </xsl:variable>
                            <xsl:value-of select="$rslt"/>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>
                
                <Property Name ="SWAPPOINTS"> 
                    <xsl:value-of select="Property[@Name='SWAPPOINTS']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="RANSOM_SETTLEDATE"> 
                    <xsl:value-of select="Property[@Name='FARLEGSETTLEDATE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="RANSOM_VALUEDATE"> 
                    <xsl:value-of select="Property[@Name='FARLEGVALUEDATE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="RANSOM_TRADE_SIDE"> 
                    <xsl:value-of select="Property[@Name='FARLEGTRADE_SIDE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADE_VALUE_FULL"> 
                    <xsl:value-of select="Property[@Name='TRADE_REPOVALUE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="CLIENTCODE"> 
                    <xsl:value-of select="Property[@Name='CLIENTCODE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="ORDERSTATUS"> 
                    <xsl:value-of select="Property[@Name='ORDERSTATUS']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="PARENTTRADENO"> 
                    <xsl:value-of select="Property[@Name='PARENTTRADENO']">
                    </xsl:value-of>
                </Property> 
                
            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'VW_QUOTATIONS'">
            <Object Name="ONLINEQUOTATIONS">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>
                                               
                <Property Name ="INSTRUMENT"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_SHORT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADE_DATE"> 
                    <xsl:value-of select="Property[@Name='C$DATE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="EventID"> 
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="BID"> 
                    <xsl:value-of select="Property[@Name='BID']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="OFFER"> 
                    <xsl:value-of select="Property[@Name='ASK']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="SOURCESYSTEM"> 
                    <xsl:value-of select="'SW_STORED'">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="COUPON"> 
                    <xsl:value-of select="Property[@Name='NKD']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="YTM"> 
                    <xsl:value-of select="Property[@Name='YIELD']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="CHANGE"> 
                    <xsl:value-of select="Property[@Name='CHANGE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="OPEN_PRICE"> 
                    <xsl:value-of select="Property[@Name='OPEN']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="HIGH_PRICE"> 
                    <xsl:value-of select="Property[@Name='HIGH']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="LOW_PRICE"> 
                    <xsl:value-of select="Property[@Name='LOW']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="AMOUNT"> 
                    <xsl:value-of select="Property[@Name='AMOUNT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="SUMMA"> 
                    <xsl:value-of select="Property[@Name='VOLUME']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="CLOSE_PRICE"> 
                    <xsl:choose>
                        <xsl:when test="((Property[@Name='MARKET_PLACE_CODE'] = 'MICEX') and (Property[@Name='TRADING_PLACE_SHORT'] = 'FOB'))">
                            <xsl:value-of select="Property[@Name='SETTLEPRICE']">
                            </xsl:value-of>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:variable name="varClosePrice" select="Property[@Name='CLOSE_PRICE']"/>
                            <xsl:variable name="varLngClosePrice" select="string-length($varClosePrice)"/>
                            <xsl:choose>
                                <xsl:when test="($varLngClosePrice = 0)">
                                    <xsl:value-of select="Property[@Name='LAST_PRICE']"></xsl:value-of>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="Property[@Name='CLOSE_PRICE']">
                                    </xsl:value-of>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:otherwise>
                    </xsl:choose>
                </Property> 
                
                <Property Name ="AVERAGE_PRICE"> 
                    <xsl:value-of select="Property[@Name='AVERAGE_PRICE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="SETTPRICE"> 
                    <xsl:value-of select="Property[@Name='SETPRICE']">
                    </xsl:value-of>
                </Property> 
                
                <xsl:choose>
                    <xsl:when test="(Property[@Name='CURRENCYID'] = 'RUR')">
                        <Property Name ="CURRENCY"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:when test="(Property[@Name='CURRENCYID'] = 'SUR')">
                        <Property Name ="CURRENCY"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CURRENCY"> 
                            <xsl:value-of select="Property[@Name='CURRENCYID']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>
                
                <Property Name ="TERM"> 
                    <xsl:value-of select="0">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="AM_RATE"> 
                    <xsl:value-of select="Property[@Name='FACEVALUE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADING_PLACE"> 
                    <xsl:value-of select="Property[@Name='MARKET_PLACE_CODE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="MARKETPRICE"> 
                    <xsl:value-of select="Property[@Name='MARKETPRICE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="SECBOARD"> 
                    <xsl:value-of select="Property[@Name='TRADING_PLACE_SHORT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="INSTRUMENT_ID"> 
                    <xsl:value-of select="Property[@Name='SECURITY_ID']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="DEAL_COUNT"> 
                    <xsl:value-of select="Property[@Name='NUMTRADES']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADING_PLACE"> 
                    <xsl:value-of select="Property[@Name='MARKET_SHORT']">
                    </xsl:value-of>
                </Property>
            </Object>
        </xsl:if>
        
        <xsl:if test="@Name = 'ONLINEQUOTATIONS'">
            <Object Name="ONLINEQUOTATIONS">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>
                                               
                <Property Name ="INSTRUMENT"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADE_DATE"> 
                    <xsl:value-of select="Property[@Name='TRADE_DATE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="EventID"> 
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="BID"> 
                    <xsl:value-of select="Property[@Name='BID']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="OFFER"> 
                    <xsl:value-of select="Property[@Name='OFFER']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="SOURCESYSTEM"> 
                    <xsl:value-of select="'SW_STORED'">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="COUPON"> 
                    <xsl:value-of select="Property[@Name='COUPON']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="YTM"> 
                    <xsl:value-of select="Property[@Name='YTM']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="CHANGE"> 
                    <xsl:value-of select="Property[@Name='CHANGE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="OPEN_PRICE"> 
                    <xsl:value-of select="Property[@Name='OPEN_PRICE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="HIGH_PRICE"> 
                    <xsl:value-of select="Property[@Name='HIGH']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="LOW_PRICE"> 
                    <xsl:value-of select="Property[@Name='LOW']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="AMOUNT"> 
                    <xsl:value-of select="Property[@Name='AMOUNT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="SUMMA"> 
                    <xsl:value-of select="Property[@Name='VOLUME']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="CLOSE_PRICE"> 
                    <xsl:choose>
                        <xsl:when test="((Property[@Name='MARKET_PLACE_CODE'] = 'MICEX') and (Property[@Name='TRADING_PLACE_SHORT'] = 'FOB'))">
                            <xsl:value-of select="Property[@Name='SETTLEPRICE']">
                            </xsl:value-of>
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:variable name="varClosePrice" select="Property[@Name='CLOSE_PRICE']"/>
                            <xsl:variable name="varLngClosePrice" select="string-length($varClosePrice)"/>
                            <xsl:choose>
                                <xsl:when test="($varLngClosePrice = 0)">
                                    <xsl:value-of select="Property[@Name='LAST_PRICE']"></xsl:value-of>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="Property[@Name='CLOSE_PRICE']">
                                    </xsl:value-of>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:otherwise>
                    </xsl:choose>
                </Property> 
                
                <Property Name ="AVERAGE_PRICE"> 
                    <xsl:value-of select="Property[@Name='AVERAGE_PRICE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="SETTPRICE"> 
                    <xsl:value-of select="Property[@Name='SETPRICE']">
                    </xsl:value-of>
                </Property> 
                
                <xsl:choose>
                    <xsl:when test="(Property[@Name='CURRENCYID'] = 'RUR')">
                        <Property Name ="CURRENCY"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:when test="(Property[@Name='CURRENCYID'] = 'SUR')">
                        <Property Name ="CURRENCY"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CURRENCY"> 
                            <xsl:value-of select="Property[@Name='CURRENCYID']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>
                
                <Property Name ="TERM"> 
                    <xsl:value-of select="0">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="AM_RATE"> 
                    <xsl:value-of select="Property[@Name='FACEVALUE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADING_PLACE"> 
                    <xsl:value-of select="Property[@Name='MARKET_PLACE_CODE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="MARKETPRICE"> 
                    <xsl:value-of select="Property[@Name='MARKETPRICE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="SECBOARD"> 
                    <xsl:value-of select="Property[@Name='SECBOARD']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="INSTRUMENT_ID"> 
                    <xsl:value-of select="Property[@Name='SECURITY_ID']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="DEAL_COUNT"> 
                    <xsl:value-of select="Property[@Name='DEAL_COUNT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADING_PLACE"> 
                    <xsl:value-of select="Property[@Name='MARKET_SHORT']">
                    </xsl:value-of>
                </Property>
            </Object>
        </xsl:if>
        
        <xsl:if test="@Name = 'VW_TRANSACTS'">
            <Object Name="ONLINETRANS">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="ID"> 
                    <xsl:value-of select="Property[@Name='ID']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="INSTRUMENT"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_SHORT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="INSTRUMENTNAME"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_NAME']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADINGPLACE"> 
                    <xsl:value-of select="Property[@Name='TRADING_PLACE_SHORT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADINGPLACENAME"> 
                    <xsl:value-of select="Property[@Name='TRADING_PLACE_NAME']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="MARKETPLACE"> 
                    <xsl:value-of select="Property[@Name='MARKET_PLACE_CODE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="MARKETPLACENAME"> 
                    <xsl:value-of select="Property[@Name='MARKET_PLACE_NAME']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="EventID"> 
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="AMOUNT"> 
                    <xsl:value-of select="Property[@Name='AMOUNT']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="AMOUNT2"> 
                    <xsl:value-of select="Property[@Name='AMOUNT2']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="AMOUNT3"> 
                    <xsl:value-of select="Property[@Name='AMOUNT3']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="DEAL_NUM"> 
                    <xsl:value-of select="Property[@Name='DEAL_NUM']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name="DEAL_SIDE">
                    <xsl:variable name="vlueSideTR" select="Property[@Name='DEAL_SIDE']" /> 
                    <xsl:variable name="upperValueTR" select="translate($vlueSideTR, '0123456789abcdefghijklmnopqrstuvwxyzабвгдеёжзийклмнопрстуфхцчшщъыьэюя-!?', '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZАБВГДЕЁЖЗИЙКЛМНОПРСТУФХЦЧШЩЪЫЬЭЮЯ-!?')" /> 
                    <xsl:variable name="rsltSideTR">
                        <xsl:choose>
                            <xsl:when test="(($upperValueTR = 'B') or ($upperValueTR = 'BUY') or ($upperValueTR = 'ПОКУПКА') or ($upperValueTR = 'К'))">
                                <xsl:value-of select="'BUY'" /> 
                            </xsl:when>
                            <xsl:when test="(($upperValueTR = 'S') or ($upperValueTR = 'SELL') or ($upperValueTR = 'ПРОДАЖА') or ($upperValueTR = 'П'))">
                                <xsl:value-of select="'SELL'" /> 
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="$upperValueTR" /> 
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <xsl:value-of select="$rsltSideTR" /> 
                </Property>
            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'VW_RVPRICE'">
            <Object Name="ONLINEQUOTATIONS">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>
                                               
                <Property Name ="INSTRUMENT"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_SHORT_NAME']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="TRADE_DATE"> 
                    <xsl:value-of select="Property[@Name='RV_DATE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="EventID"> 
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="SOURCESYSTEM"> 
                    <xsl:value-of select="'SW_STORED'">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="CLOSE_PRICE"> 
                    <xsl:value-of select="Property[@Name='RVPRICE']">
                    </xsl:value-of>
                </Property> 
                
                <Property Name ="INSTRUMENT_ID"> 
                    <xsl:value-of select="Property[@Name='SECURITY_ID']">
                    </xsl:value-of>
                </Property> 
                
            </Object>
        </xsl:if>
                
        <xsl:if test="@Name = 'VW_EXQ_INSTRUMENTS'">
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
                        
                <Property Name ="INSTRUMENT_ID"> 
                    <xsl:value-of select="Property[@Name='SECURITY_ID']">
                    </xsl:value-of>
                </Property> 
                        
                <Property Name ="OPERDAY_ID1"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_ID']">
                    </xsl:value-of>
                </Property> 
                        
                <Property Name ="INSTRUMENT_SHORT_NAME"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_SHORT']">
                    </xsl:value-of>
                </Property> 
                        
                <Property Name ="INSTRUMENT_FULL_NAME"> 
                    <xsl:value-of select="Property[@Name='INSTRUMENT_NAME']">
                    </xsl:value-of>
                </Property> 
                        
                <Property Name ="EXCHANGE_"> 
                    <xsl:value-of select="Property[@Name='MARKET_PLACE_CODE']">
                    </xsl:value-of>
                </Property> 
                        
                <Property Name ="TRADE_PLACE_SECTION"> 
                    <xsl:value-of select="Property[@Name='TRADING_PLACE_SHORT']">
                    </xsl:value-of>
                </Property> 
                        
                <xsl:choose>
                    <xsl:when test="(Property[@Name='INSTRUMENTTYPE'] = 'FUT')">
                        <Property Name ="INSTRUMENTTYPE_CODE"> 
                            <xsl:value-of select="'FUTU'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:when test="(Property[@Name='INSTRUMENTTYPE'] = 'FOR')">
                        <Property Name ="INSTRUMENTTYPE_CODE"> 
                            <xsl:value-of select="'CASH'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:when test="((Property[@Name='INSTRUMENTTYPE'] = 'CS') or (Property[@Name='INSTRUMENTTYPE'] = 'PS'))">
                        <Property Name ="INSTRUMENTTYPE_CODE"> 
                            <xsl:value-of select="'SHAR'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:when test="((Property[@Name='INSTRUMENTTYPE'] = 'OPT') or (Property[@Name='INSTRUMENTTYPE'] = 'OOF') or (Property[@Name='INSTRUMENTTYPE'] = 'OOP') or (Property[@Name='INSTRUMENTTYPE'] = 'OOC'))">
                        <Property Name ="INSTRUMENTTYPE_CODE"> 
                            <xsl:value-of select="'OPTN'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:when test="((Property[@Name='INSTRUMENTTYPE'] = 'CTB') or (Property[@Name='INSTRUMENTTYPE'] = 'TB') or (Property[@Name='INSTRUMENTTYPE'] = 'TBILL') or (Property[@Name='INSTRUMENTTYPE'] = 'USTB') or (Property[@Name='INSTRUMENTTYPE'] = 'BOX'))">
                        <Property Name ="INSTRUMENTTYPE_CODE"> 
                            <xsl:value-of select="'PNOT'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:when test="((Property[@Name='INSTRUMENTTYPE'] = 'CORP') or (Property[@Name='INSTRUMENTTYPE'] = 'CB') or (Property[@Name='INSTRUMENTTYPE'] = 'EUCORP') or (Property[@Name='INSTRUMENTTYPE'] = 'EUFRN') or (Property[@Name='INSTRUMENTTYPE'] = 'FRN')or (Property[@Name='INSTRUMENTTYPE'] = 'YANK') or (Property[@Name='INSTRUMENTTYPE'] = 'BRADY') or (Property[@Name='INSTRUMENTTYPE'] = 'PROV') or (Property[@Name='INSTRUMENTTYPE'] = 'TBOND') or (Property[@Name='INSTRUMENTTYPE'] = 'CMB') or (Property[@Name='INSTRUMENTTYPE'] = 'GO') or (Property[@Name='INSTRUMENTTYPE'] = 'REV'))">
                        <Property Name ="INSTRUMENTTYPE_CODE"> 
                            <xsl:value-of select="'BOND'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="INSTRUMENTTYPE_CODE"> 
                            <xsl:value-of select="Property[@Name='INSTRUMENTTYPE']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>
                        
                <Property Name ="MARGIN_CURRENCY"> 
                    <xsl:value-of select="Property[@Name='MARGIN_CURRENCY']">
                    </xsl:value-of>
                </Property> 
                        
                <Property Name ="MARGIN_VALUE"> 
                    <xsl:value-of select="Property[@Name='MARGIN_VALUE']">
                    </xsl:value-of>
                </Property> 
                        
                <Property Name ="CENT_VALUE"> 
                    <xsl:value-of select="Property[@Name='CENT_VALUE']">
                    </xsl:value-of>
                </Property> 
                        
                <Property Name ="CENT"> 
                    <xsl:value-of select="Property[@Name='CENT']">
                    </xsl:value-of>
                </Property> 
            </Object>
        </xsl:if>
                
    </xsl:template>
                
    <xsl:template name="bin">
        <xsl:param name="decimalNumber"/>
        <xsl:variable name="binDigits" select="'01'"/>
        <xsl:variable name="rsltBin">
            <xsl:if test="$decimalNumber &gt; 1">
                <xsl:call-template name="bin">
                    <xsl:with-param name="decimalNumber" select="floor($decimalNumber div 2)"/>
                </xsl:call-template>
            </xsl:if>
        </xsl:variable>
        <xsl:value-of select="concat($rsltBin, substring($binDigits, ($decimalNumber mod 2) + 1, 1))"/>
    </xsl:template>
                
    <xsl:template name="decimal-to-hex">
        <xsl:param name="decimalNumber"/>
        <xsl:variable name="hexDigits" select="'0123456789ABCDEF'"/>
        <xsl:variable name="upperDigits">
            <xsl:if test="$decimalNumber &gt;= 16">
                <xsl:call-template name="decimal-to-hex">
                    <xsl:with-param name="decimalNumber" select="floor($decimalNumber div 16)"/>
                </xsl:call-template>
            </xsl:if>
        </xsl:variable>
        <xsl:value-of select="concat($upperDigits, substring($hexDigits, ($decimalNumber mod 16) + 1, 1))"/>
    </xsl:template>

    <xsl:template match="/|node()" priority="0">
        <xsl:copy>
            <xsl:apply-templates></xsl:apply-templates>
        </xsl:copy>
    </xsl:template>
                
</xsl:stylesheet>