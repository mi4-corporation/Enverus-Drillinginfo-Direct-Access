using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Treatment Jobs endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class TreatmentJobs
    {

        public int TreatmentJobID { get; set; }

        public int? CompletionID { get; set; }

        public int? WellID { get; set; }

        public int? WellboreID { get; set; }

        public string GovernmentID { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public DateTime? CreatedDate { get; set; }

        public int? TreatmentTop { get; set; }

        public int? TreatmentBottom { get; set; }

        public int? TreatmentSequence { get; set; }

        public int? StageCount { get; set; }

        public int? TotalFluidGal { get; set; }

        public int? TotalProppantlbs { get; set; }

        public int? TotalAdditiveGal { get; set; }

        public int? TotalAdditivelbs { get; set; }

        public bool? OpenHole { get; set; }

        public decimal? InitialFluidDensity { get; set; }

        public decimal? MinFractureGradient { get; set; }

        public decimal? RecoveredFlowback { get; set; }

        public decimal? AverageRate { get; set; }

        public decimal? AveragePressure { get; set; }

        public decimal? MinRate { get; set; }

        public decimal? MaxRate { get; set; }

        public decimal? MaxPressure { get; set; }

        public decimal? BreakdownPressure { get; set; }

        public decimal? ShutinPressure { get; set; }

        public decimal? TotalBasedWatervolumeGal { get; set; }

        public decimal? TotalBasedNonWatervolumeGal { get; set; }

        public decimal? PreFracCSGPSI { get; set; }

        public decimal? AcidConcentration { get; set; }

        public DateTime? StartDate { get; set; }

        public DateTime? EndDate { get; set; }

        public string Source { get; set; }

        public string TreatmentType { get; set; }

        public string TreatmentFormation { get; set; }

        public string TreatmentGasType { get; set; }

        public string FracProvider { get; set; }

        public string ReportedContractorName { get; set; }

        public string FlowbackDisposalMethod { get; set; }

        public string Remarks { get; set; }

        public string GreenTechniques { get; set; }

        public string RemarkGreenTechniques { get; set; }

        public string FracTechnique { get; set; }

        public string RemarkFracTechnique { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string Field { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

    }

}
