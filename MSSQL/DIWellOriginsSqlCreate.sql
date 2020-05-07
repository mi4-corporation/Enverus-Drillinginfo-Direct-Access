Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'WellOrigins') 
begin

create table WellOrigins (
	WellOriginID int primary key identity,
	[UID] int null unique,
	GovernmentID varchar(10) null,
	County varchar(63) null,
	FluidType varchar(100) null,
	LeaseName varchar(500) null,
	OriginalOperator varchar(100) null,
	ProvinceState varchar(50) null,
	WellName varchar(500) null,
	WellNumber varchar(500) null,
	CurrentStatusDate datetime null,
	LicenseDate date null,
	OnProductionDate date null,
	SpudDate date null,
	ConfidentialDate date null,
	CreatedDate datetime null,
	UpdatedDate datetime null,
	DeletedDate datetime null,
	[Source] varchar(2) null,
	LeaseNumber varchar(50) null,
	PermitNumber varchar(128) null,
	Wgs84Latitude numeric(12,7) null,
	Wgs84Longitude numeric(12,7) null,
	Section varchar(10) null,
	Township varchar(10) null,
	TownshipDirection varchar(10) null,
	[Range] varchar(10) null,
	RangeDirection varchar(10) null,
	Abstract varchar(50) null,
	CurrentOperator varchar(100) null,
	Country varchar(20) null,
	Region varchar(200) null,
	Field varchar(100) null,
	Basin varchar(100) null,
	District varchar(3) null,
	Environment varchar(12) null,
	InitialClassification varchar(50) null,
	CurrentStatus varchar(100) null,
	ElevRefDatum varchar(3) null,
	ElevRefDatumepsgCode int null,
	GroundElev numeric(10,2) null,
	WaterDepthDatum varchar(3) null,
	WaterDepth int null,
	Confidential varchar(1) null,
	Remark varchar(max) null,
	DepthUom varchar(2) null,
	ElevUom varchar(2) null,
	Formation varchar(100) null,
	GroundElevationType varchar(max) null,
	OperatorCompanyName varchar(max) null,
	OperatorTicker varchar(max) null,
	SpudDateSource varchar(max) null,
	TopLevelCommonName varchar(max) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellOrigins') AND name = N'IX_WellOrigins_UpdatedDate') CREATE NONCLUSTERED INDEX IX_WellOrigins_UpdatedDate ON DrillingInfo.dbo.WellOrigins (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellOrigins') AND name = N'IX_WellOrigins_ProvinceState') CREATE NONCLUSTERED INDEX IX_WellOrigins_ProvinceState ON DrillingInfo.dbo.WellOrigins (ProvinceState)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellOrigins') AND name = N'IX_WellOrigins_County') CREATE NONCLUSTERED INDEX IX_WellOrigins_County ON DrillingInfo.dbo.WellOrigins (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellOrigins') AND name = N'IX_WellOrigins_DeletedDate') CREATE NONCLUSTERED INDEX IX_WellOrigins_DeletedDate ON DrillingInfo.dbo.WellOrigins (DeletedDate)

end