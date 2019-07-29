using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Well Origins endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class WellOrigins
    {

        public int? UID { get; set; }

        public string GovernmentID { get; set; }

        public string County { get; set; }

        public string FluidType { get; set; }

        public string LeaseName { get; set; }

        public string OriginalOperator { get; set; }

        public string ProvinceState { get; set; }

        public string WellName { get; set; }

        public string WellNumber { get; set; }

        public DateTime? CurrentStatusDate { get; set; }

        public DateTime? LicenseDate { get; set; }

        public DateTime? OnProductionDate { get; set; }

        public DateTime? SpudDate { get; set; }

        public DateTime? ConfidentialDate { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string Source { get; set; }

        public string LeaseNumber { get; set; }

        public string PermitNumber { get; set; }

        public decimal? Wgs84Latitude { get; set; }

        public decimal? Wgs84Longitude { get; set; }

        public string Section { get; set; }

        public string Township { get; set; }

        public string TownshipDirection { get; set; }

        public string Range { get; set; }

        public string RangeDirection { get; set; }

        public string Abstract { get; set; }

        public string CurrentOperator { get; set; }

        public string Country { get; set; }

        public string Region { get; set; }

        public string Field { get; set; }

        public string Basin { get; set; }

        public string District { get; set; }

        public string Environment { get; set; }

        public string InitialClassification { get; set; }

        public string CurrentStatus { get; set; }

        public string ElevRefDatum { get; set; }

        public int? ElevRefDatumepsgCode { get; set; }

        public decimal? GroundElev { get; set; }

        public string WaterDepthDatum { get; set; }

        public int? WaterDepth { get; set; }

        public string Confidential { get; set; }

        public string Remark { get; set; }

        public string DepthUom { get; set; }

        public string ElevUom { get; set; }

        public string Formation { get; set; }

        public string Block { get; set; }

        public string Survey { get; set; }

        public string Meridian { get; set; }

    }

}
