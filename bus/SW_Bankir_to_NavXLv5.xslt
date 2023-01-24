<?xml version="1.0" ?>
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" encoding="windows-1251"/>
    <xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
        <xsl:if test="@Name = 'konv'">
            <Object Name="FX">
                <xsl:for-each select = "@*[name(.) != 'Name']">
                    <xsl:attribute name = "{name(.)}">
                        <xsl:value-of select="."/>
                    </xsl:attribute>
                </xsl:for-each>
                <xsl:choose>
                    <xsl:when test="(@actnotif='delete')">
                        <Property Name ="NCLASS"> 
                            <xsl:value-of select="90">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="OPERDAY_ID1"> 
                            <xsl:value-of select="Property[@Name='OPERDAY_ID1']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="EVENTID"> 
                            <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:when>
                    <xsl:otherwise>
                        <Property Name ="OPERDAY_ID1"> 
                            <xsl:value-of select="Property[@Name='OPERDAY_ID1']">
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
                        <Property Name ="BUYSWAP"> 
                            <xsl:variable name="var7" select="Property[@Name='BUY_SWAP']"/>
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
                            <xsl:variable name="var9" select="Property[@Name='SELL_SWAP']"/>
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
                            <xsl:value-of select="Property[@Name='RATE']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="SWAPRATE"> 
                            <xsl:value-of select="Property[@Name='SWAP_RATE']">
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
                        <Property Name ="VALUEBUYSWAP"> 
                            <xsl:value-of select="Property[@Name='ValueDateBBack']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="VALUESELLSWAP"> 
                            <xsl:value-of select="Property[@Name='ValueDateSBack']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="ADDINFO"> 
                            <xsl:value-of select="(substring(Property[@Name='ADDINFO'], 1, 250))">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="TRADEDATE"> 
                            <xsl:value-of select="Property[@Name='TRADEDATE']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="TRADETIME"> 
                            <xsl:value-of select="Property[@Name='TRADEDATE']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="ISSWAPDEAL"> 
                            <xsl:value-of select="'False'">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="NCLASS"> 
                            <xsl:value-of select="90">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="EVENTID"> 
                            <xsl:value-of select="Property[@Name='EVENTID']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="CBCASH"> 
                            <xsl:value-of select="Property[@Name='CB_NAL']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="CSCASH"> 
                            <xsl:value-of select="Property[@Name='CS_NAL']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="SEC_ACCOUNTCODE_ID"> 
                            <xsl:value-of select="Property[@Name='SEC_TRADEACCOUNT_ID2']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="TRADE_CLASSCODE"> 
                            <xsl:value-of select="Property[@Name='TRADE_CLASSCODE']">
                            </xsl:value-of>
                        </Property> 
                        <Property Name ="BOURSE_ALIASE"> 
                            <xsl:value-of select="Property[@Name='BOURSE_ALIASE']">
                            </xsl:value-of>
                        </Property> 
                    </xsl:otherwise>
                </xsl:choose>


            </Object>
        </xsl:if>
    </xsl:template>
    <xsl:template match="/|node()" priority="0">
        <xsl:copy>
            <xsl:apply-templates></xsl:apply-templates>
        </xsl:copy>
    </xsl:template>
</xsl:stylesheet>
