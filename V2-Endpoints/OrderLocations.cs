using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Order Locations endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    /// 
    public class OrderLocations
    {
        public int? AppOrderLocationId { get; set; }

        public int? AppOrderId { get; set; }

        public string CountyName { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string MeridianCode { get; set; }

        public string Range { get; set; }

        public string Section { get; set; }

        public string SectionCalls { get; set; }

        public string StateCode { get; set; }

        public string Township { get; set; }

        public DateTime? UpdatedDate { get; set; }
    }
}
