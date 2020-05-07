Use DrillingInfo

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'Wellbores') 
begin

create table Wellbores (
	WellboreRowID int primary key identity,
	[UID] int null unique,
	UIDParent int null,
	WellID int null,
	WellboreID int null unique,
	GovernmentID varchar(50) null,
	WellboreName varchar(128) null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	CurrentStatusDate date null,
	AbandonmentDate date null,
	CompletionDate date null,
	FinalDrillDate date null,
	OnProductionDate date null,
	RigOnsiteDate date null,
	RigReleaseDate date null,
	SpudDate date null,
	CreatedDate datetime null,
	UpdatedDate datetime null,
	DeletedDate datetime null,
	WGS84Latitude numeric(12,7) null,
	WGS84Longitude numeric(12,7) null,
	DepthDatumElev numeric(10,2) null,
	CasingFlangeElev numeric(10,2) null,
	DerrickFloorElevation numeric(10,2) null,
	KellyBushingElevation numeric(10,2) null,
	RotaryTableElev numeric(10,2) null,
	KickoffPointDepth numeric(10,2) null,
	TotalDepth numeric(10,2) null,
	TrueVerticalDepth numeric(10,2) null,
	LoggersTotalDepth numeric(10,2) null,
	WhipstockDepth float null,
	DrillerTotalDepth float null,
	PlugbackDepth float null,
	WellboreNumber int null,
	WellboreType varchar(10) null,
	CurrentStatus varchar(100) null,
	CurrentClassification varchar(50) null,
	DepthUOM varchar(2) null,
	ElevUOM varchar(2) null,
	DepthDatum varchar(2) null,
	[Source] varchar(2) null,
	FluidType varchar(50) null,
	ProfileType varchar(10) null,
	FormationAtTD varchar(100) null,
	Remarks varchar(max) null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	Section varchar(10) null,
	Township varchar(10) null,
	TownshipDirection varchar(10) null,
	[Range] varchar(10) null,
	RangeDirection varchar(10) null,
	Abstract varchar(50) null,
	Formation varchar(100) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Wellbores') AND name = N'IX_Wellbores_UpdatedDate') CREATE NONCLUSTERED INDEX IX_Wellbores_UpdatedDate ON DrillingInfo.dbo.Wellbores (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Wellbores') AND name = N'IX_Wellbores_StateProvince') CREATE NONCLUSTERED INDEX IX_Wellbores_StateProvince ON DrillingInfo.dbo.Wellbores (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Wellbores') AND name = N'IX_Wellbores_County') CREATE NONCLUSTERED INDEX IX_Wellbores_County ON DrillingInfo.dbo.Wellbores (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Wellbores') AND name = N'IX_Wellbores_DeletedDate') CREATE NONCLUSTERED INDEX IX_Wellbores_DeletedDate ON DrillingInfo.dbo.Wellbores (DeletedDate)

end