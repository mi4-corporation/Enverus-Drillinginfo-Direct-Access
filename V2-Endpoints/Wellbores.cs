using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Wellbores endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class Wellbores
    {
		public int WellboreID { get; set; }

        public DateTime? AbandonmentDate { get; set; }

        public string Abstract { get; set; }

        public string BasinName { get; set; }

        public int? CasingFlangeElev { get; set; }

        public DateTime? CompletionDate { get; set; }

        public string Country { get; set; }

        public string County { get; set; }

        public DateTime? CreatedDate { get; set; }

        public string CurrentClassification { get; set; }

        public string CurrentStatus { get; set; }

        public DateTime? CurrentStatusDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string DepthDatum { get; set; }

        public double? DepthDatumElev { get; set; }

        public string DepthUOM { get; set; }

        public double? DerrickFloorElevation { get; set; }

        public string District { get; set; }

        public int? DrillerTotalDepth { get; set; }

        public string ElevUOM { get; set; }

        public string Field { get; set; }

        public DateTime? FinalDrillDate { get; set; }

        public string FluidType { get; set; }

        public string Formation { get; set; }

        public string FormationAtTD { get; set; }

        public string GovernmentID { get; set; }

        public double? KellyBushingElevation { get; set; }

        public double? KickoffPointDepth { get; set; }

        public int? LoggersTotalDepth { get; set; }

        public DateTime? OnProductionDate { get; set; }

        public int? PlugbackDepth { get; set; }

        public string ProfileType { get; set; }

        public string Range { get; set; }

        public string RangeDirection { get; set; }

        public string Region { get; set; }

        public string Remarks { get; set; }

        public DateTime? RigOnsiteDate { get; set; }

        public DateTime? RigReleaseDate { get; set; }

        public double? RotaryTableElev { get; set; }

        public string Section { get; set; }

        public string Source { get; set; }

        public DateTime? SpudDate { get; set; }

        public string StateProvince { get; set; }

        public int? TotalDepth { get; set; }

        public string Township { get; set; }

        public string TownshipDirection { get; set; }

        public int? TrueVerticalDepth { get; set; }

        public int? UID { get; set; }

        public int? UIDParent { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public double? WGS84Latitude { get; set; }

        public double? WGS84Longitude { get; set; }

        public int? WellID { get; set; }

        public string WellboreName { get; set; }

        public int? WellboreNumber { get; set; }

        public string WellboreType { get; set; }

        public int? WhipstockDepth { get; set; }

    }

}
