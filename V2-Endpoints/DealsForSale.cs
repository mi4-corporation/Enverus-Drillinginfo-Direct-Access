using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Deals For Sale endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class DealsForSale
    {
        public double? AcresNetUndeveloped { get; set; }
        
        public string Assets { get; set; }
        
        public DateTime? BidDeadline { get; set; }
        
        public string Blocks { get; set; }
        
        public string Country { get; set; }
        
        public string CountyParish { get; set; }
        
        public DateTime? CreatedDate { get; set; } 
        
        public string DIBasin { get; set; }
        
        public DateTime? DateAnnounced { get; set; }
        
        public string DealHighlights { get; set; }
        
        public string DealStatus { get; set; }
        
        public string DealType { get; set; }
        
        public int? DealsForSaleID { get; set; }
        
        public string DealsForSaleNotes { get; set; }
        
        public DateTime? DeletedDate { get; set; }
        
        public string Geometry { get; set; }
        
        public string Headline { get; set; }
        
        public string Hydrocarbon { get; set; }        
        
        public double? Latitude { get; set; } 
        
        public string Licenses { get; set; }
        
        public double? Longitude { get; set; }
        
        public string OnshoreOffshore { get; set; }
        
        public string OpNonOp { get; set; }
        
        public string OperatorCompanyName { get; set; }
        
        public string OperatorTicker { get; set; }
        
        public double? ProductionMBOEDGross { get; set; }
        
        public double? ProductionMBOEDNet { get; set; }
        
        public double? ProductionPercentOil { get; set; }
        
        public string Region { get; set; }
        
        public double? Reserves2PMMBOEGross { get; set; }
        
        public double? Reserves2PPercentOil { get; set; }
        
        public double? ReservesProvedMMBOEGross { get; set; }
        
        public double? ReservesProvedMMBOENet { get; set; }
        
        public double? ReservesProvedPercentOil { get; set; }
        
        public string ResourceType { get; set; }
        
        public string Sellers { get; set; }
        
        public string SellersFinancialAdvisors { get; set; }
        
        public string SellersPeerGroup { get; set; }
        
        public string State { get; set; }
        
        public string TransactionType { get; set; }
        
        public string USPlay { get; set; }
        
        public string USRegion { get; set; }
        
        public string USSubRegion { get; set; }
        
        public DateTime? UpdatedDate { get; set; }
        
        public string ValueRangeMM { get; set; }
    }

}