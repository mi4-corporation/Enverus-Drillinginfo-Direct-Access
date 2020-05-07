Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'WellTestHeaders') 
begin

create table WellTestHeaders (
	WellTestHeaderID int primary key identity,
	WellTestID int null unique,
	WellboreID int null,
	CompletionID int null,
	DeletedDate datetime null,
	UpdatedDate datetime null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	GovernmentID varchar(50) null,
	CreatedDate datetime null,
	TestDate date null,
	TwentyFourHrCalculatedGasProduction numeric(10,2) null,
	TwentyFourHrCalculatedOilProduction numeric(10,2) null,
	TwentyFourHrCalculatedWaterProduction numeric(10,2) null,
	AvgShutInTemp numeric(10,2) null,
	AbsoluteOpenFlow numeric(10,2) null,
	BottomholeTempf numeric(10,2) null,
	BottomholeTempDepth int null,
	CasingPressure numeric(10,2) null,
	CLPPM numeric(10,2) null,
	CushionFeet numeric(10,2) null,
	FinalShutInPressurePSI numeric(10,2) null,
	FlowingTubingPressure numeric(10,2) null,
	GasGravity numeric(10,2) null,
	GasVolume numeric(10,2) null,
	H2SPPM numeric(10,2) null,
	HoursTested numeric(10,2) null,
	InitialShutInPressurePSI numeric(10,2) null,
	InitialHydrostaticPressurePSI numeric(10,2) null,
	InjectionGasOilRatio numeric(10,2) null,
	MixtureGravity numeric(10,2) null,
	OilGravity numeric(10,2) null,
	OilProducedPriortoTest numeric(10,2) null,
	SlopenAngle numeric(10,2) null,
	SlopeoAngle numeric(10,2) null,
	TestTop numeric(10,2) null,
	TestBottom numeric(10,2) null,
	TestSequence int null,
	WaterVolume numeric(10,2) null,
	LiquidVolume numeric(10,2) null,
	GasLiquidRatio numeric(10,2) null,
	FortyEightHrPreflow varchar(5) null,
	Condensate varchar(5) null,
	ChokeSizeInch varchar(50) null,
	CriticalFlowProver varchar(5) null,
	DSTNarrative varchar(500) null,
	FlangeTaps varchar(5) null,
	HydrogenSulfide varchar(5) null,
	MassFlowMeter varchar(5) null,
	OrificeMeter varchar(5) null,
	OrificeVentMeter varchar(5) null,
	OtherMeasurementMethod varchar(5) null,
	OtherRecoveryRemark varchar(500) null,
	PipeTaps varchar(5) null,
	PipeRecoveryRemark varchar(max) null,
	PitotTube varchar(5) null,
	PositiveChoke varchar(5) null,
	ProductionMethod varchar(128) null,
	SampleChamberRecoveryRemark varchar(500) null,
	SwabUsed varchar(5) null,
	SurfaceRecoveryRemark varchar(500) null,
	TestType varchar(128) null,
	TestTypeReported varchar(100) null,
	TestFormation varchar(100) null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	BottomholePressure float null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellTestHeaders') AND name = N'IX_WellTestHeaders_UpdatedDate') CREATE NONCLUSTERED INDEX IX_WellTestHeaders_UpdatedDate ON DrillingInfo.dbo.WellTestHeaders (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellTestHeaders') AND name = N'IX_WellTestHeaders_StateProvince') CREATE NONCLUSTERED INDEX IX_WellTestHeaders_StateProvince ON DrillingInfo.dbo.WellTestHeaders (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellTestHeaders') AND name = N'IX_WellTestHeaders_County') CREATE NONCLUSTERED INDEX IX_WellTestHeaders_County ON DrillingInfo.dbo.WellTestHeaders (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellTestHeaders') AND name = N'IX_WellTestHeaders_DeletedDate') CREATE NONCLUSTERED INDEX IX_WellTestHeaders_DeletedDate ON DrillingInfo.dbo.WellTestHeaders (DeletedDate)

end