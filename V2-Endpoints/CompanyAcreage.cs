using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Company Acreage endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class CompanyAcreage
    {
        public int? AcreageId { get; set; }

        public string AcreageStatus { get; set; }

        public double? AreaGrossAcres { get; set; }

        public string Comment { get; set; }

        public string CountyParish { get; set; }

        public DateTime? CreatedDate { get; set; }

        public string DIBasin { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string Geometry { get; set; }

        public int? MapId { get; set; }

        public string OperatorCompanyName { get; set; }

        public string OperatorReported { get; set; }

        public string OperatorTicker { get; set; }

        public double? PECompanyWideEquityCommitmentMM { get; set; }

        public int? PEInitialFundingYear { get; set; }

        public string PESponsors { get; set; }

        public string PEStatus { get; set; }

        public string PETargetRegion { get; set; }

        public string PeerGroup { get; set; }

        public DateTime? ShapefileUpdateDate { get; set; }

        public string State { get; set; }

        public string USRegion { get; set; }

        public DateTime? UpdatedDate { get; set; }
    }

}
