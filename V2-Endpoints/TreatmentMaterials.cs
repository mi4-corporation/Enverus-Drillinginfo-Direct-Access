using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Treatment Materials endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class TreatmentMaterials
    {

        public int TreatmentMaterialUsageID { get; set; }

        public int? TreatmentStageID { get; set; }

        public int? TreatmentJobID { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public DateTime? CreatedDate { get; set; }

        public decimal? PercenthighAdditiveReported { get; set; }

        public decimal? IngredientPercentHFJob { get; set; }

        public decimal? IngredientPercentHFJobReported { get; set; }

        public decimal? IngredientDensityPPG { get; set; }

        public decimal? MaterialAmount { get; set; }

        public string Source { get; set; }

        public string TradeName { get; set; }

        public string Supplier { get; set; }

        public string MaterialType { get; set; }

        public string MaterialCategory { get; set; }

        public string MaterialName { get; set; }

        public string MaterialUOM { get; set; }

        public string SandQuality { get; set; }

        public string ProppantMeshSize { get; set; }

        public string ProppantSandClassification { get; set; }

        public string AcidConcentration { get; set; }

        public string Cementclass { get; set; }

        public string CASNumber { get; set; }

        public string CASNumberReported { get; set; }

        public string Remarks { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string Field { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

    }

}
