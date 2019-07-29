using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Completions endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class Completions
    {

        public int UID { get; set; }

        public int? UIDParent { get; set; }

        public int? CompletionID { get; set; }

        public int? WellboreID { get; set; }

        public string Governmentid { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public DateTime? CompletionDate { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public int? CompletionEventID { get; set; }

        public DateTime? PermitDate { get; set; }

        public int? CompletionEvent { get; set; }

        public int? CompletionSequence { get; set; }

        public int? CompletionNumber { get; set; }

        public decimal? TopDepth { get; set; }

        public decimal? BaseDepth { get; set; }

        public string PermitNumber { get; set; }

        public string Source { get; set; }

        public string Formation { get; set; }

        public string Type { get; set; }

        public string Method { get; set; }

        public string Remark { get; set; }

        public string DepthUOM { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string Field { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

        public string Section { get; set; }

        public string Township { get; set; }

        public string TownshipDirection { get; set; }

        public string Range { get; set; }

        public string RangeDirection { get; set; }

        public string Abstract { get; set; }

    }

}
