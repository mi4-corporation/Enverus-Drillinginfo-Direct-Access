using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Treatment Stages endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class TreatmentStages
    {

        public int TreatmentStageID { get; set; }

        public int? TreatmentJobID { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public DateTime? CreatedDate { get; set; }

        public double? StageNumber { get; set; }

        public double? TreatmentTop { get; set; }

        public double? TreatmentBottom { get; set; }

        public double? TotalFluidGal { get; set; }

        public double? TotalProppantLbs { get; set; }

        public double? TotalAdditiveGal { get; set; }

        public double? TotalAdditiveLbs { get; set; }

        public decimal? AverageRate { get; set; }

        public decimal? AveragePressure { get; set; }

        public decimal? MinRate { get; set; }

        public decimal? MinPressure { get; set; }

        public decimal? MaxRate { get; set; }

        public decimal? MaxPressure { get; set; }

        public decimal? BreakdownPressure { get; set; }

        public decimal? ShutinPressure { get; set; }

        public decimal? TotalbasedWaterVolumeGal { get; set; }

        public decimal? TotalbasednonWaterVolumeGal { get; set; }

        public string Source { get; set; }

        public string Remarks { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string Field { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

        public double? NumberOfClusters { get; set; } 

        public double? ShotsPerFt { get; set; } 

        public double? TotalShots { get; set; } 

    }

}
