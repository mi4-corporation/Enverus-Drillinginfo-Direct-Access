Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'ProducingEntities') 
begin

create table ProducingEntities (
	EntityRowID int primary key identity,
	EntityId int null unique,
	WellId numeric(38) null,
	ProdType varchar(50) null,
	[State] varchar(10) null,
	ApiNo varchar(199) null,
	Reservoir varchar(100) null,
	County varchar(63) null,
	CurrOperName varchar(75) null,
	Basin varchar(75) null,
	DrillType varchar(1) null,
	CommingleDate date null,
	CompDate date null,
	SpudDate date null,
	CreatedDate datetime null,
	UpdatedDate datetime null,
	DeletedDate datetime null,
	District varchar(50) null,
	PdenType varchar(12) null,
	Country varchar(3) null,
	PdenName varchar(100) null,
	Offshore varchar(100) null,
	Field varchar(100) null,
	LeaseNo varchar(30) null,
	CommingleNo varchar(16) null,
	CountyId varchar(6) null,
	WellNo varchar(50) null,
	CurrOperNo varchar(10) null,
	[Status] varchar(50) null,
	ElevationType varchar(10) null,
	LocRemark varchar(150) null,
	[Location] varchar(75) null,
	Section varchar(10) null,
	QtrQtr varchar(20) null,
	Merid varchar(50) null,
	OcsArea varchar(75) null,
	CommonOperName varchar(75) null,
	LesseeAvail varchar(1) null,
	PgcArea varchar(10) null,
	QuadName varchar(30) null,
	Abstract varchar(15) null,
	Survey varchar(75) null,
	TxBlock varchar(15) null,
	TxSec varchar(10) null,
	SubSurvey varchar(50) null,
	TxScrap varchar(15) null,
	FieldNo varchar(30) null,
	ReportedOperName varchar(75) null,
	Formation varchar(100) null,
	Twp varchar(6) null,
	Rng varchar(6) null,
	AllocPlus varchar(1) null,
	Geom varchar(max) null,
	Elevation numeric(10,5) null,
	CurrOperId numeric(9) null,
	TotalDepth numeric(11,5) null,
	UpperPerf numeric(11,5) null,
	LowerPerf numeric(11,5) null,
	LiqGrav numeric(15,6) null,
	GasGrav numeric(15,6) null,
	Latitude numeric(12,7) null,
	Longitude numeric(12,7) null,
	RkbElev numeric(10,5) null,
	WaterDepth numeric(10,5) null,
	ResVertDepth numeric(10,5) null,
	MaxVertDepth numeric(10,5) null,
	LatitudeBotm numeric(12,7) null,
	LongitudeBotm numeric(12,7) null,
	LatitudeEx1 numeric(12,7) null,
	LongitudeEx1 numeric(12,7) null,
	LeaseId numeric(38) null,
	PerfIntervalLength numeric(10,2) null,
	IsDeleted bit null,
	AllInjectedProductTypes varchar(max) null,
	LastInjectedProductTypes varchar(max) null,
	LiqGathName2 varchar(75) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ProducingEntities') AND name = N'IX_ProducingEntities_UpdatedDate') CREATE NONCLUSTERED INDEX IX_ProducingEntities_UpdatedDate ON DrillingInfo.dbo.ProducingEntities (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ProducingEntities') AND name = N'IX_ProducingEntities_State') CREATE NONCLUSTERED INDEX IX_ProducingEntities_State ON DrillingInfo.dbo.ProducingEntities ([State])

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ProducingEntities') AND name = N'IX_ProducingEntities_County') CREATE NONCLUSTERED INDEX IX_ProducingEntities_County ON DrillingInfo.dbo.ProducingEntities (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ProducingEntities') AND name = N'IX_ProducingEntities_DeletedDate') CREATE NONCLUSTERED INDEX IX_ProducingEntities_DeletedDate ON DrillingInfo.dbo.ProducingEntities (DeletedDate)

end