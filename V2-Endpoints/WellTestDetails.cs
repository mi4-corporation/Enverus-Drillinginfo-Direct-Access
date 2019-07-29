using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Well Test Details endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class WellTestDetails
    {

        public int WellTestDetailID { get; set; }

        public int? WellTestID { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public DateTime? CreatedDate { get; set; }

        public decimal? LineSize { get; set; }

        public decimal? TwentyFourHrCoeffOrifOrChoke { get; set; }

        public decimal? StaticPressureOrChoke { get; set; }

        public decimal? DifferentialPressure { get; set; }

        public decimal? FlowTemp { get; set; }

        public decimal? TempCorrectingFactor { get; set; }

        public decimal? SpecificGravityCorrectFactor { get; set; }

        public decimal? CompressionFactor { get; set; }

        public decimal? RunGasVolume { get; set; }

        public decimal? RunTime { get; set; }

        public decimal? WellHeadFlowingPressure { get; set; }

        public decimal? WellHeadFlowTemp { get; set; }

        public decimal? WellHeadShutInPressure { get; set; }

        public decimal? WellHeadShutInTemp { get; set; }

        public decimal? InitialShutInPressurePSI { get; set; }

        public decimal? FinalShutInPressurePSI { get; set; }

        public decimal? InitialFlowingPressurePSI { get; set; }

        public decimal? FinalFlowingPressurePSI { get; set; }

        public decimal? OpenTimeMin { get; set; }

        public decimal? ShutInTimeMin { get; set; }

        public string RunNumber { get; set; }

        public string OrificeChokeSize { get; set; }

        public string RunChokeSize { get; set; }

        public string RecoveryRemarks { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string Field { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

    }

}
