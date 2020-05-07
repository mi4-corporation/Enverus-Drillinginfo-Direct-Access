using System;

namespace DirectAccess
{
	/// <summary>
    /// This class represents the DrillingInfo V2 Trajectories endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class Trajectories
    {
        public int? TrajectoryID { get; set; }

        public int? WellboreID { get; set; }

        public string GovernmentID { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public DateTime? StartDate { get; set; }

        public DateTime? EndDate { get; set; }

        public string Source { get; set; }

        public double? MeasuredDepth { get; set; }

        public string NorthReference { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string Field { get; set; }

        public string Geometry { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

        public string ComputeMethod { get; set; }
    }
}
