Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'Permits') 
begin

create table Permits(
	PermitRowID int primary key identity,
	SubmittedDate date null,
	OrigApprovedDate date null,
	ApprovedDate date null,
	AmendmentFiledDate date null,
	ExpiredDate date null,
	API10 varchar(25) null,
	API12 varchar(12) null,
	WGID varchar(128) null,
	OFSRegion varchar(50) null,
	StateProvince varchar(50) null,
	CountyParish varchar(63) null,
	District varchar(128) null,
	LeaseName varchar(100) null,
	WellNumber varchar(50) null,
	LeaseNumber varchar(50) null,
	Field varchar(50) null,
	Formation varchar(500) null,
	OperatorAlias varchar(100) null,
	ReportedOperator varchar(100) null,
	PermitID int null,
	PermitNumber varchar(128) null,
	PermitType varchar(50) null,
	WellType varchar(128) null,
	DrillType varchar(50) null,
	PermitDepth float null,
	PermitDepthUOM varchar(2) null,
	TrueVerticalDepth float null,
	TrueVerticalDepthUOM varchar(2) null,
	PermitStatus varchar(50) null,
	WellStatus varchar(50) null,
	ContactName varchar(max) null,
	ContactPhone varchar(max) null,
	OperatorAddress varchar(max) null,
	OperatorCity varchar(max) null,
	OperatorState varchar(150) null,
	OperatorZip varchar(max) null,
	OperatorCity30mi varchar(max) null,
	OperatorCity50mi varchar(max) null,
	Section varchar(max) null,
	Abstract varchar(max) null,
	Survey varchar(max) null,
	[Block] varchar(max) null,
	Township varchar(max) null,
	[Range] varchar(max) null,
	SurfaceLatitudeWGS84 numeric(12,7) null,
	SurfaceLongitudeWGS84 numeric(12,7) null,
	BottomHoleLatitudeWGS84 numeric(12,7) null,
	BottomHoleLongitudeWGS84 numeric(12,7) null,
	H2SArea bit null,
	ActiveCommonName varchar(max) null,
	ActiveTickerName varchar(max) null,
	DIBasin varchar(max) null,
	DICountryCode varchar(1000) null,
	DICountryName varchar(1000) null,
	DICountyParishName varchar(1000) null,
	DIPlay varchar(max) null,
	DIStateProvinceCode varchar(1000) null,
	DIStateProvinceName varchar(1000) null,
	DISubPlay varchar(max) null,
	CreatedDate datetime null,
	DeletedDate datetime null,
	UpdatedDate datetime null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Permits') AND name = N'IX_Permits_UpdatedDate') CREATE NONCLUSTERED INDEX IX_Permits_UpdatedDate ON DrillingInfo.dbo.Permits (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Permits') AND name = N'IX_Permits_CountyParish') CREATE NONCLUSTERED INDEX IX_Permits_CountyParish ON DrillingInfo.dbo.Permits (CountyParish)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Permits') AND name = N'IX_Permits_StateProvince') CREATE NONCLUSTERED INDEX IX_Permits_StateProvince ON DrillingInfo.dbo.Permits (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Permits') AND name = N'IX_Permits_PermitID') CREATE UNIQUE NONCLUSTERED INDEX IX_Permits_PermitID ON DrillingInfo.dbo.Permits (PermitID)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Permits') AND name = N'IX_Permits_DeletedDate') CREATE NONCLUSTERED INDEX IX_Permits_DeletedDate ON DrillingInfo.dbo.Permits (DeletedDate)

end