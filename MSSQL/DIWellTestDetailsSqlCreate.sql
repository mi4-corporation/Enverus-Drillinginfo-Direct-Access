Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'WellTestDetails') 
begin

create table WellTestDetails (
	WellTestDetailRowID int primary key identity,
	WellTestDetailID int null unique,
	WellTestID int null,
	UpdatedDate datetime null,
	DeletedDate datetime null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	CreatedDate datetime null,
	LineSize numeric(20,5) null,
	TwentyFourHrCoeffOrifOrChoke numeric(10,2) null,
	StaticPressureOrChoke numeric(10,2) null,
	DifferentialPressure numeric(10,2) null,
	FlowTemp numeric(10,2) null,
	TempCorrectingFactor numeric(10,2) null,
	SpecificGravityCorrectFactor numeric(10,2) null,
	CompressionFactor numeric(20,5) null,
	RunGasVolume numeric(10,2) null,
	RunTime numeric(10,2) null,
	WellHeadFlowingPressure numeric(10,2) null,
	WellHeadFlowTemp numeric(10,2) null,
	WellHeadShutInPressure numeric(10,2) null,
	WellHeadShutInTemp numeric(10,2) null,
	InitialShutInPressurePSI numeric(10,2) null,
	FinalShutInPressurePSI numeric(10,2) null,
	InitialFlowingPressurePSI numeric(10,2),
	FinalFlowingPressurePSI numeric(10,2) null,
	OpenTimeMin numeric(10,2) null,
	ShutInTimeMin numeric(10,2) null,
	RunNumber varchar(20) null,
	OrificeChokeSize varchar(50) null,
	RunChokeSize varchar(50) null,
	RecoveryRemarks varchar(max) null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellTestDetails') AND name = N'IX_WellTestDetails_UpdatedDate') CREATE NONCLUSTERED INDEX IX_WellTestDetails_UpdatedDate ON DrillingInfo.dbo.WellTestDetails (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellTestDetails') AND name = N'IX_WellTestDetails_StateProvince') CREATE NONCLUSTERED INDEX IX_WellTestDetails_StateProvince ON DrillingInfo.dbo.WellTestDetails (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellTestDetails') AND name = N'IX_WellTestDetails_County') CREATE NONCLUSTERED INDEX IX_WellTestDetails_County ON DrillingInfo.dbo.WellTestDetails (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellTestDetails') AND name = N'IX_WellTestDetails_DeletedDate') CREATE NONCLUSTERED INDEX IX_WellTestDetails_DeletedDate ON DrillingInfo.dbo.WellTestDetails (DeletedDate)

end