using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Well Rollups endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
    public class WellRollups
    {

        public string AAPGGeologicProvince { get; set; }

        public string API10 { get; set; }

        public string API12 { get; set; }

        public string API14 { get; set; }

        public string Abstract { get; set; }

        public double? AvgDistanceFromBaseOfZone { get; set; }

        public double? AvgDistanceFromTopOfZone { get; set; }

        public double? BeGasBfactor { get; set; } 

        public DateTime? BeGasEndDate { get; set; } 

        public double? BeGasFinalRate { get; set; } 

        public DateTime? BeGasInitialDate { get; set; } 

        public double? BeGasInitialDecline { get; set; } 

        public double? BeGasInitialRate { get; set; }

        public double? BeGasMonths { get; set; }

        public double? BeOilBfactor { get; set; }

        public DateTime? BeOilEndDate { get; set; }

        public double? BeOilFinalRate { get; set; }

        public DateTime? BeOilInitialDate { get; set; }

        public double? BeOilInitialDecline { get; set; }

        public double? BeOilInitialRate { get; set; } 

        public double? BeOilMonths { get; set; } 

        public string Block { get; set; }

        public double? BoeEur { get; set; } 

        public double? BoeEurPerfFt { get; set; }

        public double? BottomHoleLatitudeWGS84 { get; set; }

        public double? BottomHoleLongitudeWGS84 { get; set; }

        public double? CompletionCountAPI10 { get; set; }

        public DateTime? CompletionDate { get; set; }

        public string CompletionDateSource { get; set; }

        public string Country { get; set; }

        public string CountyParish { get; set; }

        public DateTime? CreatedDate { get; set; }

        public double? CumBCFGE { get; set; }

        public double? CumBOE { get; set; }

        public double? CumGOR { get; set; }

        public double? CumGas { get; set; }

        public double? CumMMCFGE { get; set; }

        public double? CumOil { get; set; }

        public double? CumWater { get; set; }

        public string DIBasin { get; set; }

        public string DILandingZone { get; set; }

        public string DILandingZoneSource { get; set; } 

        public double? DILateralLength { get; set; } 

        public string DILateralLengthSource { get; set; }

        public string DIPlay { get; set; }

        public string DISubplay { get; set; }

        public double? DailyGas { get; set; }

        public double? DailyOil { get; set; }

        public double? DeepestPerforation { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string District { get; set; }

        public string DrillType { get; set; }

        public double? EURBEGasPer1000BBLFluid { get; set; }

        public double? EURBEGasPer1MMLbsProppant { get; set; }

        public double? EURBEGasPerPerforatedFt { get; set; }

        public double? EURBEOilPer1000BBLFluid { get; set; }

        public double? EURBEOilPer1MMLbsProppant { get; set; }

        public double? EURBEOilPerPerforatedFt { get; set; }

        public double? EURBFactorBE { get; set; }

        public double? EURBFactorFull { get; set; }

        public DateTime? EURCalcDate { get; set; }

        public DateTime? EUREndDateBE { get; set; }

        public DateTime? EUREndDateFull { get; set; }

        public double? EURFinalRateBE { get; set; }

        public double? EURFinalRateFull { get; set; }

        public double? EURGasBE { get; set; }

        public double? EURGasDeltaBE { get; set; }

        public double? EURGasDeltaPercentBE { get; set; }

        public double? EURGasFull { get; set; }

        public double? EURInitialDeclineBE { get; set; }

        public double? EURInitialDeclineFull { get; set; }

        public double? EURInitialRateBE { get; set; }

        public double? EUROilBE { get; set; }

        public double? EUROilDeltaBE { get; set; }

        public double? EUROilDeltaPercentBE { get; set; }

        public double? EUROilFull { get; set; }

        public string EURPrimaryProduct { get; set; }

        public double? Elevation { get; set; }

        public string ElevationType { get; set; }

        public DateTime? EndDateFirstTreatmentJob { get; set; }

        public double? ExtFormationThicknessMean { get; set; }

        public string Field { get; set; }

        public double? First12BOE { get; set; }

        public double? First12BOEPer1000BBLFluid { get; set; }

        public double? First12BOEPer1MMLbsProppant { get; set; }

        public double? First12BOEPerPerforatedFt { get; set; }

        public double? First12Gas { get; set; }

        public double? First12GasPer1000BBLFluid { get; set; }

        public double? First12GasPer1MMLbsProppant { get; set; }

        public double? First12GasPerPerforatedFt { get; set; }

        public double? First12MMCFGE { get; set; }

        public double? First12Oil { get; set; }

        public double? First12OilPer1000BBLFluid { get; set; }

        public double? First12OilPer1MMLbsProppant { get; set; }

        public double? First12OilPerPerforatedFt { get; set; }

        public double? First12Water { get; set; }

        public double? First24BOE { get; set; }

        public double? First24Gas { get; set; }

        public double? First24MMCFGE { get; set; }

        public double? First24Oil { get; set; }

        public double? First24Water { get; set; }

        public double? First60BOE { get; set; }

        public double? First60Gas { get; set; }

        public double? First60MMCFGE { get; set; }

        public double? First60Oil { get; set; }

        public double? First60Water { get; set; }

        public double? First6BOE { get; set; }

        public double? First6BOEPer1000BBLFluid { get; set; }

        public double? First6BOEPer1MMLbsProppant { get; set; }

        public double? First6BOEPerPerforatedFt { get; set; }

        public double? First6Gas { get; set; }

        public double? First6GasPer1000BBLFluid { get; set; }

        public double? First6GasPer1MMLbsProppant { get; set; }

        public double? First6GasPerPerforatedFt { get; set; }

        public double? First6Oil { get; set; }

        public double? First6OilPer1000BBLFluid { get; set; }

        public double? First6OilPer1MMLbsProppant { get; set; }

        public double? First6OilPerPerforatedFt { get; set; }

        public double? First6Water { get; set; }

        public double? FirstMonthGas { get; set; }

        public double? FirstMonthOil { get; set; }

        public double? FirstMonthWater { get; set; }

        public DateTime? FirstProdDate { get; set; }

        public string FirstReportedTestType { get; set; }

        public double? FirstTestCasingPressure { get; set; }

        public string FirstTestChokeSize { get; set; }

        public double? FirstTestFlowingTubingPressure { get; set; }

        public double? FirstTestGOR { get; set; }

        public double? FirstTestGasGravity { get; set; }

        public double? FirstTestGasVolume { get; set; }

        public double? FirstTestHoursTested { get; set; }

        public double? FirstTestOilGravity { get; set; }

        public double? FirstTestOilVolume { get; set; }

        public string FirstTestProductionMethod { get; set; }

        public double? FirstTestWaterVolume { get; set; }

        public DateTime? FirstWellTestDate { get; set; }

        public double? FluidPerPerforatedFootFirstTreatmentJob { get; set; }

        public double? FootageInLandingZone { get; set; }

        public string FracVendor { get; set; }

        public double? FullGasBfactor { get; set; } 

        public DateTime? FullGasEndDate { get; set; } 

        public double? FullGasFinalRate { get; set; } 

        public double? FullGasInitialDecline { get; set; }

        public double? FullGasMonths { get; set; } 

        public double? FullGasinitialRate { get; set; } 

        public double? FullOilBfactor { get; set; } 

        public double? FullOilEndDate { get; set; } 

        public double? FullOilFinalRate { get; set; }

        public double? FullOilInitialDecline { get; set; }

        public double? FullOilInitialRate { get; set; } 

        public double? FullOilMonths { get; set; } 

        public string GrossPerforationIntervalSource { get; set; }

        public string GroundElevationType { get; set; }

        public string GasGatherer { get; set; }

        public double? GasGravity { get; set; }

        public double? GasRRRBE { get; set; }

        public double? GasRRRFull { get; set; }

        public double? GrossPerforatedInterval { get; set; }

        public double? GrossPerforatedIntervalMultipleProdEntities { get; set; }

        public double? GroundElevation { get; set; }

        public bool? HasDigitizedTrajectory { get; set; } 

        public bool? HasFilingDocument { get; set; } 

        public bool? HasProductionForecast { get; set; }

        public bool? HasWellLogLAS { get; set; } 

        public bool? HasWellLogRaster { get; set; }

        public double? HorizontalLength { get; set; }

        public double? HorizontalWellboreLength { get; set; }

        public bool? IsGasDcaProxied { get; set; } 

        public bool? IsOilDcaProxied { get; set; } 

        public string LASMnemonics { get; set; }

        public double? Last12Gas { get; set; }

        public double? Last12Oil { get; set; }

        public double? Last12Water { get; set; }

        public double? Last12Yield { get; set; }

        public DateTime? LastProdDate { get; set; }

        public string LastTestType { get; set; }

        public DateTime? LastWellTestDate { get; set; }

        public double? LateralLength { get; set; }

        public double? LatestGOR { get; set; }

        public double? LatestGas { get; set; }

        public double? LatestOil { get; set; }

        public double? LatestWater { get; set; }

        public double? LatestWhsip { get; set; }

        public double? LatestYield { get; set; }

        public string LeaseName { get; set; }

        public double? LowerPerforation { get; set; }

        public double? MaxInjectionPressureFirstTreatmentJob { get; set; }

        public double? MaxInjectionRateFirstTreatmentJob { get; set; }

        public double? MeasuredDepth { get; set; }

        public double? MonthsProduced { get; set; }

        public string OCSArea { get; set; }

        public string OilGatherer { get; set; }

        public double? OilGravity { get; set; }

        public double? OilRRRBE { get; set; }

        public double? OilRRRFull { get; set; }

        public string OperatorAlias { get; set; }

        public string OperatorCompanyName { get; set; }

        public string OperatorTicker { get; set; }

        public string PGCArea { get; set; }

        public double? PeakBOE { get; set; }

        public double? PeakBOEMonthNo { get; set; }

        public double? PeakBOEPer1000BBLFluid { get; set; }

        public double? PeakBOEPer1MMLbsProppant { get; set; }

        public double? PeakBOEPerPerforatedFt { get; set; }

        public double? PeakGas { get; set; }

        public double? PeakGasMonthNo { get; set; }

        public double? PeakGasPer1000BBLFluid { get; set; }

        public double? PeakGasPer1MMLbsProppant { get; set; }

        public double? PeakGasPerPerforatedFt { get; set; }

        public double? PeakMMCFGE { get; set; }

        public double? PeakMMCFGEMonthNo { get; set; }

        public double? PeakOil { get; set; }

        public double? PeakOilMonthNo { get; set; }

        public double? PeakOilPer1000BBLFluid { get; set; }

        public double? PeakOilPer1MMLbsProppant { get; set; }

        public double? PeakOilPerPerforatedFt { get; set; }

        public double? PercentInLandingZone { get; set; }

        public string PlayAssessmentBasin { get; set; }

        public double? PracIPBOE { get; set; }

        public double? PracIPCFGED { get; set; }

        public double? PracIPGasDaily { get; set; }

        public double? PracIPOilDaily { get; set; }

        public double? Prior12Gas { get; set; }

        public double? Prior12Oil { get; set; }

        public double? Prior12Water { get; set; }

        public double? ProducingEntityCount { get; set; }

        public string ProducingEntityID { get; set; }

        public string ProducingEntityLeaseNumber { get; set; }

        public string ProducingEntityType { get; set; }

        public string ProducingReservoir { get; set; }

        public string ProductionType { get; set; }

        public double? ProppantConcentrationLbsPerGalFirstTreatmentJob { get; set; }

        public double? ProppantPerHorizontalFootFirstTreatmentJob { get; set; }

        public double? ProppantPerPerforatedFootFirstTreatmentJob { get; set; }

        public string QualifierFirstTreatmentJob { get; set; }

        public string QuarterQuarter { get; set; }

        public string Range { get; set; }

        public string ReportedOperator { get; set; }

        public double? SecondMonthGOR { get; set; }

        public double? SecondMonthYield { get; set; }

        public string Section { get; set; }

        public double? ShallowestPerforation { get; set; }

        public DateTime? SpudDate { get; set; }

        public string SpudDateSource { get; set; } 

        public double? StageCountFirstTreatmentJob { get; set; }

        public DateTime? StartDateFirstTreatmentJob { get; set; }

        public string State { get; set; }

        public double? SurfaceHoleLatitudeWGS84 { get; set; }

        public double? SurfaceHoleLongitudeWGS84 { get; set; }

        public string Survey { get; set; }

        public double? TVDSSMean { get; set; }

        public string TargetFormation { get; set; }

        public string ToeInLandingZone { get; set; }

        public double? TotalAdditiveFirstTreatmentJob { get; set; }

        public double? TotalFluidFirstTreatmentJob { get; set; }

        public double? TotalProppantFirstTreatmentJob { get; set; }

        public string Township { get; set; }

        public double? TreatmentJobCountAPI10 { get; set; }

        public string TreatmentType { get; set; }

        public double? TrueVerticalDepth { get; set; }

        public string TrueVerticalDepthSource { get; set; }

        public string UWI { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public double? UpperPerforation { get; set; }

        public string WellName { get; set; }

        public string WellNumber { get; set; }

        public string WellStatus { get; set; }

        public double? WellboreCountAPI10 { get; set; }

    }

}
