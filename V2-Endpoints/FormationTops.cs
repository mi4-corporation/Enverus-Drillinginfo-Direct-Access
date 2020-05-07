using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Formation Tops endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class FormationTops
    {

        public int FormationTopID { get; set; }

        public int? WellboreID { get; set; }

        public int? WellID { get; set; }

        public string GovernmentID { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public DateTime? DeletedDate { get; set; }

        public DateTime? CreatedDate { get; set; }

        public string FormationConformed { get; set; }

        public double? FormationTopTVD { get; set; }

        public double? FormationTopMD { get; set; }

        public double? FormationTopUnknown { get; set; }

        public double? FormationBottomUnknown { get; set; }

        public string Source { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string Field { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

        public string DIBasin { get; set; } 

        public string DIStateProvinceCode { get; set; }

    }

}
