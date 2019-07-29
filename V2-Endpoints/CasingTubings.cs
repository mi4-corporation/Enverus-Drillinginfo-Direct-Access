using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Casing Tubings endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class CasingTubings
    {

        public int CasingTubingID { get; set; }

        public int? CompletionID { get; set; }

        public int? WellID { get; set; }

        public int? WellboreID { get; set; }

        public string GovernmentID { get; set; }

        public DateTime? DeletedDate { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public DateTime? CreatedDate { get; set; }

        public int? CasingSequence { get; set; }

        public decimal? Top { get; set; }

        public decimal? Bottom { get; set; }

        public decimal? HoleDiameter { get; set; }

        public decimal? AmountPulled { get; set; }

        public decimal? SlurryVolume { get; set; }

        public decimal? Weight { get; set; }

        public decimal? Diameter { get; set; }

        public decimal? MultiStageToolDepth { get; set; }

        public decimal? MultiStageShoeDepth { get; set; }

        public decimal? AnchorDepth { get; set; }

        public decimal? TopOfCement { get; set; }

        public decimal? CementSacks { get; set; }

        public decimal? Weight2 { get; set; }

        public string CementClass { get; set; }

        public string Thread { get; set; }

        public string LinerScreen { get; set; }

        public string TopOfCementDeterminationMethod { get; set; }

        public string Grade { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string CasingType { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

        public string Type { get; set; }

        public string CasingWellbore { get; set; }

        public string Field { get; set; }

    }

}
