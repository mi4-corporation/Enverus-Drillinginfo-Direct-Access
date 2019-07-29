using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Packers endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class Packers
    {

        public int PackerID { get; set; }

        public int? CasingTubingID { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public DateTime? CreatedDate { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public decimal? PackerDepth { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string Field { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

        public string PackerType { get; set; }

    }

}
