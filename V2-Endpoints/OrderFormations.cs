using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Order Formations endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class OrderFormations
    {
        public int? AppOrderFormationId { get; set; }

        public int? AppOrderId { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public double? DepthLower { get; set; }

        public double? DepthUpper { get; set; }

        public string Description { get; set; }

        public string FormationName { get; set; }

        public string MeridianCode { get; set; }

        public string Orientation { get; set; }

        public string ProductCode { get; set; }

        public string Range { get; set; }

        public string Section { get; set; }

        public string SectionCalls { get; set; }

        public double? Size { get; set; }

        public string StateCode { get; set; }

        public string Township { get; set; }

        public DateTime? UpdatedDate { get; set; }
    }

}
