using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Perforations endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class Perforations
    {

        public int PerforationID { get; set; }

        public int? CompletionID { get; set; }

        public string GovernmentID { get; set; }

        public int? WellboreID { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public DateTime? CreatedDate { get; set; }

        public string Source { get; set; }

        public decimal? TopDepth { get; set; }

        public decimal? BaseDepth { get; set; }

        public string Formation { get; set; }

        public DateTime? PerforationDate { get; set; }

        public double? PerforationDensity { get; set; }

        public decimal? PerforationDiameter { get; set; }

        public int? PerforationPhase { get; set; }

        public int? PerforationSequence { get; set; }

        public bool? OpenHole { get; set; }

        public string PerforationRemark { get; set; }

        public int? CementSacks { get; set; }

        public DateTime? IsolationDate { get; set; }

        public string IsolationMethod { get; set; }

        public string IsolationRemark { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string Field { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

    }

}
