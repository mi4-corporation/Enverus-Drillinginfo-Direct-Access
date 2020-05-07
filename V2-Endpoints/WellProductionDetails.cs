using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Well Production Details endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class WellProductionDetails
    {
        public string Api10 { get; set; }

        public string Api14 { get; set; }

        public double? AvgGas { get; set; }

        public double? AvgOil { get; set; }

        public double? AvgWtr { get; set; }

        public DateTime? CreatedDate { get; set; }

        public double? CumGas { get; set; }

        public double? CumOil { get; set; }

        public double? CumWtr { get; set; }

        public double? Days { get; set; }

        public DateTime? DeletedDate { get; set; }

        public double? Gas { get; set; }

        public bool? IsDeleted { get; set; }

        public double? Liq { get; set; }

        public DateTime? ProdDate { get; set; }

        public double? ProdMonthNo { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public double? Wtr { get; set; }
    }
}