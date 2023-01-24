<?xml version="1.0" encoding="windows-1251"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" encoding="windows-1251"/>
	<xsl:template match="/Pocket/Body_Pocket/Object" priority="10">
		<xsl:if test="@Name = 'vw_FX'">
			<Object Name="vw_FX">
				<xsl:for-each select="@*[name(.) != 'Name']">
					<xsl:attribute name="{name(.)}">
						<xsl:value-of select="."/>
					</xsl:attribute>
				</xsl:for-each>
				<Property Name="BranchBrief">
					<xsl:value-of select="Property[@Name='FILIAL_ID_ODB2']">
					</xsl:value-of>
				</Property>
				<Property Name="ContrBrief">
					<xsl:value-of select="Property[@Name='CUSTID_MDM2']">
					</xsl:value-of>
				</Property>
				<Property Name="BrokerBrief">
					<xsl:value-of select="Property[@Name='BROKER_ODB2']">
					</xsl:value-of>
				</Property>
				<Property Name="FundBuyBrief">
					<xsl:value-of select="Property[@Name='CB']">
					</xsl:value-of>
				</Property>
				<Property Name="FundSellBrief">
					<xsl:value-of select="Property[@Name='CS']">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='BUY'] &gt; 0)">
						<Property Name="QtyBuy">
							<xsl:value-of select="Property[@Name='BUY']">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="QtyBuy">
							<xsl:value-of select="Property[@Name='BUY'] * -1">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:choose>
					<xsl:when test="(Property[@Name='SELL'] &gt; 0)">
						<Property Name="QtySell">
							<xsl:value-of select="Property[@Name='SELL']">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="QtySell">
							<xsl:value-of select="Property[@Name='SELL'] * -1">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="Course">
					<xsl:value-of select="Property[@Name='RATE']">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='SWAP'] = 'B' or Property[@Name='SWAP'] = 'BS')">
						<Property Name="CourseType">
							<xsl:value-of select="0">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="CourseType">
							<xsl:value-of select="1">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="CourseBack">
					<xsl:value-of select="Property[@Name='RATE_SWAP']">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='SWAP'] = 'B' or Property[@Name='SWAP'] = 'BS')">
						<Property Name="DealType">
							<xsl:value-of select="0">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="DealType">
							<xsl:value-of select="1">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="TradeDate">
					<xsl:value-of select="Property[@Name='TRADEDATE']">
					</xsl:value-of>
				</Property>
				<Property Name="ValueDateBuy">
					<xsl:value-of select="Property[@Name='VALUEBUY']">
					</xsl:value-of>
				</Property>
				<Property Name="ValueDateSell">
					<xsl:value-of select="Property[@Name='VALUESELL']">
					</xsl:value-of>
				</Property>
				<Property Name="ValueDateBBack">
					<xsl:value-of select="Property[@Name='VALUEBUY_SWAP']">
					</xsl:value-of>
				</Property>
				<Property Name="ValueDateSBack">
					<xsl:value-of select="Property[@Name='VALUESELL_SWAP']">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='SYSTEMID'] = 2 or Property[@Name='SYSTEMID'] = 3 or Property[@Name='SYSTEMID'] = 31 or Property[@Name='SYSTEMID'] = 32)">
						<Property Name="TradingSysNum">
							<xsl:value-of select="Property[@Name='MICEXDEAL']">
							</xsl:value-of>
						</Property>
						<Property Name="Number">
							<xsl:value-of select="Property[@Name='MICEXCLAIM']">
							</xsl:value-of>
						</Property>
						<Property Name="TradingSysBrief">
							<xsl:value-of select="'MMVB'">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="TradingSysNum">
							<xsl:value-of select="Property[@Name='R_TICKET']">
							</xsl:value-of>
						</Property>
						<Property Name="Number">
							<xsl:value-of select="Property[@Name='R_501']">
							</xsl:value-of>
						</Property>
						<Property Name="TradingSysBrief">
							<xsl:value-of select="'REUTERS'">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="TraderBrief">
					<xsl:value-of select="Property[@Name='TRADER_STR']">
					</xsl:value-of>
				</Property>
				<Property Name="Comment">
					<xsl:value-of select="concat(concat(Property[@Name='ADDINFO'], ' '), Property[@Name='R_553'])">
					</xsl:value-of>
				</Property>
				<Property Name="IsNetting">
				</Property>
				<Property Name="NettingNumber">
				</Property>
				<Property Name="IsNettingBack">
				</Property>
				<Property Name="NettingNumberBack">
				</Property>
				<Property Name="System">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="IndexFwd">
				</Property>
				<Property Name="CourseBrief">
				</Property>
				<Property Name="FundPayBrief">
				</Property>
				<Property Name="CheckSum">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="InstQty">
				</Property>
				<Property Name="InstrumentID">
				</Property>
				<Property Name="BranchID">
				</Property>
				<Property Name="ContrID">
				</Property>
				<Property Name="Acceptance">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="UpdateDate">
				</Property>
				<Property Name="ContrNumber">
				</Property>
				<Property Name="AccountDate">
				</Property>
				<Property Name="FillPI">
					<xsl:value-of select="1">
					</xsl:value-of>
				</Property>
				<Property Name="IsDerivative">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="ContrRelationID">
				</Property>
				<Property Name="BrokerRelationID">
				</Property>
				<Property Name="BrokerID">
				</Property>
				<Property Name="TraderID">
				</Property>
				<Property Name="AutoNumber">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="Ticket">
					<xsl:value-of select="Property[@Name='TICKET']">
					</xsl:value-of>
				</Property>
				<Property Name="Ticket2">
					<xsl:value-of select="Property[@Name='TICKET_SWAP']">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='SWAP'] = 'SB' or Property[@Name='SWAP'] = 'BS')">
						<Property Name="SwapID">
							<xsl:value-of select="Property[@Name='SWAP_ID']">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="SwapID">
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="OPERDAY_ID1">
					<xsl:value-of select="Property[@Name='OPERDAY_ID1']">
					</xsl:value-of>
				</Property>
				<Property Name="EventID">
					<xsl:value-of select="Property[@Name='EVENTID']">
					</xsl:value-of>
				</Property>
			</Object>
		</xsl:if>
		<xsl:if test="@Name = 'vw_DP'">
			<Object Name="vw_DP">
				<xsl:for-each select="@*[name(.) != 'Name']">
					<xsl:attribute name="{name(.)}">
						<xsl:value-of select="."/>
					</xsl:attribute>
				</xsl:for-each>
				<Property Name="BranchBrief">
					<xsl:value-of select="Property[@Name='FILIAL_ID_ODB2']">
					</xsl:value-of>
				</Property>
				<Property Name="ContrBrief">
					<xsl:value-of select="Property[@Name='CUSTID_MDM2']">
					</xsl:value-of>
				</Property>
				<Property Name="ContrNumber">
				</Property>
				<Property Name="BrokerBrief">
					<xsl:value-of select="Property[@Name='BROKER_ODB2']">
					</xsl:value-of>
				</Property>
				<Property Name="FundBrief">
					<xsl:value-of select="Property[@Name='CCY']">
					</xsl:value-of>
				</Property>
				<Property Name="Qty">
					<xsl:value-of select="Property[@Name='AMOUNT']">
					</xsl:value-of>
				</Property>
				<Property Name="Rate">
					<xsl:value-of select="Property[@Name='RATE'] div 100">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='BASE_'] = 360)">
						<Property Name="PrcBase">
							<xsl:value-of select="'ACT/360'">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:when test="(Property[@Name='BASE_'] = 365)">
						<Property Name="PrcBase">
							<xsl:value-of select="'ACT/365'">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="PrcBase">
							<xsl:value-of select="'ACT/ACT'">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:choose>
					<xsl:when test="(Property[@Name='INTEREST'] &gt; 0)">
						<Property Name="PrcQty">
							<xsl:value-of select="Property[@Name='INTEREST']">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="PrcQty">
							<xsl:value-of select="Property[@Name='INTEREST'] * -1">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<xsl:choose>
					<xsl:when test="(Property[@Name='TRAN'] = 'T')">
						<Property Name="DealType">
							<xsl:value-of select="0">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="DealType">
							<xsl:value-of select="1">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="TradeDate">
					<xsl:value-of select="Property[@Name='TRADETIME']">
					</xsl:value-of>
				</Property>
				<Property Name="ValueDate">
					<xsl:value-of select="Property[@Name='VALUEDATE']">
					</xsl:value-of>
				</Property>
				<Property Name="FixDate">
					<xsl:value-of select="Property[@Name='MATURITY']">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='INTEREST_TYPE'] = 'M')">
						<Property Name="Period">
							<xsl:value-of select="1">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:when test="(Property[@Name='INTEREST_TYPE'] = 'Q')">
						<Property Name="Period">
							<xsl:value-of select="3">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:when test="(Property[@Name='INTEREST_TYPE'] = 'Y')">
						<Property Name="Period">
							<xsl:value-of select="5">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="Period">
							<xsl:value-of select="0">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="PeriodDay">
				</Property>
				<Property Name="PayDay">
				</Property>
				<Property Name="CmnClnDir">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="TradingSysNum">
					<xsl:value-of select="Property[@Name='R_TICKET']">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='SYSTEMID'] = 2 or Property[@Name='SYSTEMID'] = 3 or Property[@Name='SYSTEMID'] = 31 or Property[@Name='SYSTEMID'] = 32)">
						<Property Name="TradingSysBrief">
							<xsl:value-of select="'ММВБ_ЕТС'">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="TradingSysBrief">
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="TraderBrief">
					<xsl:value-of select="Property[@Name='TRADER_STR']">
					</xsl:value-of>
				</Property>
				<Property Name="Number">
					<xsl:value-of select="Property[@Name='R_501']">
					</xsl:value-of>
				</Property>
				<Property Name="Comment">
					<xsl:value-of select="concat(concat(Property[@Name='ADDINFO'], ' '), Property[@Name='R_553'])">
					</xsl:value-of>
				</Property>
				<Property Name="IsNetting">
				</Property>
				<Property Name="NettingNumber">
				</Property>
				<Property Name="RolloverID">
					<xsl:value-of select="Property[@Name='TICKET_ROL']">
					</xsl:value-of>
				</Property>
				<Property Name="InstrumentID">
				</Property>
				<Property Name="BranchID">
				</Property>
				<Property Name="ContrID">
				</Property>
				<Property Name="CreditType">
				</Property>
				<Property Name="RolloverNum">
				</Property>
				<Property Name="RolloverTSNum">
				</Property>
				<Property Name="FloatRate">
				</Property>
				<Property Name="FloatRateDiff">
				</Property>
				<Property Name="AutoNumber">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="Acceptance">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="Ticket">
					<xsl:value-of select="Property[@Name='TICKET']">
					</xsl:value-of>
				</Property>
				<Property Name="EventID">
					<xsl:value-of select="Property[@Name='EVENTID']">
					</xsl:value-of>
				</Property>
			</Object>
		</xsl:if>
		<xsl:if test="@Name = 'vw_SEC_DEAL'">
			<Object Name="vw_SEC_DEAL">
				<xsl:for-each select="@*[name(.) != 'Name']">
					<xsl:attribute name="{name(.)}">
						<xsl:value-of select="."/>
					</xsl:attribute>
				</xsl:for-each>
				<Property Name="FOBrief">
				</Property>
				<Property Name="BranchBrief">
					<xsl:value-of select="Property[@Name='FILIAL_ODB2']">
					</xsl:value-of>
				</Property>
				<Property Name="OurBrief">
					<xsl:value-of select="Property[@Name='FILIAL_ODB2']">
					</xsl:value-of>
				</Property>
				<Property Name="OurClientBrief">
					<xsl:value-of select="Property[@Name='OWNER_ACNT_ODB2']">
					</xsl:value-of>
				</Property>
				<Property Name="OurPortfolioBrief">
					<xsl:value-of select="Property[@Name='DEPOSITARYADDINFO']">
					</xsl:value-of>
				</Property>
				<Property Name="ContrBrief">
					<xsl:value-of select="Property[@Name='BROKER_ODB2']">
					</xsl:value-of>
				</Property>
				<Property Name="ContrClientBrief">
					<xsl:value-of select="Property[@Name='COUNTERPARTY_ODB2']">
					</xsl:value-of>
				</Property>
				<Property Name="SecCode">
					<xsl:value-of select="Property[@Name='INSTRUMENT_SHORTNAME']">
					</xsl:value-of>
				</Property>
				<Property Name="TradeDate">
					<xsl:value-of select="Property[@Name='DEAL_DATE']">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='ACTIONTYPE_CODE'] = 'SELL' or Property[@Name='ACTIONTYPE_CODE'] = 'SELL_REPO')">
						<Property Name="DealType">
							<xsl:value-of select="1">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:when test="(Property[@Name='ACTIONTYPE_CODE'] = 'BUY' or Property[@Name='ACTIONTYPE_CODE'] = 'BUY_REPO')">
						<Property Name="DealType">
							<xsl:value-of select="0">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="DealType">
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="FundBrief">
					<xsl:value-of select="Property[@Name='DEALCURRENCY']">
					</xsl:value-of>
				</Property>
				<Property Name="Course">
					<xsl:value-of select="Property[@Name='PRICE']">
					</xsl:value-of>
				</Property>
				<Property Name="CourseBack">
					<xsl:value-of select="Property[@Name='PRICEREPAYMENT']">
					</xsl:value-of>
				</Property>
				<Property Name="Num">
					<xsl:value-of select="Property[@Name='AMOUNT1']">
					</xsl:value-of>
				</Property>
				<Property Name="Qty">
					<xsl:value-of select="Property[@Name='CLEAN_AMOUNT']">
					</xsl:value-of>
				</Property>
				<Property Name="QtyBack">
					<xsl:value-of select="Property[@Name='CLEANAMOUNTREPAYMENT']">
					</xsl:value-of>
				</Property>
				<Property Name="Coupon">
					<xsl:value-of select="Property[@Name='COUPON_AMOUNT']">
					</xsl:value-of>
				</Property>
				<Property Name="CouponBack">
					<xsl:value-of select="Property[@Name='COUPONAMOUNTREPAYMENT']">
					</xsl:value-of>
				</Property>
				<Property Name="PayQty">
					<xsl:value-of select="Property[@Name='CLEAN_AMOUNT']+Property[@Name='COUPON_AMOUNT']">
					</xsl:value-of>
				</Property>
				<Property Name="PayQtyBack">
					<xsl:value-of select="Property[@Name='CLEANAMOUNTREPAYMENT']+Property[@Name='COUPONAMOUNTREPAYMENT']">
					</xsl:value-of>
				</Property>
				<Property Name="SettlType">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="HaircutType">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="HaircutPrc">
					<xsl:value-of select="Property[@Name='REPODISCOUNT']">
					</xsl:value-of>
				</Property>
				<Property Name="Haircut">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="RepoPeriod">
					<xsl:value-of select="'365'">
					</xsl:value-of>
				</Property>
				<Property Name="RepoYear">
					<xsl:value-of select="'365'">
					</xsl:value-of>
				</Property>
				<Property Name="RepoRate">
					<xsl:value-of select="Property[@Name='REPORATE']">
					</xsl:value-of>
				</Property>
				<Property Name="Threshold">
					<xsl:value-of select="Property[@Name='REPOREVALLEVEL']">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='EXCHANGE_ID_STR'] != '')">
						<Property Name="TradingSysBrief">
							<xsl:value-of select="Property[@Name='TRADESECTION_STR']">
							</xsl:value-of>
						</Property>
						<Property Name="TradingSysNum">
							<xsl:value-of select="Property[@Name='REFERENCE_CODE']">
							</xsl:value-of>
						</Property>
						<Property Name="TradingSysNumB">
							<xsl:value-of select="Property[@Name='REFERENCE_CODE']">
							</xsl:value-of>
						</Property>
						<xsl:choose>
							<xsl:when test="(Property[@Name='ACTIONTYPE_CODE'] = 'BUY' or Property[@Name='ACTIONTYPE_CODE'] = 'SELL')">
								<Property Name="ProcName">
									<xsl:value-of select="'ExchDeal'">
									</xsl:value-of>
								</Property>
								<Property Name="ProcType">
									<xsl:value-of select="'Биржевая сделка'">
									</xsl:value-of>
								</Property>
							</xsl:when>
							<xsl:otherwise>
								<Property Name="ProcName">
									<xsl:value-of select="'ExchRepo'">
									</xsl:value-of>
								</Property>
								<Property Name="ProcType">
									<xsl:value-of select="'Биржевая сделка РЕПО'">
									</xsl:value-of>
								</Property>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="TradingSysBrief">
							<xsl:value-of select="Property[@Name='TICKET']">
							</xsl:value-of>
						</Property>
						<Property Name="TradingSysNum">
							<xsl:value-of select="Property[@Name='AGREENUMB']">
							</xsl:value-of>
						</Property>
						<Property Name="TradingSysNumB">
							<xsl:value-of select="Property[@Name='AGREENUMB']">
							</xsl:value-of>
						</Property>
						<xsl:choose>
							<xsl:when test="(Property[@Name='ACTIONTYPE_CODE'] = 'BUY' or Property[@Name='ACTIONTYPE_CODE'] = 'SELL')">
								<Property Name="ProcName">
									<xsl:value-of select="'SecDeal'">
									</xsl:value-of>
								</Property>
								<Property Name="ProcType">
									<xsl:value-of select="'Внебиржевая сделка'">
									</xsl:value-of>
								</Property>
							</xsl:when>
							<xsl:otherwise>
								<Property Name="ProcName">
									<xsl:value-of select="'RepoDeal'">
									</xsl:value-of>
								</Property>
								<Property Name="ProcType">
									<xsl:value-of select="'Внебиржевая сделка РЕПО'">
									</xsl:value-of>
								</Property>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="TraderBrief">
					<xsl:value-of select="Property[@Name='DEALER_ID_STR']">
					</xsl:value-of>
				</Property>
				<Property Name="Number">
				</Property>
				<Property Name="NumberBack">
				</Property>
				<Property Name="RegistNum">
					<xsl:value-of select="Property[@Name='EXCH_ORDERNUM']">
					</xsl:value-of>
				</Property>
				<Property Name="Comment">
					<xsl:value-of select="Property[@Name='DEPOSITARYADDINFO']">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='DEALCOMISION'] &gt; 0)">
						<Property Name="TSCmsQty">
							<xsl:value-of select="Property[@Name='DEALCOMISION']">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="TSCmsQty">
							<xsl:value-of select="Property[@Name='DEALCOMISION'] * -1">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="TSCmsEss">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='CLIRINGCOMISION'] &gt; 0)">
						<Property Name="ClrCmsQty">
							<xsl:value-of select="Property[@Name='CLIRINGCOMISION']">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="ClrCmsQty">
							<xsl:value-of select="Property[@Name='CLIRINGCOMISION'] * -1">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="ClrCmsEss">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='SERVICECOMISION'] &gt; 0)">
						<Property Name="ITSCmsQty">
							<xsl:value-of select="Property[@Name='SERVICECOMISION']">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="ITSCmsQty">
							<xsl:value-of select="Property[@Name='SERVICECOMISION'] * -1">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="ITSCmsEss">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="CmsFundBrief">
					<xsl:value-of select="Property[@Name='PRICECURRENCY']">
					</xsl:value-of>
				</Property>
				<Property Name="BrkCmsQty">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="BrkCmsEss">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="BCmsFundBrief">
				</Property>
				<Property Name="ContrDate">
					<xsl:value-of select="(substring(Property[@Name='AGREEDATE'], 1, 10))">
					</xsl:value-of>
				</Property>
				<Property Name="ContrDayShift">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='SETTLEMENT_DATE'] &gt; Property[@Name='PAYMENT_DATE'])">
						<Property Name="SettlScheme">
							<xsl:value-of select="0">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:when test="(Property[@Name='SETTLEMENT_DATE'] &lt; Property[@Name='PAYMENT_DATE'])">
						<Property Name="SettlScheme">
							<xsl:value-of select="1">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:when test="(Property[@Name='DVP'] = '1')">
						<Property Name="SettlScheme">
							<xsl:value-of select="2">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="SettlScheme">
							<xsl:value-of select="3">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="RegDate">
					<xsl:value-of select="(substring(Property[@Name='SETTLEMENT_DATE'], 1, 10))">
					</xsl:value-of>
				</Property>
				<Property Name="PayDate">
					<xsl:value-of select="(substring(Property[@Name='PAYMENT_DATE'], 1, 10))">
					</xsl:value-of>
				</Property>
				<Property Name="PrePayDate">
					<xsl:value-of select="'1900-01-01'">
					</xsl:value-of>
				</Property>
				<Property Name="RegType">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="PayType">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="PrePayType">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="RegDayShift">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='PAYCROSSDATESHIFT'] &gt; 0)">
						<Property Name="PayDayShift">
							<xsl:value-of select="Property[@Name='PAYCROSSDATESHIFT']">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="PayDayShift">
							<xsl:value-of select="0">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="PayFundBrief">
					<xsl:value-of select="Property[@Name='PAYCURRENCY']">
					</xsl:value-of>
				</Property>
				<Property Name="PayCourse">
					<xsl:value-of select="Property[@Name='CROSSRATE']">
					</xsl:value-of>
				</Property>
				<Property Name="PrePayDayShift">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='PRICEREPAYMENT'] != '')">
						<Property Name="PrePayCourse">
							<xsl:value-of select="Property[@Name='PRICEREPAYMENT']">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="PrePayCourse">
							<xsl:value-of select="0">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="PrePayQty">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<xsl:choose>
					<xsl:when test="(Property[@Name='REPAYSETTLEMENTDATE'] &gt; Property[@Name='REPAYMENTDATE'])">
						<Property Name="SettlSchemeB">
							<xsl:value-of select="0">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:when test="(Property[@Name='REPAYSETTLEMENTDATE'] &lt; Property[@Name='REPAYMENTDATE'])">
						<Property Name="SettlSchemeB">
							<xsl:value-of select="1">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:when test="(Property[@Name='DVP'] = '1')">
						<Property Name="SettlSchemeB">
							<xsl:value-of select="2">
							</xsl:value-of>
						</Property>
					</xsl:when>
					<xsl:otherwise>
						<Property Name="SettlSchemeB">
							<xsl:value-of select="3">
							</xsl:value-of>
						</Property>
					</xsl:otherwise>
				</xsl:choose>
				<Property Name="RegDateBack">
					<xsl:value-of select="(substring(Property[@Name='REPAYSETTLEMENTDATE'], 1, 10))">
					</xsl:value-of>
				</Property>
				<Property Name="PayDateBack">
					<xsl:value-of select="(substring(Property[@Name='REPAYMENTDATE'], 1, 10))">
					</xsl:value-of>
				</Property>
				<Property Name="PrePayDateB">
					<xsl:value-of select="'1900-01-01'">
					</xsl:value-of>
				</Property>
				<Property Name="RegTypeBack">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="PayTypeBack">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="PrePayTypeB">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="RegDayShiftB">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="PayDayShiftB">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="PayFundBriefB">
					<xsl:value-of select="Property[@Name='REPAYMENTCURRENCY']">
					</xsl:value-of>
				</Property>
				<Property Name="PayCourseB">
					<xsl:value-of select="Property[@Name='CROSSRATEDEALREPAY']">
					</xsl:value-of>
				</Property>
				<Property Name="PrePayDayShiftB">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="PrePayCourseB">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="PrePayQtyB">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="WhoIsReg">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="WhoIsRegBack">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="WhoPaysFees">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="WhoPaysFeesB">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="WhoPrepContr">
					<xsl:value-of select="0">
					</xsl:value-of>
				</Property>
				<Property Name="CouponTo">
					<xsl:value-of select="Property[@Name='REPORETURNCOUPON']">
					</xsl:value-of>
				</Property>
				<Property Name="FillPI">
				</Property>
				<Property Name="NoAcceptance">
				</Property>
				<Property Name="Ticket">
					<xsl:value-of select="Property[@Name='TICKET']">
					</xsl:value-of>
				</Property>
				<Property Name="Ticket2">
					<xsl:value-of select="Property[@Name='TICKET_REPO']">
					</xsl:value-of>
				</Property>
				<Property Name="EventID">
					<xsl:value-of select="Property[@Name='EVENTID']">
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