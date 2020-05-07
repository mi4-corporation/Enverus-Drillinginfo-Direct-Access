using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Additive Summary Headers endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class AdditiveSummaryHeaders
    {

        public string API10 { get; set; }

        public int? AdditiveSummaryHeaderId { get; set; }

        public int? CompletionId { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string FracProvider { get; set; }

        public string FracType { get; set; }

        public DateTime? JobEndDate { get; set; }

        public DateTime? JobStartDate { get; set; }

        public double? NumberOfJobDay { get; set; }

        public string Operator { get; set; }

        public string Source { get; set; }

        public string SubSource { get; set; }

        public double? TVD { get; set; }

        public double? TotalAdditiveLbs { get; set; }

        public decimal? TotalBaseNonWaterVolumeGal { get; set; }

        public decimal? TotalBaseWaterVolumeGal { get; set; }

        public double? TotalProppantLbs { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public int? WellBoreId { get; set; }

        public int? WellId { get; set; }

    }

}
