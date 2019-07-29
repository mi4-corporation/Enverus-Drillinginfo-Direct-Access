using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Additive Summary Details endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class AdditiveSummaryDetails
    {

        public int AdditiveSummaryDetailId { get; set; }

        public int? AdditiveSummaryHeaderId { get; set; }

        public string CASNumber { get; set; }

        public string CASNumberReported { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string IngredientComments { get; set; }

        public double? IngredientDensityPpg { get; set; }

        public string IngredientIndexName { get; set; }

        public string IngredientNameReported { get; set; }

        public double? IngredientPercentHFJob { get; set; }

        public double? IngredientPercentHFJobReported { get; set; }

        public string MassDuplicationFlag { get; set; }

        public double? MaxIngredientMassLbs { get; set; }

        public double? PercentHighAdditiveReported { get; set; }

        public string ProppantMeshSize { get; set; }

        public string ProppantSandClassification { get; set; }

        public string Purpose { get; set; }

        public string PurposeReported { get; set; }

        public string SandQuality { get; set; }

        public string Source { get; set; }

        public string SubSource { get; set; }

        public string Supplier { get; set; }

        public string SupplierCategory { get; set; }

        public string SupplierReported { get; set; }

        public string TradeName { get; set; }

        public string TradeNameReported { get; set; }

        public DateTime? UpdatedDate { get; set; }

    }

}
