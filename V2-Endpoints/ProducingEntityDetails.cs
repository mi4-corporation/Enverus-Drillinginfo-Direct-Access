using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Producing Entity Details endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class ProducingEntityDetails
    {

        public int EntityId { get; set; }

        public int? PdenProdId { get; set; }

        public string ApiNo { get; set; }

        public DateTime? ProdDate { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public double? AverageDailyGas { get; set; }

        public double? AverageDailyWater { get; set; }

        public double? AverageDailyOil { get; set; }

        public int? Liq { get; set; }

        public int? Gas { get; set; }

        public int? Wtr { get; set; }

        public int? Wcnt { get; set; }

        public int? Days { get; set; }

        public int? ProdMonthNo { get; set; }

        public string ApiList { get; set; }

        public string LiqAllocationMethod { get; set; }

        public string GasAllocationMethod { get; set; }

        public string WaterAllocationMethod { get; set; }

        public string WellCount { get; set; }

        public string Source { get; set; }

        public string SourceKey { get; set; }

        public int? IsDeleted { get; set; }

    }

}
