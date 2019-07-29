using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Well Test Headers endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class WellTestHeaders
    {

        public int WellTestID { get; set; }

        public int? WellboreID { get; set; }

        public int? CompletionID { get; set; }

        public DateTime? DeletedDate { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public string StateProvince { get; set; }

        public string County { get; set; }

        public string GovernmentID { get; set; }

        public DateTime? CreatedDate { get; set; }

        public DateTime? TestDate { get; set; }

        public decimal? TwentyFourHrCalculatedGasProduction { get; set; }

        public decimal? TwentyFourHrCalculatedOilProduction { get; set; }

        public decimal? TwentyFourHrCalculatedWaterProduction { get; set; }

        public decimal? AvgShutInTemp { get; set; }

        public decimal? AbsoluteOpenFlow { get; set; }

        public decimal? BottomholeTempf { get; set; }

        public int? BottomholeTempDepth { get; set; }

        public decimal? CasingPressure { get; set; }

        public decimal? CLPPM { get; set; }

        public decimal? CushionFeet { get; set; }

        public decimal? FinalShutInPressurePSI { get; set; }

        public decimal? FlowingTubingPressure { get; set; }

        public decimal? GasGravity { get; set; }

        public decimal? GasVolume { get; set; }

        public decimal? H2SPPM { get; set; }

        public decimal? HoursTested { get; set; }

        public decimal? InitialShutInPressurePSI { get; set; }

        public decimal? InitialHydrostaticPressurePSI { get; set; }

        public decimal? InjectionGasOilRatio { get; set; }

        public decimal? MixtureGravity { get; set; }

        public decimal? OilGravity { get; set; }

        public decimal? OilProducedPriortoTest { get; set; }

        public decimal? SlopenAngle { get; set; }

        public decimal? SlopeoAngle { get; set; }

        public decimal? TestTop { get; set; }

        public decimal? TestBottom { get; set; }

        public int? TestSequence { get; set; }

        public decimal? WaterVolume { get; set; }

        public decimal? LiquidVolume { get; set; }

        public decimal? GasLiquidRatio { get; set; }

        public string FortyEightHrPreflow { get; set; }

        public string Condensate { get; set; }

        public string ChokeSizeInch { get; set; }

        public string CriticalFlowProver { get; set; }

        public string DSTNarrative { get; set; }

        public string FlangeTaps { get; set; }

        public string HydrogenSulfide { get; set; }

        public string MassFlowMeter { get; set; }

        public string OrificeMeter { get; set; }

        public string OrificeVentMeter { get; set; }

        public string OtherMeasurementMethod { get; set; }

        public string OtherRecoveryRemark { get; set; }

        public string PipeTaps { get; set; }

        public string PipeRecoveryRemark { get; set; }

        public string PitotTube { get; set; }

        public string PositiveChoke { get; set; }

        public string ProductionMethod { get; set; }

        public string SampleChamberRecoveryRemark { get; set; }

        public string SwabUsed { get; set; }

        public string SurfaceRecoveryRemark { get; set; }

        public string TestType { get; set; }

        public string TestTypeReported { get; set; }

        public string TestFormation { get; set; }

        public string Region { get; set; }

        public string Country { get; set; }

        public string Field { get; set; }

        public string BasinName { get; set; }

        public string District { get; set; }

    }

}
