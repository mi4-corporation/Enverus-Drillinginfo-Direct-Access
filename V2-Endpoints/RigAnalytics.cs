using System;

namespace DirectAccess
{
    /// <summary>
    /// This class represents the DrillingInfo V2 Rig Analytics endpoint. Each property in the class represents a data column for the endpoint, matching it by name.
    /// </summary>
	public class RigAnalytics
	{
        public string API10 { get; set; }

        public int? APIVisitNumber { get; set; }

        public string Abstract { get; set; }

        public string ActiveStatus { get; set; }

        public string Block { get; set; }

        public DateTime? CompletionDate { get; set; }

        public double? CompletionToProduction { get; set; }

        public string ContractorName { get; set; }

        public string ContractorWebsite { get; set; }

        public string Country { get; set; }

        public string CountyParish { get; set; }

        public DateTime? CreatedDate { get; set; }

        public string DIBasin { get; set; }

        public string DILandingZone { get; set; }

        public string DIPlay { get; set; }

        public string DISubplay { get; set; }

        public DateTime? DUCEndDate { get; set; }

        public DateTime? DUCStartDate { get; set; }

        public string DUCStatus { get; set; }

        public double? DaysOnLocation { get; set; }

        public DateTime? DeletedDate { get; set; }

        public string DrawWorks { get; set; }

        public string DrillType { get; set; }

        public double? DrilledHorizontalDistance { get; set; }

        public double? DrilledVerticalDepth { get; set; }

        public string Field { get; set; }

        public DateTime? FirstDay { get; set; }

        public DateTime? FirstProductionDate { get; set; }

        public double? FootagePerDaySection { get; set; }

        public double? FootagePerDayWell { get; set; }

        public string Formation { get; set; }

        public double? FormationDepth { get; set; }

        public string H2SArea { get; set; }

        public string Hydrocarbon { get; set; }

        public bool? IsDeleted { get; set; }

        public string JobID { get; set; }

        public string LandOffshore { get; set; }

        public DateTime? LastDay { get; set; }

        public double? LateralLength { get; set; }

        public string LateralLengthSource { get; set; }

        public string LeaseName { get; set; }

        public int? MaxRigVisitNumber { get; set; }

        public double? MeasuredDepthTD { get; set; }

        public string Mobility { get; set; }

        public double? MoveDistanceFromLastJobmi { get; set; }

        public double? MoveDistanceToNextJobmi { get; set; }

        public string OFSRegion { get; set; }

        public string OperatorAtDrill { get; set; }

        public string OperatorCity30mi { get; set; }

        public string OperatorCity50mi { get; set; }

        public string OperatorCompanyName { get; set; }

        public string OperatorTicker { get; set; }

        public DateTime? PermitAmendedDate { get; set; }

        public DateTime? PermitApprovalDate { get; set; }

        public double? PermitBottomHoleLatitudeWGS84 { get; set; }

        public double? PermitBottomHoleLongitudeWGS84 { get; set; }

        public double? PermitDepth { get; set; }

        public DateTime? PermitExpiredDate { get; set; }

        public double? PermitLatitudeWGS84 { get; set; }

        public double? PermitLongitudeWGS84 { get; set; }

        public string PermitNumber { get; set; }

        public DateTime? PermitOriginalApprovedDate { get; set; }

        public DateTime? PermitPostedDate { get; set; }

        public string PermitStatus { get; set; }

        public double? PermitToSpud { get; set; }

        public string PermitType { get; set; }

        public string PowerType { get; set; }

        public string ProductionStatus { get; set; }

        public string Range { get; set; }

        public double? RatedHP { get; set; }

        public double? RatedWaterDepth { get; set; }

        public DateTime? ReleaseDate { get; set; }

        public double? ReleaseToCompletion { get; set; }

        public string ReportedOperator { get; set; }

        public string ReservoirAlias { get; set; }

        public string RigClass { get; set; }

        public int? RigID { get; set; }

        public double? RigLatitudeWGS84 { get; set; }

        public double? RigLongitudeWGS84 { get; set; }

        public string RigNameNumber { get; set; }

        public string RigType { get; set; }

        public int? RigVisitNumber { get; set; }

        public string Section { get; set; }

        public string SectionDrilled { get; set; }

        public DateTime? SpudDate { get; set; }

        public double? SpudToCompletion { get; set; }

        public double? SpudToRelease { get; set; }

        public string StateProvince { get; set; }

        public string Survey { get; set; }

        public double? TVD { get; set; }

        public string TVDSource { get; set; }

        public string TemporaryLocation { get; set; }

        public int? TemporaryPermitID { get; set; }

        public double? TotalDaysOnLocation { get; set; }

        public string Township { get; set; }

        public DateTime? UpdatedDate { get; set; }

        public string WellNumber { get; set; }

        public DateTime? WellStartDate { get; set; }

        public string WellStatus { get; set; }

        public string WellType { get; set; }

        public string WellTypeAlias { get; set; }

        public string Wildcat { get; set; }
    }
}