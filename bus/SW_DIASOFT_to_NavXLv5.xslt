<?xml version="1.0" encoding="windows-1251" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" encoding="windows-1251"/>

    <xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
        <xsl:if test="@Name = 'Institution'">
            <Object Name="CUSTOMER">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="Property[@Name='INSTITUTIONID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAY_ID2">
                    <xsl:value-of select="Property[@Name='BRIEF']">
                    </xsl:value-of>
                </Property>

                <Property Name ="BICDOM">
                    <xsl:value-of select="Property[@Name='BIC']">
                    </xsl:value-of>
                </Property>

                <Property Name ="INN">
                    <xsl:value-of select="Property[@Name='INN']">
                    </xsl:value-of>
                </Property>

                <Property Name ="SPFS">
                    <xsl:value-of select="Property[@Name='SWIFT']">
                    </xsl:value-of>
                </Property>

                <Property Name ="OKPO">
                    <xsl:value-of select="Property[@Name='OKPO']">
                    </xsl:value-of>
                </Property>

                <Property Name ="COUNTRY_NAME">
                    <xsl:value-of select="Property[@Name='COUNTRY']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CUSTID">
                    <xsl:value-of select="Property[@Name='BRIEF']">
                    </xsl:value-of>
                </Property>

                <Property Name ="SEC_ROLES">
                    <xsl:value-of select="Property[@Name='RELATIONTYPEINT']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='PROPDEALPART'] = 0)">
                        <Property Name ="CUSTNAME">
                            <xsl:value-of select="(concat(Property[@Name='NAME'],' ',Property[@Name='NAME1'],' ',Property[@Name='NAME2']))">
                            </xsl:value-of>
                        </Property>                            
                        <Property Name ="ENGLISH1">
                            <xsl:value-of select="''">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CUSTNAME">
                            <xsl:value-of select="Property[@Name='NAME']">
                            </xsl:value-of>
                        </Property>
                        <Property Name ="ENGLISH1">
                            <xsl:value-of select="Property[@Name='NAME1']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="((Property[@Name='VERSIONAPI'] != 'tkb') and (Property[@Name='VERSIONAPI'] != 'open'))">
                            <xsl:choose>
                            <xsl:when test="(Property[@Name='PROPDEALPART'] = 0)">
                                    <Property Name ="FIZIK">
                                        <xsl:value-of select="'True'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:when>
                                <xsl:otherwise>
                                    <Property Name ="FIZIK">
                                        <xsl:value-of select="'False'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:otherwise>
                            </xsl:choose>

                            <xsl:choose>
                                <xsl:when test="(Property[@Name='INSTTYPE'] = 1)">
                                    <Property Name ="BANK">
                                        <xsl:value-of select="'True'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:when>
                                <xsl:otherwise>
                                    <Property Name ="BANK">
                                        <xsl:value-of select="'False'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:otherwise>
                            </xsl:choose>

                            <xsl:choose>
                                <xsl:when test="(Property[@Name='INSTTYPE'] = 3)">
                                    <Property Name ="FILIAL">
                                        <xsl:value-of select="'True'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:when>
                                <xsl:otherwise>
                                    <Property Name ="FILIAL">
                                        <xsl:value-of select="'False'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:otherwise>
                            </xsl:choose>

                            <xsl:choose>
                                <xsl:when test="(Property[@Name='MAINMEMBER'] = 1)">
                                    <Property Name ="RESIDENT">
                                        <xsl:value-of select="'True'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:when>
                                <xsl:otherwise>
                                    <Property Name ="RESIDENT">
                                        <xsl:value-of select="'False'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:otherwise>
                            </xsl:choose>

                            <xsl:choose>
                                <xsl:when test="(Property[@Name='INSTTYPE'] = 0)">
                                    <Property Name ="CB_TYPE">
                                        <xsl:value-of select="'C'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:when>
                                <xsl:when test="(Property[@Name='INSTTYPE'] = 1)">
                                    <Property Name ="CB_TYPE">
                                        <xsl:value-of select="'B'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:when>
                                <xsl:otherwise>
                                    <Property Name ="CB_TYPE">
                                        <xsl:value-of select="'F'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:otherwise>
                            </xsl:choose>

                    </xsl:when>
                    <xsl:otherwise>
                            <xsl:choose>
                                <xsl:when test="(Property[@Name='INSTTYPE'] = 0)">
                                    <Property Name ="CB_TYPE">
                                        <xsl:value-of select="'C'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:when>
                                <xsl:when test="(Property[@Name='INSTTYPE'] = 1)">
                                    <Property Name ="CB_TYPE">
                                        <xsl:value-of select="'B'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:when>
                                <xsl:otherwise>
                                    <Property Name ="CB_TYPE">
                                        <xsl:value-of select="'F'">
                                        </xsl:value-of>
                                    </Property>
                                </xsl:otherwise>
                            </xsl:choose>

                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="EMAIL">
                    <xsl:value-of select="Property[@Name='EMAIL']">
                    </xsl:value-of>
                </Property>

                <Property Name ="TELEX">
                    <xsl:value-of select="Property[@Name='TELEX']">
                    </xsl:value-of>
                </Property>

                <Property Name ="SHTNAME">
                    <xsl:value-of select="Property[@Name='BRIEF']">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="NCLASS">
                    <xsl:value-of select="840">
                    </xsl:value-of>
                </Property>
            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'Securities'">
            <Object Name="INSTRUMENT">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="Property[@Name='SECURITYID']">
                    </xsl:value-of>
                </Property>

                                <xsl:choose>
                                    <xsl:when test="(Property[@Name='COUPONCALCYEAR'] = 366)">
                                        <Property Name ="DAY_COUNT_CONVENTION">
                                            <xsl:value-of select="1">
                                            </xsl:value-of>
                                        </Property>
                                    </xsl:when>
                                    <xsl:when test="(Property[@Name='COUPONCALCYEAR'] = 365)">
                                        <Property Name ="DAY_COUNT_CONVENTION">
                                            <xsl:value-of select="'2'">
                                            </xsl:value-of>
                                        </Property>
                                    </xsl:when>

                                    <xsl:when test="(Property[@Name='COUPONCALCYEAR'] = 360)">
                                        <xsl:choose>
                                            <xsl:when test="(Property[@Name='COUPONCALCPERIOD'] = 365)">
                                                <Property Name ="DAY_COUNT_CONVENTION">
                                                    <xsl:value-of select="'4'">
                                                    </xsl:value-of>
                                                </Property>
                                            </xsl:when>
                                            <xsl:when test="(Property[@Name='COUPONCALCPERIOD'] = 360)">
                                                <Property Name ="DAY_COUNT_CONVENTION">
                                                    <xsl:value-of select="'5'">
                                                    </xsl:value-of>
                                                </Property>
                                          </xsl:when>
                                        </xsl:choose>
                                    </xsl:when>
                                </xsl:choose>
                                
                <Property Name ="INSTRUMENT_CODE">
                    <xsl:value-of select="Property[@Name='SECURITYID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAY_ID2">
                    <xsl:value-of select="Property[@Name='MNEMONICCODE']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='TYPE'] = 0 or Property[@Name='TYPE'] = 1)">
                        <Property Name ="INSTRUMENTTYPE_CODE">
                            <xsl:value-of select="'SHAR'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:when test="(Property[@Name='TYPE'] = 2 or Property[@Name='TYPE'] = 3)">
                        <Property Name ="INSTRUMENTTYPE_CODE">
                            <xsl:value-of select="'BOND'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:when test="(Property[@Name='TYPE'] = 'OFBU' or Property[@Name='TYPE'] = 5)">
                        <Property Name ="INSTRUMENTTYPE_CODE">
                            <xsl:value-of select="'OFBU'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="INSTRUMENTTYPE_CODE">
                            <xsl:value-of select="'AGDR'">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="INSTRUMENT_FULL_NAME">
                    <xsl:value-of select="Property[@Name='NAME']">
                    </xsl:value-of>
                </Property>

                <Property Name ="INSTRUMENT_SHORT_NAME">
                    <xsl:value-of select="Property[@Name='MNEMONICCODE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="EMITENT">
                    <xsl:value-of select="Property[@Name='ISSUERID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="ISIN">
                    <xsl:value-of select="Property[@Name='ISIN']">
                    </xsl:value-of>
                </Property>

                <Property Name ="NUMBER_REGISTR">
                    <xsl:value-of select="Property[@Name='REGNUM']">
                    </xsl:value-of>
                </Property>

                <Property Name ="COUNT_EMISSION">
                    <xsl:value-of select="Property[@Name='ISSUEVOLUME']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='REGISTRATIONDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='REGISTRATIONDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="DATE_REGISTR">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="DATE_REGISTR">
                                    <xsl:value-of select="Property[@Name='REGISTRATIONDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>

                    <xsl:when test="(((substring(Property[@Name='STARTDISTRIBUTIONDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='STARTDISTRIBUTIONDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="ISSUE_DATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>

                    <xsl:otherwise>
                                <Property Name ="ISSUE_DATE">
                                    <xsl:value-of select="Property[@Name='STARTDISTRIBUTIONDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='PLANRETIREMENTDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='PLANRETIREMENTDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="MATURITY_DATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="MATURITY_DATE">
                                    <xsl:value-of select="Property[@Name='PLANRETIREMENTDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='ISMAINISSUE'] = 1)">
                        <Property Name ="RELEASE">
                            <xsl:value-of select="'True'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="RELEASE">
                            <xsl:value-of select="'False'">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

				<xsl:choose>
                    <xsl:when test="(Property[@Name='TYPE'] = 4)">
                        <Property Name ="NOMINAL">
                            <xsl:value-of select="''">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="NOMINAL">
                            <xsl:value-of select="Property[@Name='NOMINAL']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>
 
                <xsl:choose>
                    <xsl:when test="(Property[@Name='NOMINALCURRENCY'] = 'RUR')">
                        <Property Name ="CURRENCY">
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CURRENCY">
                            <xsl:value-of select="Property[@Name='NOMINALCURRENCY']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="COUPONRATE">
                    <xsl:value-of select="Property[@Name='INTEREST']">
                    </xsl:value-of>
                </Property>

                <Property Name ="ADDINFO">
                    <xsl:value-of select="Property[@Name='COMMENT_']">
                    </xsl:value-of>
                </Property>

                <Property Name ="STATE">
                    <xsl:value-of select="Property[@Name='STATE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="NCLASS">
                    <xsl:value-of select="850">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="LOMBARD_LIST">
                    <xsl:value-of select="Property[@Name='IISINLOMBARD_LIST']">
                    </xsl:value-of>
                </Property>

                                <xsl:choose>
                                      <xsl:when test="(Property[@Name='COUPONROUNDING'] = 0)">
                                              <Property Name ="ROUND_TYPE">
                                              <xsl:value-of select="1">
                                              </xsl:value-of>
                                              </Property>
                                      </xsl:when>
                                      <xsl:when test="(Property[@Name='COUPONROUNDING'] = 1)">
                                              <Property Name ="ROUND_TYPE">
                                              <xsl:value-of select="0">
                                              </xsl:value-of>
                                              </Property>
                                      </xsl:when>
                                </xsl:choose>

                <Property Name ="BASE_INSTRUMENT">
                    <xsl:value-of select="Property[@Name='BASESECURITY']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='TYPE'] = 4)">
                        <Property Name ="COUNT_BASE_INSTRUMENT">
                            <xsl:value-of select="Property[@Name='NOMINAL']">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="COUNT_BASE_INSTRUMENT">
                            <xsl:value-of select="Property[@Name='COUNT_BASE_INSTRUMENT']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="BASE_INSTRUMENT_OPERDAYID">
                    <xsl:value-of select="Property[@Name='BASE_INSTRUMENT_CODE']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='LOMBDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='LOMBDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="LOMBARD_DATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="LOMBARD_DATE">
                                    <xsl:value-of select="Property[@Name='LOMBDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'Coupons'">
            <Object Name="INSTRUMENTCASHFLOW">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="SOURCESYSTEM">
                    <xsl:value-of select="'SW_DIASOFT'">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="(concat('C', Property[@Name='COUPONID']))">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAYINSTR_ID1">
                    <xsl:value-of select="Property[@Name='PARENTID']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='STARTCOUPONPERIOD'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='STARTCOUPONPERIOD'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="START_DATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="START_DATE">
                                    <xsl:value-of select="Property[@Name='STARTCOUPONPERIOD']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='PLANRETIREMENTDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='PLANRETIREMENTDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="MATURITY_DATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="MATURITY_DATE">
                                    <xsl:value-of select="Property[@Name='PLANRETIREMENTDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

               <Property Name ="YIELD">
                    <xsl:value-of select="Property[@Name='PERCENTRATE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="SUMMA">
                    <xsl:value-of select="Property[@Name='AMOUNT']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PAYM_TYPE">
                    <xsl:value-of select="0">
                    </xsl:value-of>
                </Property>

                <Property Name ="NCLASS">
                    <xsl:value-of select="860">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>
            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'Amortizations'">
            <Object Name="INSTRUMENTCASHFLOW">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="SOURCESYSTEM">
                    <xsl:value-of select="'SW_DIASOFT'">
                    </xsl:value-of>
                </Property>


                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="(concat('A', Property[@Name='AMORTIZATIONID']))">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAYINSTR_ID1">
                    <xsl:value-of select="Property[@Name='PARENTID']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='PLANAMORTIZATIONDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='PLANAMORTIZATIONDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="MATURITY_DATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="MATURITY_DATE">
                                    <xsl:value-of select="Property[@Name='PLANAMORTIZATIONDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="YIELD">
                    <xsl:value-of select="Property[@Name='PERCENTRATE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="SUMMA">
                    <xsl:value-of select="Property[@Name='AMOUNT']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PAYM_TYPE">
                    <xsl:value-of select="2">
                    </xsl:value-of>
                </Property>

                <Property Name ="NCLASS">
                    <xsl:value-of select="860">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>
            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'Redemptions'">
            <Object Name="INSTRUMENTCASHFLOW">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="SOURCESYSTEM">
                    <xsl:value-of select="'SW_DIASOFT'">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="(concat('R', Property[@Name='REDEMPTIONID']))">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAYINSTR_ID1">
                    <xsl:value-of select="Property[@Name='PARENTID']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='REPURCHASEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='REPURCHASEDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="MATURITY_DATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="MATURITY_DATE">
                                    <xsl:value-of select="Property[@Name='REPURCHASEDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>
                
                <Property Name ="SUMMA">
                    <xsl:value-of select="Property[@Name='REPURCHASEPRICE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PAYM_TYPE">
                    <xsl:value-of select="1">
                    </xsl:value-of>
                </Property>

                <Property Name ="NCLASS">
                    <xsl:value-of select="860">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>
            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'DealTransact'">
            <Object Name="TRANSACTIONS">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>
 
                <Property Name ="IDDEALRN">
                    <xsl:value-of select="Property[@Name='TICKET']">
                    </xsl:value-of>
                </Property>

                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="Property[@Name='DEALTRANSACTID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="IDDEALEXTSYSTEM">
                    <xsl:value-of select="Property[@Name='DEALID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="IDNETTING">
                    <xsl:value-of select="Property[@Name='NETTTRANID']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='FUNDBRIEF'] = 'RUR')">
                        <Property Name ="CCY">
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>

                    <xsl:otherwise>
                        <Property Name ="CCY">
                            <xsl:value-of select="Property[@Name='FUNDBRIEF']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="AMOUNT">
                    <xsl:value-of select="Property[@Name='QTY']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="DATEFACT">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="DATEFACT">
                                    <xsl:value-of select="Property[@Name='VALUEDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="AMIUNTDIRECTION">
                    <xsl:value-of select="Property[@Name='DIRECTION']">
                    </xsl:value-of>
                </Property>

                <Property Name ="TRNID">
                    <xsl:value-of select="Property[@Name='TRANSACTTYPE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="TRNIDRN">
                    <xsl:value-of select="Property[@Name='SW_TYPE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PARENT_IDDEALRN">
                    <xsl:value-of select="Property[@Name='PARENTTICKET']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PARENT_IDDEALEXTSYSTEM">
                    <xsl:value-of select="Property[@Name='PARENTDEALID']">
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

                <Property Name ="NCLASS">
                    <xsl:value-of select="810">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="ISROLLOVER">
                    <xsl:value-of select="Property[@Name='ROLLOVER']">
                    </xsl:value-of>
                </Property>

            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'MMDeal'">
            <Object Name="DP">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="Property[@Name='DEALID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CUSTID">
                    <xsl:value-of select="Property[@Name='CONTRBRIEF']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CUST_ODB_2">
                    <xsl:value-of select="Property[@Name='CONTRBRIEF']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CUST_ODB">
                    <xsl:value-of select="Property[@Name='CONTRID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="AMOUNT">
                    <xsl:variable name="var1" select="Property[@Name='QTY']"/>
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
                    <xsl:value-of select="$var2">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='FUNDBRIEF'] = 'RUR')">
                        <Property Name ="CCY">
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>

                    <xsl:otherwise>
                        <Property Name ="CCY">
                            <xsl:value-of select="Property[@Name='FUNDBRIEF']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="RATE">
                    <xsl:value-of select="Property[@Name='RATE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="BASE_">
                    <xsl:value-of select="Property[@Name='PRCBASE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="ADDINFO">
                    <xsl:value-of select="Property[@Name='COMMENT_']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="VALUEDATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="VALUEDATE">
                                    <xsl:value-of select="Property[@Name='VALUEDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='FIXDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='FIXDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="MATURITY">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="MATURITY">
                                    <xsl:value-of select="Property[@Name='FIXDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='TRADEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='TRADEDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="TRADEDATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="TRADEDATE">
                                    <xsl:value-of select="Property[@Name='TRADEDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="TRADETIME">
                    <xsl:value-of select="Property[@Name='TRADEDATE']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='DEALTYPE'] = 0)">
                        <Property Name ="TRAN">
                            <xsl:value-of select="'T'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="TRAN">
                            <xsl:value-of select="'P'">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="BROKER">
                    <xsl:value-of select="Property[@Name='TRADERBRIEF']">
                    </xsl:value-of>
                </Property>

                <Property Name ="INTEREST">
                    <xsl:value-of select="Property[@Name='PRCQTY']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PARENTDEALSYSTEM">
                    <xsl:value-of select="Property[@Name='TRADINGSYSBRIEF']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PARENTDEALID">
                    <xsl:value-of select="Property[@Name='TRADINGSYSNUM']">
                    </xsl:value-of>
                </Property>

                <Property Name ="TICKET">
                    <xsl:value-of select="Property[@Name='TICKET']">
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

                <Property Name ="NCLASS">
                    <xsl:value-of select="830">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>
            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'FXDeal'">
            <Object Name="FX">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="Property[@Name='DEALID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CUSTID">
                    <xsl:value-of select="Property[@Name='CONTRBRIEF']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CUST_ODB_2">
                    <xsl:value-of select="Property[@Name='CONTRBRIEF']">
                    </xsl:value-of>
                </Property>

                <Property Name ="CUST_ODB">
                    <xsl:value-of select="Property[@Name='CONTRID']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='FUNDBUYBRIEF'] = 'RUR')">
                        <Property Name ="CB">
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CB">
                            <xsl:value-of select="Property[@Name='FUNDBUYBRIEF']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='FUNDSELLBRIEF'] = 'RUR')">
                        <Property Name ="CS">
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CS">
                            <xsl:value-of select="Property[@Name='FUNDSELLBRIEF']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="BUY">
                    <xsl:variable name="var3" select="Property[@Name='QTYBUY']"/>
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
                <Property Name ="SELL">
                    <xsl:variable name="var5" select="Property[@Name='QTYSELL']"/>
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

                <Property Name ="BUYSWAP">
                    <xsl:variable name="var7" select="Property[@Name='QTYBUYBACK']"/>
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
                    <xsl:variable name="var9" select="Property[@Name='QTYSELLBACK']"/>
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

                <Property Name ="RATE">
                    <xsl:value-of select="Property[@Name='COURSE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="SWAPRATE">
                    <xsl:value-of select="Property[@Name='COURSEBACK']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='VALUEDATEBUY'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATEBUY'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="VALUEBUY">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="VALUEBUY">
                                    <xsl:value-of select="Property[@Name='VALUEDATEBUY']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='VALUEDATESELL'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATESELL'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="VALUESELL">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="VALUESELL">
                                    <xsl:value-of select="Property[@Name='VALUEDATESELL']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

        <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='VALUEDATEBBACK'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATEBBACK'], 1, 10)) = '1899-12-30'))">
                        <Property Name ="VALUEBUYSWAP">
                            <xsl:value-of select="''">
                            </xsl:value-of>
                        </Property>
            </xsl:when>
                <xsl:otherwise>
                    <Property Name ="VALUEBUYSWAP">
                            <xsl:value-of select="Property[@Name='VALUEDATEBBACK']">
                            </xsl:value-of>
                    </Property>
            </xsl:otherwise>
        </xsl:choose>

        <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='VALUEDATEBBACK'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATEBBACK'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="VALUESELLSWAP">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
            </xsl:when>
            <xsl:otherwise>
                                <Property Name ="VALUESELLSWAP">
                                    <xsl:value-of select="Property[@Name='VALUEDATESBACK']">
                                    </xsl:value-of>
                                </Property>
            </xsl:otherwise>
        </xsl:choose>

                <Property Name ="ADDINFO">
                    <xsl:value-of select="Property[@Name='COMMENT_']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='TRADEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='TRADEDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="TRADEDATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="TRADEDATE">
                                    <xsl:value-of select="Property[@Name='TRADEDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="TRADETIME">
                    <xsl:value-of select="Property[@Name='TRADEDATE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PARENTDEALSYSTEM">
                    <xsl:value-of select="Property[@Name='TRADINGSYSBRIEF']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PARENTDEALID">
                    <xsl:value-of select="Property[@Name='TRADINGSYSNUM']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((Property[@Name='DEALNATURE'] = 1) or (Property[@Name='DEALNATURE'] = 4)) and Property[@Name='DEALTYPE'] = 0)">
                        <xsl:choose>
                            <xsl:when test="(Property[@Name='COURSETYPE'] = 0)">
                                <Property Name ="SWAP">
                                    <xsl:value-of select="'BS'">
                                    </xsl:value-of>
                                </Property>
                            </xsl:when>
                            <xsl:otherwise>
                                <Property Name ="SWAP">
                                    <xsl:value-of select="'SB'">
                                    </xsl:value-of>
                                </Property>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>

                    <xsl:when test="(((Property[@Name='DEALNATURE'] = 1) or (Property[@Name='DEALNATURE'] = 4)) and Property[@Name='DEALTYPE'] = 1)">
                        <xsl:choose>
                            <xsl:when test="(Property[@Name='COURSETYPE'] = 0)">
                                <Property Name ="SWAP">
                                    <xsl:value-of select="'SB'">
                                    </xsl:value-of>
                                </Property>
                            </xsl:when>
                            <xsl:otherwise>
                                <Property Name ="SWAP">
                                    <xsl:value-of select="'BS'">
                                    </xsl:value-of>
                                </Property>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>
                    <xsl:when test="(((Property[@Name='DEALNATURE'] != 1) and (Property[@Name='DEALNATURE'] != 4)) and Property[@Name='DEALTYPE'] = 0)">
                        <xsl:choose>
                            <xsl:when test="(Property[@Name='COURSETYPE'] = 0)">
                                <Property Name ="SWAP">
                                    <xsl:value-of select="'B'">
                                    </xsl:value-of>
                                </Property>
                            </xsl:when>
                            <xsl:otherwise>
                                <Property Name ="SWAP">
                                    <xsl:value-of select="'S'">
                                    </xsl:value-of>
                                </Property>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:when>

                    <xsl:otherwise>
                        <xsl:choose>
                            <xsl:when test="(Property[@Name='COURSETYPE'] = 0)">
                                <Property Name ="SWAP">
                                    <xsl:value-of select="'S'">
                                    </xsl:value-of>
                                </Property>
                            </xsl:when>
                            <xsl:otherwise>
                                <Property Name ="SWAP">
                                    <xsl:value-of select="'B'">
                                    </xsl:value-of>
                                </Property>
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="((Property[@Name='DEALNATURE'] = 1) or Property[@Name='DEALNATURE'] = 4)">
                        <Property Name ="ISSWAPDEAL">
                            <xsl:value-of select="'True'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="ISSWAPDEAL">
                            <xsl:value-of select="'False'">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="BROKER">
                    <xsl:value-of select="Property[@Name='TRADERBRIEF']">
                    </xsl:value-of>
                </Property>

                <Property Name ="SWAPDEALID">
                    <xsl:value-of select="Property[@Name='DEALID1']">
                    </xsl:value-of>
                </Property>

                <Property Name ="TICKET">
                    <xsl:value-of select="Property[@Name='TICKET']">
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

                <Property Name ="NCLASS">
                    <xsl:value-of select="820">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>
            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'SecDeal'">
            <Object Name="SEC_DEAL">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="Property[@Name='DEALID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="DEAL_ID">
                    <xsl:value-of select="Property[@Name='TICKET']">
                    </xsl:value-of>
                </Property>

                <Property Name ="NCLASS">
                    <xsl:value-of select="870">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>
            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'Bill'">
            <Object Name="INSTRUMENT">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="OPERDAY_ID1">
                    <xsl:value-of select="Property[@Name='SECURITYID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="INSTRUMENT_CODE">
                    <xsl:value-of select="Property[@Name='SECURITYID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="INSTRUMENT_SHORT_NAME">
                    <xsl:value-of select="Property[@Name='MNEMONICCODE']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='TYPE'] = 0 or Property[@Name='TYPE'] = 1)">
                        <Property Name ="INSTRUMENTTYPE_CODE">
                            <xsl:value-of select="'SHAR'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:when test="(Property[@Name='TYPE'] = 2 or Property[@Name='TYPE'] = 3)">
                        <Property Name ="INSTRUMENTTYPE_CODE">
                            <xsl:value-of select="'BOND'">
                            </xsl:value-of>
                        </Property>

                    </xsl:when>
                    <xsl:when test="(Property[@Name='TYPE'] = 'PNOT')">
                        <Property Name ="INSTRUMENTTYPE_CODE">
                            <xsl:value-of select="'PNOT'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="INSTRUMENTTYPE_CODE">
                            <xsl:value-of select="'AGDR'">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="COUPONCALCSUMMTYPE">
                    <xsl:value-of select="Property[@Name='COUPONCALCSUMMTYPE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="INSTRUMENT_FULL_NAME">
                    <xsl:value-of select="Property[@Name='NAME']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='STARTDISTRIBUTIONDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='STARTDISTRIBUTIONDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="ISSUE_DATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="ISSUE_DATE">
                                    <xsl:value-of select="Property[@Name='STARTDISTRIBUTIONDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='PLANRETIREMENTDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='PLANRETIREMENTDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="MATURITY_DATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="MATURITY_DATE">
                                    <xsl:value-of select="Property[@Name='PLANRETIREMENTDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="NOMINAL">
                    <xsl:value-of select="Property[@Name='NOMINAL']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='NOMINALCURRENCY'] = 'RUR')">
                        <Property Name ="CURRENCY">
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property>
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CURRENCY">
                            <xsl:value-of select="Property[@Name='NOMINALCURRENCY']">
                            </xsl:value-of>
                        </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="STATE">
                    <xsl:value-of select="Property[@Name='STATE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="COUPONCALCSUMMTYPE">
                    <xsl:value-of select="Property[@Name='COUPONCALCSUMMTYPE']">
                    </xsl:value-of>
                </Property>

                <Property Name ="COUPONRATE">
                    <xsl:value-of select="Property[@Name='INTEREST']">
                    </xsl:value-of>
                </Property>

                <Property Name ="YIELDTYPE">
                    <xsl:value-of select="Property[@Name='YIELDTYPE']">
                    </xsl:value-of>
                </Property>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='REGISTRATIONDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='REGISTRATIONDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="DATE_REGISTR">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="DATE_REGISTR">
                                    <xsl:value-of select="Property[@Name='REGISTRATIONDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="EMITENT">
                    <xsl:value-of select="Property[@Name='ISSUER']">
                    </xsl:value-of>
                </Property>

                <Property Name ="PRICE_TYPE">
                    <xsl:value-of select="Property[@Name='PRICE_TYPE']">
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

                <Property Name ="BILL_TYPE_DISCOUNT_PCT">
                    <xsl:value-of select="Property[@Name='BILL_TYPE_DISCOUNT_PCT']">
                    </xsl:value-of>
                </Property>

                <Property Name ="BILL_CREATE_ADDRESS">
                    <xsl:value-of select="Property[@Name='BILL_CREATE_ADDRESS']">
                    </xsl:value-of>
                </Property>

                <Property Name ="BILL_PAY_ADDRESS">
                    <xsl:value-of select="Property[@Name='BILL_PAY_ADDRESS']">
                    </xsl:value-of>
                </Property>

                <Property Name ="BILL_HOLDER_ID">
                    <xsl:value-of select="Property[@Name='BILL_HOLDER_ID']">
                    </xsl:value-of>
                </Property>

                <Property Name ="BILL_PAYER_ID">
                   <xsl:value-of select="Property[@Name='BILL_PAYER_ID']">
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

                <Property Name ="NCLASS">
                    <xsl:value-of select="850">
                    </xsl:value-of>
                </Property>

                <Property Name ="EVENTID">
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property>
            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'InstRelation'">
            <Object Name="vw_T_TRANSACTIONS">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="NCLASS"> 
                    <xsl:value-of select="880">
                    </xsl:value-of>
                </Property> 

                <Property Name ="OPERDAY_ID1"> 
                    <xsl:value-of select="Property[@Name='ID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="EVENTID"> 
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="DEALTYPE"> 
                    <xsl:value-of select="'NT'">
                    </xsl:value-of>
                </Property> 

                <Property Name ="AMOUNT"> 
                    <xsl:value-of select="Property[@Name='QTY']">
                    </xsl:value-of>
                </Property> 

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='DATE_'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='DATE_'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="VALUEDATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="VALUEDATE">
                                    <xsl:value-of select="Property[@Name='DATE_']">
                                    </xsl:value-of>
                                </Property>

                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='FIXDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='FIXDATE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="VALUEDATE_FACT">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="VALUEDATE_FACT">
                                    <xsl:value-of select="Property[@Name='FIXDATE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="OWNER_ACC"> 
                    <xsl:value-of select="Property[@Name='RESOURCEBRIEF']">
                    </xsl:value-of>
                </Property> 

                <xsl:choose>
                    <xsl:when test="(Property[@Name='FUNDBRIEF'] = 'RUR')">
                        <Property Name ="CCY"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                     </xsl:when>
                     <xsl:otherwise>
                        <Property Name ="CCY"> 
                            <xsl:value-of select="Property[@Name='FUNDBRIEF']">
                            </xsl:value-of>
                        </Property> 
                     </xsl:otherwise>
                </xsl:choose>

                <Property Name ="CID"> 
                    <xsl:value-of select="Property[@Name='INSTCHILDID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="INSTRUMENT_ID"> 
                    <xsl:value-of select="Property[@Name='SECID']">
                    </xsl:value-of>
                </Property> 

            </Object>

        </xsl:if>

        <xsl:if test="@Name = 'Resource'">
            <Object Name="NOSTRO">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="NCLASS"> 
                    <xsl:value-of select="890">
                    </xsl:value-of>
                </Property> 

                <Property Name ="OPERDAY_ID1"> 
                    <xsl:value-of select="Property[@Name='RESOURCEID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="EVENTID"> 
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="ACCOUNT"> 
                    <xsl:value-of select="Property[@Name='BRIEF']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="BANKNAME"> 
                    <xsl:value-of select="Property[@Name='BRIEF']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="STATUS"> 
                    <xsl:value-of select="Property[@Name='RESTYPE']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="CID_ODB"> 
                    <xsl:value-of select="Property[@Name='INSTOWNERID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="FILIAL_ODB"> 
                    <xsl:value-of select="Property[@Name='INSTBALANCEID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="SEC_AGREEMENT_OPERDAY_ID"> 
                    <xsl:value-of select="Property[@Name='INSTRELATIONID']">
                    </xsl:value-of>
                </Property> 

                <xsl:choose>
                    <xsl:when test="(Property[@Name='RESOURCECCY'] = 'RUR')">
                        <Property Name ="INSTRUMENT_ID"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="INSTRUMENT_ID"> 
                            <xsl:value-of select="Property[@Name='RESOURCECCY']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>
              
                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='RELDATESTART'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='RELDATESTART'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="AGREEMENT_BEGINDATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>

                    <xsl:otherwise>
                                <Property Name ="AGREEMENT_BEGINDATE">
                                    <xsl:value-of select="Property[@Name='RELDATESTART']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='RELDATECLOSE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='RELDATECLOSE'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="AGREEMENT_ENDDATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="AGREEMENT_ENDDATE">
                                    <xsl:value-of select="Property[@Name='RELDATECLOSE']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="AGREEMENT_ISACTIVE"> 
                    <xsl:value-of select="Property[@Name='ISRELOPEN']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="AGREEMENT_NUMBER"> 
                    <xsl:value-of select="Property[@Name='RELNUMBER']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="STATE"> 
                    <xsl:value-of select="Property[@Name='ISTOTAL']">
                    </xsl:value-of>
                </Property> 

            </Object>

        </xsl:if>

        <xsl:if test="@Name = 'Turn'">
            <Object Name="vw_T_TRANSACTIONS">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>

                <Property Name ="NCLASS"> 
                    <xsl:value-of select="881">
                    </xsl:value-of>
                </Property> 

                <Property Name ="OPERDAY_ID1"> 
                    <xsl:value-of select="Property[@Name='TURN_ID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="EVENTID"> 
                    <xsl:value-of select="Property[@Name='EVENTID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="DEALTYPE"> 
                    <xsl:value-of select="'NT'">
                    </xsl:value-of>
                </Property> 

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='DATE_'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='DATE_'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="VALUEDATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="VALUEDATE">
                                    <xsl:value-of select="Property[@Name='DATE_']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='DATE_'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='DATE_'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="VALUEDATE_FACT">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="VALUEDATE_FACT">
                                    <xsl:value-of select="Property[@Name='DATE_']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='DATE_'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='DATE_'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="TRADEDATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="TRADEDATE">
                                    <xsl:value-of select="Property[@Name='DATE_']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(Property[@Name='FUNDBRIEF'] = 'RUR')">
                        <Property Name ="CCY"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>

                    <xsl:otherwise>
                        <Property Name ="CCY"> 
                            <xsl:value-of select="Property[@Name='FUNDBRIEF']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="OWNER_ACC_ID"> 
                    <xsl:value-of select="Property[@Name='RESOURCEID']">
                    </xsl:value-of>
                </Property> 

                <Property Name ="AMOUNT"> 
                    <xsl:variable name="var11" select="Property[@Name='TURNQTY']" /> 
                    <xsl:variable name="var12">
                        <xsl:choose>
                            <xsl:when test="(Property[@Name='DEBCRE'] = '0')">
                                <xsl:value-of select="-$var11" /> 
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="$var11" /> 
                            </xsl:otherwise>
                        </xsl:choose>
                    </xsl:variable>
                    <xsl:value-of select="$var12" /> 
                </Property>

                <Property Name ="ADDAMOUNT"> 
                    <xsl:choose>
                        <xsl:when test="((string-length(Property[@Name='RESTARREST'])) &gt; 0)">
                            <xsl:variable name="var14" select="Property[@Name='RESTARREST']" /> 
                            <xsl:variable name="var15">
                                <xsl:choose>
                                    <xsl:when test="$var14 = 0">
                                        <xsl:value-of select="$var14" /> 
                                    </xsl:when>

                                    <xsl:otherwise>
                                        <xsl:value-of select="-$var14" /> 
                                    </xsl:otherwise>
                                </xsl:choose>
                            </xsl:variable>
                            <xsl:value-of select="$var15" /> 
                        </xsl:when>
                        <xsl:otherwise>
                            <xsl:value-of select="0" /> 
                        </xsl:otherwise>
                    </xsl:choose>
                </Property>

            </Object>

        </xsl:if>

        <xsl:if test="@Name = 'Rest'">
            <Object Name="ACCBALANCE">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>
                        
                <Property Name ="OWNER_ACC_ID"> 
                    <xsl:value-of select="Property[@Name='RESOURCEID']">
                    </xsl:value-of>
                </Property> 
                        
                <xsl:choose>
                    <xsl:when test="(Property[@Name='FUNDBRIEF'] = 'RUR')">
                        <Property Name ="CCY"> 
                            <xsl:value-of select="'RUB'">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="CCY"> 
                            <xsl:value-of select="Property[@Name='FUNDBRIEF']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>

                <xsl:choose>
                    <xsl:when test="(((substring(Property[@Name='DATE_'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='DATE_'], 1, 10)) = '1899-12-30'))">
                                <Property Name ="AMOUNTDATE">
                                    <xsl:value-of select="''">
                                    </xsl:value-of>
                                </Property>
                    </xsl:when>
                    <xsl:otherwise>
                                <Property Name ="AMOUNTDATE">
                                    <xsl:value-of select="Property[@Name='DATE_']">
                                    </xsl:value-of>
                                </Property>
                    </xsl:otherwise>
                </xsl:choose>

                <Property Name ="AMOUNT"> 
                    <xsl:value-of select="Property[@Name='RESTOUT']">
                    </xsl:value-of>
                </Property> 

            </Object>
        </xsl:if>

        <xsl:if test="@Name = 'DealStatus'">
            <xsl:if test="(Property[@Name='DEALTYPE'] = '???')">
                <Object Name="DP">
                    <xsl:for-each select = "@*[name(.) != 'Name']">
                        <xsl:attribute name = "{name(.)}">
                            <xsl:value-of select="."/>
                        </xsl:attribute>
                    </xsl:for-each>
                              
                    <Property Name ="OPERDAY_ID1">
                        <xsl:value-of select="Property[@Name='DEALID']">
                        </xsl:value-of>
                    </Property>
                        
                    <Property Name ="OPERDAY_STATUS">
                        <xsl:value-of select="Property[@Name='DEALSTATUS']">
                        </xsl:value-of>
                    </Property>

                    <Property Name ="TICKET">
                        <xsl:value-of select="Property[@Name='TICKET']">
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
                          
                    <Property Name ="NCLASS">
                        <xsl:value-of select="830">
                        </xsl:value-of>
                    </Property>
                         
                    <Property Name ="EVENTID">
                        <xsl:value-of select="Property[@Name='EVENTID']">
                        </xsl:value-of>
                    </Property>

                </Object>
            </xsl:if>
            <xsl:if test="((Property[@Name='DEALTYPE'] = 'FOREX') or (Property[@Name='DEALTYPE'] = 'SWAP') or (Property[@Name='DEALTYPE'] = 'FORWARD'))">
                <Object Name="FX">
                    <xsl:for-each select = "@*[name(.) != 'Name']">
                        <xsl:attribute name = "{name(.)}">
                            <xsl:value-of select="."/>
                        </xsl:attribute>
                    </xsl:for-each>

                    <Property Name ="OPERDAY_ID1">
                        <xsl:value-of select="Property[@Name='DEALID']">
                        </xsl:value-of>
                    </Property>
                        
                    <Property Name ="OPERDAY_STATUS">
                        <xsl:value-of select="Property[@Name='DEALSTATUS']">
                        </xsl:value-of>
                    </Property>
                            
                    <Property Name ="TICKET">
                        <xsl:value-of select="Property[@Name='TICKET']">
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
                          
                    <Property Name ="NCLASS">
                        <xsl:value-of select="820">
                        </xsl:value-of>
                    </Property>
                         
                    <Property Name ="EVENTID">
                        <xsl:value-of select="Property[@Name='EVENTID']">
                        </xsl:value-of>
                    </Property>

                </Object>
            </xsl:if>
        </xsl:if>

        <xsl:if test="@Name = 'PaymentStatus'">
            <xsl:choose>
                <xsl:when test="((string-length(Property[@Name='DEALID'])) &gt; 0)">
                    <Object Name="TRANSACTIONS">
                        <xsl:for-each select="@*[name(.) != 'Name']">
                            <xsl:attribute name="{name(.)}">
                                <xsl:value-of select="." /> 
                                </xsl:attribute>
                            </xsl:for-each>
                            
                            <xsl:if test="(Property[@Name='PAY_STATUS'] = '3')">
                              <xsl:attribute name="actnotif">
                                  <xsl:value-of select="'delete'" /> 
                              </xsl:attribute>
                            </xsl:if>
                            
                            <Property Name="NCLASS">
                                <xsl:value-of select="882" /> 
                            </Property>
                            
                            <Property Name="EVENTID">
                                <xsl:value-of select="Property[@Name='EVENTID']" /> 
                            </Property>
                            
                           <Property Name="OPERDAY_ID1">
                                <xsl:value-of select="Property[@Name='PAYMENTID']" /> 
                            </Property>
                            
                            <Property Name="IDDEALRN">
                                <xsl:value-of select="Property[@Name='TICKET']" /> 
                            </Property>
                            
                            <Property Name="AMOUNT">
                                <xsl:value-of select="Property[@Name='AMOUNT']" /> 
                            </Property>

                            <Property Name="IDDEALEXTSYSTEM">
                                <xsl:value-of select="Property[@Name='DEALID']" /> 
                            </Property>
                            
                            <xsl:choose>
                                <xsl:when test="(Property[@Name='INSTRUMENT'] = 'RUR')">
                                    <Property Name="CCY">
                                        <xsl:value-of select="'RUB'" /> 
                                    </Property>
                                </xsl:when>
                                <xsl:otherwise>
                                    <Property Name="CCY">
                                        <xsl:value-of select="Property[@Name='INSTRUMENT']" /> 
                                    </Property>
                                </xsl:otherwise>
                            </xsl:choose>
       
                            <Property Name="DATEFACT">
                                <xsl:choose>
                                    <xsl:when test="((string-length(Property[@Name='VALUEDATE_FACT'])) &gt; 0)">
                                        <xsl:choose>
                                            <xsl:when test="(((substring(Property[@Name='VALUEDATE_FACT'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATE_FACT'], 1, 10)) = '1899-12-30'))">
                                                <xsl:value-of select="''" />
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="Property[@Name='VALUEDATE_FACT']" /> 
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:when>

                                    <xsl:otherwise>
                                        <xsl:choose>
                                            <xsl:when test="(((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1899-12-30'))">
                                                <xsl:value-of select="''" />
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="Property[@Name='VALUEDATE']" /> 
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </Property>
                          
                            <xsl:choose>
                                <xsl:when test="(Property[@Name='TICKET'] > 0)">
                                    <Property Name="SOURCESYSTEM">
                                        <xsl:value-of select="'NavXLv5'" /> 
                                    </Property>
                                </xsl:when>
                                <xsl:otherwise>
                                    <Property Name="SOURCESYSTEM">
                                        <xsl:value-of select="'XXX'" /> 
                                    </Property>
                                </xsl:otherwise>
                            </xsl:choose>
                          
                            <xsl:choose>
                                <xsl:when test="(Property[@Name='AMOUNT'] > 0)">
                                    <Property Name="AMIUNTDIRECTION">
                                        <xsl:value-of select='1' /> 
                                    </Property>

                                </xsl:when>
                                <xsl:otherwise>
                                    <Property Name="AMIUNTDIRECTION">
                                        <xsl:value-of select='0' /> 
                                    </Property>
                                </xsl:otherwise>
                            </xsl:choose>
                        </Object>
                    </xsl:when>
                    <xsl:otherwise>
                        <Object Name="vw_T_TRANSACTIONS">
                            <xsl:for-each select="@*[name(.) != 'Name']">
                                <xsl:attribute name="{name(.)}">
                                    <xsl:value-of select="." /> 
                                </xsl:attribute>
                            </xsl:for-each>
                            
                            <xsl:if test="(Property[@Name='PAY_STATUS'] = '3')">
                                <xsl:attribute name="actnotif">
                                    <xsl:value-of select="'delete'" /> 
                                </xsl:attribute>
                            </xsl:if>
                            
                            <Property Name="NCLASS">
                                <xsl:value-of select="882" /> 
                            </Property>
                            
                            <Property Name="EVENTID">
                                <xsl:value-of select="Property[@Name='EVENTID']" /> 
                            </Property>
                            
                            <Property Name="OPERDAY_ID1">
                                <xsl:value-of select="Property[@Name='PAYMENTID']" /> 
                            </Property>

                            <Property Name="DEALTYPE">
                                <xsl:value-of select="'NT'" /> 
                            </Property>
                            
                            <Property Name="AMOUNT">
                                <xsl:value-of select="Property[@Name='AMOUNT']" /> 
                            </Property>
                            
                            <xsl:choose>
                                <xsl:when test="(((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1899-12-30'))">
                                            <Property Name ="VALUEDATE">
                                                <xsl:value-of select="''">
                                                </xsl:value-of>
                                            </Property>
                                </xsl:when>
                                <xsl:otherwise>
                                            <Property Name ="VALUEDATE">
                                                <xsl:value-of select="Property[@Name='VALUEDATE']">
                                                </xsl:value-of>
                                            </Property>
                                </xsl:otherwise>
                            </xsl:choose>

                            <Property Name="VALUEDATE_FACT">
                                <xsl:choose>
                                    <xsl:when test="((string-length(Property[@Name='VALUEDATE_FACT'])) &gt; 0)">
                                        <xsl:choose>
                                            <xsl:when test="(((substring(Property[@Name='VALUEDATE_FACT'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATE_FACT'], 1, 10)) = '1899-12-30'))">
                                                <xsl:value-of select="''" />
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="Property[@Name='VALUEDATE_FACT']" /> 
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:when>
                                    <xsl:otherwise>
                                        <xsl:choose>
                                            <xsl:when test="(((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='VALUEDATE'], 1, 10)) = '1899-12-30'))">
                                                <xsl:value-of select="''" />
                                            </xsl:when>
                                            <xsl:otherwise>
                                                <xsl:value-of select="Property[@Name='VALUEDATE']" /> 
                                            </xsl:otherwise>
                                        </xsl:choose>
                                    </xsl:otherwise>
                                </xsl:choose>
                            </Property>

                            <xsl:choose>
                                <xsl:when test="(Property[@Name='INSTRUMENT'] = 'RUR')">
                                    <Property Name="CCY">
                                        <xsl:value-of select="'RUB'" /> 
                                    </Property>
                                </xsl:when>
                                <xsl:otherwise>
                                    <Property Name="CCY">
                                        <xsl:value-of select="Property[@Name='INSTRUMENT']" /> 
                                    </Property>
                                </xsl:otherwise>
                            </xsl:choose>
                            
                           <Property Name="OWNER_ACC">
                                <xsl:value-of select="Property[@Name='ACC_OWNER']" /> 
                            </Property>
                            
                            <Property Name="ACCPOINTER">
                                <xsl:value-of select="Property[@Name='ACC_NOSTRO']" /> 
                            </Property>
                            
                            <Property Name="NAZN">
                                <xsl:value-of select="Property[@Name='NOTE']" /> 
                            </Property>
                    
                            <Property Name="ADD_INSTR">
                                <xsl:value-of select="Property[@Name='ADD_NOTE']" /> 
                            </Property>

                            <xsl:choose>
                                <xsl:when test="(((substring(Property[@Name='TRADEDATE'], 1, 10)) = '1900-01-01') or ((substring(Property[@Name='TRADEDATE'], 1, 10)) = '1899-12-30'))">
                                            <Property Name ="TRADEDATE">
                                                <xsl:value-of select="''">
                                                </xsl:value-of>
                                            </Property>
                                </xsl:when>
                                <xsl:otherwise>
                                            <Property Name ="TRADEDATE">
                                                <xsl:value-of select="Property[@Name='TRADEDATE']">
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
            <xsl:apply-templates></xsl:apply-templates>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
