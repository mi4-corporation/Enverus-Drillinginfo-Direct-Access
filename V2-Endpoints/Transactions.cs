using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Transactions endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class Transactions
    {
        public string AcreageReportedBy { get; set; }

        public double? AcresGross { get; set; }

        public double? AcresGrossUndeveloped { get; set; }

        public double? AcresNet { get; set; }

        public double? AcresNetDeveloped { get; set; }

        public double? AcresNetUndeveloped { get; set; }

        public double? AcresPercentHBP { get; set; }

        public string BuyerTicker { get; set; }
        
        public string Buyers { get; set; }
        
        public string BuyersAsReported { get; set; }
        
        public string BuyersFinancialAdvisors { get; set; }
        
        public string BuyersHeadquarters { get; set; }
        
        public string BuyersLegalAdvisors { get; set; }
        
        public string BuyersPeerGroup { get; set; }
        
        public string CashFlowOrEBITDAComment { get; set; }
        
        public double? CashFlowOrEBITDAMM { get; set; }
        
        public double? CashFlowOrEBITDAMultiple { get; set; }
        
        public string CashFlowOrEBITDAMultipleComment { get; set; }
        
        public string Country { get; set; }
        
        public string CountyParish { get; set; }
        
        public DateTime? CreatedDate { get; set; }
        
        public string DIBasin { get; set; }
        
        public string DIClosingStory { get; set; }
        
        public string DINarrative { get; set; }
        
        public DateTime? DateAnnounced { get; set; }
        
        public DateTime? DateClosed { get; set; }
        
        public DateTime? DateEffective { get; set; }
        
        public string DealHighlights { get; set; }
        
        public string DealStatus { get; set; }
        
        public string DealType { get; set; }
        
        public double? DealValueCashMM { get; set; }
        
        public double? DealValueDebtMM { get; set; }
        
        public double? DealValueEquityMM { get; set; }
        
        public double? DealValueNetDebtAssumedMM { get; set; }
        
        public double? DealValueOtherMM { get; set; }
        
        public DateTime? DeletedDate { get; set; }
        
        public double? DollarPer2PBOE { get; set; }
        
        public double? DollarPer2PMcfe { get; set; }
        
        public double? DollarPer3PBOE { get; set; }
        
        public double? DollarPer3PMcfe { get; set; }
        
        public double? DollarPerAcre { get; set; }
        
        public double? DollarPerContingentBOE { get; set; }
        
        public double? DollarPerContingentMcfe { get; set; }
        
        public double? DollarPerDailyBOE { get; set; }
        
        public double? DollarPerDailyMcfe { get; set; }
        
        public double? DollarPerLocation { get; set; }
        
        public double? DollarPerProvedBOE { get; set; }
        
        public double? DollarPerProvedMcfe { get; set; }
        
        public string DrillingLocationsComment { get; set; }
        
        public string Geometry { get; set; }
        
        public string Headline { get; set; }
        
        public string Hydrocarbon { get; set; }
        
        public double? Latitude { get; set; }
        
        public double? Longitude { get; set; }
        
        public string MarketCommentary { get; set; }
        
        public int? NumberOfDrillingLocationsNet { get; set; }
        
        public string OnshoreOffshore { get; set; }
        
        public string OpNonOp { get; set; }
        
        public string OperatorCompanyName { get; set; }
        
        public string OperatorTicker { get; set; }
        
        public double? PV102P { get; set; }
        
        public double? PV103P { get; set; }
        
        public string PV10Comments { get; set; }
        
        public double? PV10Contingent { get; set; }
        
        public double? PV10PD { get; set; }
        
        public double? PV10PD2 { get; set; }
        
        public double? PV10PDPercentOfProved { get; set; }
        
        public double? PV10PUD { get; set; }
        
        public double? PV10Possible { get; set; }
        
        public double? PV10Probable { get; set; }
        
        public double? PV10Proved { get; set; }
        
        public double? PremiumDiscount { get; set; }
        
        public double? PremiumDiscount30Day { get; set; }
        
        public double? PremiumDiscount30DayPriorAvg { get; set; }
        
        public double? PremiumDiscount60Day { get; set; }
        
        public double? PremiumDiscount60DayPriorAvg { get; set; }
        
        public double? PremiumDiscount90Day { get; set; }
        
        public double? PremiumDiscount90DayPriorAvg { get; set; }
        
        public string PremiumDiscountOffer { get; set; }
        
        public DateTime? PremiumDiscountOfferDate { get; set; }
        
        public double? PremiumDiscountOfferPrice { get; set; }
        
        public double? PremiumDiscountPreDeal { get; set; }
        
        public double? PriceHenryHubSpotDollarPerMMbtu { get; set; }
        
        public double? PriceNYMEXGas12MStrpDolPerMMbtu { get; set; }
        
        public double? PriceNYMEXOil12MStrpDolPerBbl { get; set; }
        
        public double? PriceWTISpotDollarPerBbl { get; set; }
        
        public double? ProductionBOPD { get; set; }
        
        public string ProductionComments { get; set; }
        
        public double? ProductionMBOED { get; set; }
        
        public double? ProductionMMcfd { get; set; }
        
        public double? ProductionMMcfed { get; set; }
        
        public double? ProductionMbbld { get; set; }
        
        public bool? ProductionNGLIncludedWithCrude { get; set; }
        
        public double? ProductionNGLMbbld { get; set; }
        
        public double? ProductionPercentGas { get; set; }
        
        public double? ProductionPercentNGLs { get; set; }
        
        public double? ProductionPercentOil { get; set; }
        
        public double? ProductionPercentOilAndNGLs { get; set; }
        
        public string ProductionReportedBy { get; set; }
        
        public double? RByPProvedDeveloped { get; set; }
        
        public double? RByPProvedReserves { get; set; }
        
        public bool? ReserveDataPublic { get; set; }
        
        public double? Reserves2PBcf { get; set; }
        
        public double? Reserves2PBcfe { get; set; }
        
        public double? Reserves2PMMbbl { get; set; }
        
        public double? Reserves2PMMboe { get; set; }
        
        public double? Reserves2PNGLMMbbl { get; set; }
        
        public double? Reserves3PBcf { get; set; }
        
        public double? Reserves3PBcfe { get; set; }
        
        public double? Reserves3PMMbbl { get; set; }
        
        public double? Reserves3PMMboe { get; set; }
        
        public double? Reserves3PNGLMMbbl { get; set; }
        
        public string ReservesComments { get; set; }
        
        public double? ReservesContingentBcf { get; set; }
        
        public double? ReservesContingentMMbbl { get; set; }
        
        public double? ReservesContingentMMboe { get; set; }
        
        public double? ReservesContingentNGLMMbbl { get; set; }
        
        public bool? ReservesNGLIncludedWithCrude { get; set; }
        
        public double? ReservesPossibleBcf { get; set; }
        
        public double? ReservesPossibleMMbbl { get; set; }
        
        public double? ReservesPossibleMMboe { get; set; }
        
        public double? ReservesPossibleNGLMMbbl { get; set; }
        
        public double? ReservesProbableBcf { get; set; }
        
        public double? ReservesProbableMMbbl { get; set; }
        
        public double? ReservesProbableMMboe { get; set; }
        
        public double? ReservesProbableNGLMMbbl { get; set; }
        
        public double? ReservesProvedBcf { get; set; }
        
        public double? ReservesProvedBcfPercentProved { get; set; }
        
        public double? ReservesProvedBcfe { get; set; }
        
        public double? ReservesProvedDevelopdBcfPercntPD { get; set; }
        
        public double? ReservesProvedDevelopedBcf { get; set; }
       
        public double? ReservesProvedDevelopedBcfe { get; set; }
        
        public double? ReservesProvedDevelopedMMbbl { get; set; }
        
        public double? ReservesProvedDevelopedMMbblPrcntPD { get; set; }
        
        public double? ReservesProvedDevelopedMMboe { get; set; }
        
        public double? ReservesProvedDevelopedMMboePrcntPD { get; set; }
        
        public double? ReservesProvedDevelopedNGLMMbbl { get; set; }
        
        public double? ReservesProvedDevelopedNGLMMbblPrcntPD { get; set; }
        
        public double? ReservesProvedMMbbl { get; set; }
        
        public double? ReservesProvedMMbblPercentProved { get; set; }
        
        public double? ReservesProvedMMboe { get; set; }
        
        public double? ReservesProvedMMboePercentProved { get; set; }
        
        public double? ReservesProvedNGLMMbbl { get; set; }
        
        public double? ReservesProvedNGLMMbblPercntPrved { get; set; }
        
        public double? ReservesProvedPercentOil { get; set; }
        
        public double? ReservesProvedUndevelopedBcf { get; set; }
        
        public double? ReservesProvedUndevelopedMMbbl { get; set; }
        
        public double? ReservesProvedUndevelopedMMboe { get; set; }
        
        public double? ReservesProvedUndevelopedNGLMMbbl { get; set; }
        
        public string ReservesReportedBy { get; set; }
        
        public string ReservoirEngineering { get; set; }
        
        public string ResourceType { get; set; }
        
        public string SellerTicker { get; set; }
        
        public string Sellers { get; set; }
        
        public string SellersAsReported { get; set; }
        
        public string SellersFinancialAdvisors { get; set; }
        
        public string SellersHeadquarters { get; set; }
        
        public string SellersLegalAdvisors { get; set; }
        
        public string SellersPeerGroup { get; set; }
        
        public string State { get; set; }
        
        public int? TransactionID { get; set; }
        
        public string TransactionNotes { get; set; }
        
        public string USPlay { get; set; }
        
        public string USRegion { get; set; }
        
        public string USSubregion { get; set; }
        
        public DateTime? UpdatedDate { get; set; }
        
        public string ValuationNotes { get; set; }
        
        public double? Value2PMM { get; set; }
        
        public double? Value3PMM { get; set; }
        
        public double? ValueAcreageMM { get; set; }
        
        public double? ValueContingentMM { get; set; }
        
        public double? ValueDollarMM { get; set; }
        
        public double? ValueMMAsReported { get; set; }
        
        public double? ValueOtherMM { get; set; }
        
        public double? ValueProvedMM { get; set; }
    }

}