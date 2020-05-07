using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Permits endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class Permits
    {

        public int PermitID { get; set; }
		
        public DateTime? SubmittedDate { get; set; }

        public DateTime? OrigApprovedDate { get; set; }

        public DateTime? ApprovedDate { get; set; }

        public DateTime? AmendmentFiledDate { get; set; }

        public DateTime? ExpiredDate { get; set; }

        public string API10 { get; set; }

        public string API12 { get; set; }

        public string WGID { get; set; }

        public string OFSRegion { get; set; }

        public string StateProvince { get; set; }

        public string CountyParish { get; set; }

        public string District { get; set; }

        public string LeaseName { get; set; }

        public string WellNumber { get; set; }

        public string LeaseNumber { get; set; }

        public string Field { get; set; }

        public string Formation { get; set; }

        public string OperatorAlias { get; set; }

        public string ReportedOperator { get; set; }

        public string PermitNumber { get; set; }

        public string PermitType { get; set; }

        public string WellType { get; set; }

        public string DrillType { get; set; }

        public double? PermitDepth { get; set; }

        public string PermitDepthUOM { get; set; }

        public double? TrueVerticalDepth { get; set; }

        public string TrueVerticalDepthUOM { get; set; }

        public string PermitStatus { get; set; }

        public string WellStatus { get; set; }

        public string ContactName { get; set; }

        public string ContactPhone { get; set; }

        public string OperatorAddress { get; set; }

        public string OperatorCity { get; set; }

        public string OperatorState { get; set; }

        public string OperatorZip { get; set; }

        public string OperatorCity30mi { get; set; }

        public string OperatorCity50mi { get; set; }

        public string Section { get; set; }

        public string Abstract { get; set; }

        public string Survey { get; set; }

        public string Block { get; set; }

        public string Township { get; set; }

        public string Range { get; set; }

        public double? SurfaceLatitudeWGS84 { get; set; }

        public double? SurfaceLongitudeWGS84 { get; set; }

        public double? BottomHoleLatitudeWGS84 { get; set; }

        public double? BottomHoleLongitudeWGS84 { get; set; }

        public bool? H2SArea { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public string ActiveCommonName { get; set; } 

        public string ActiveTickerName { get; set; } 

        public string DIBasin { get; set; } 

        public string DICountryCode { get; set; } 

        public string DICountryName { get; set; } 

        public string DICountyParishName { get; set; } 

        public string DIPlay { get; set; } 

        public string DIStateProvinceCode { get; set; }

        public string DIStateProvinceName { get; set; }

        public string DISubPlay { get; set; }

    }

}
