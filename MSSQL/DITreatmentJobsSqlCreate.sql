Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'TreatmentJobs') 
begin

create table TreatmentJobs (
	TreatmentJobRowID int primary key identity,
	TreatmentJobID int null unique,
	CompletionID int null,
	WellID int null,
	WellboreID int null,
	GovernmentID varchar(50) null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	UpdatedDate datetime null,
	DeletedDate datetime null,
	CreatedDate datetime null,
	TreatmentTop float null,
	TreatmentBottom float null,
	TreatmentSequence float null,
	StageCount float null,
	TotalFluidGal float null,
	TotalProppantlbs float null,
	TotalAdditiveGal float null,
	TotalAdditivelbs float null,
	OpenHole bit null,
	InitialFluidDensity numeric(10,2) null,
	MinFractureGradient numeric(10,2) null,
	RecoveredFlowback numeric(10,2) null,
	AverageRate numeric(10,2) null,
	AveragePressure numeric(10,2) null,
	MinRate numeric(10,2) null,
	MaxRate numeric(10,2) null,
	MaxPressure numeric(10,2) null,
	BreakdownPressure numeric(10,2) null,
	ShutinPressure numeric(10,2) null,
	TotalBasedWatervolumeGal numeric(10,2) null,
	TotalBasedNonWatervolumeGal numeric(10,2) null,
	PreFracCSGPSI numeric(10,2) null,
	AcidConcentration numeric(10,2) null,
	StartDate date null,
	EndDate date null,
	[Source] varchar(100) null,
	TreatmentType varchar(200) null,
	TreatmentFormation varchar(100) null,
	TreatmentGasType varchar(15) null,
	FracProvider varchar(100) null,
	ReportedContractorName varchar(100) null,
	FlowbackDisposalMethod varchar(50) null,
	Remarks varchar(max) null,
	GreenTechniques varchar(10) null,
	RemarkGreenTechniques varchar(100) null,
	FracTechnique varchar(50) null,
	RemarkFracTechnique varchar(100) null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentJobs') AND name = N'IX_TreatmentJobs_UpdatedDate') CREATE NONCLUSTERED INDEX IX_TreatmentJobs_UpdatedDate ON DrillingInfo.dbo.TreatmentJobs (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentJobs') AND name = N'IX_TreatmentJobs_StateProvince') CREATE NONCLUSTERED INDEX IX_TreatmentJobs_StateProvince ON DrillingInfo.dbo.TreatmentJobs (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentJobs') AND name = N'IX_TreatmentJobs_County') CREATE NONCLUSTERED INDEX IX_TreatmentJobs_County ON DrillingInfo.dbo.TreatmentJobs (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentJobs') AND name = N'IX_TreatmentJobs_DeletedDate') CREATE NONCLUSTERED INDEX IX_TreatmentJobs_DeletedDate ON DrillingInfo.dbo.TreatmentJobs (DeletedDate)

end