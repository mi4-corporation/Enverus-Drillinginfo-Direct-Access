Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'Perforations') 
begin

create table Perforations (
	PerforationRowID int primary key identity,
	PerforationID int null unique,
	CompletionID int null,
	GovernmentID varchar(50) null,
	WellboreID int null,
	UpdatedDate datetime null,
	DeletedDate datetime null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	CreatedDate datetime null,
	Source varchar(2) null,
	TopDepth numeric(10,2) null,
	BaseDepth numeric(10,2) null,
	Formation varchar(100) null,
	PerforationDate date null,
	PerforationDensity float null,
	PerforationDiameter numeric(10,2) null,
	PerforationPhase int null,
	PerforationSequence int null,
	OpenHole bit null,
	PerforationRemark varchar(200) null,
	CementSacks int null,
	IsolationDate date null,
	IsolationMethod varchar(500) null,
	IsolationRemark varchar(200) null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Perforations') AND name = N'IX_Perforations_UpdatedDate') CREATE NONCLUSTERED INDEX IX_Perforations_UpdatedDate ON DrillingInfo.dbo.Perforations (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Perforations') AND name = N'IX_Perforations_StateProvince') CREATE NONCLUSTERED INDEX IX_Perforations_StateProvince ON DrillingInfo.dbo.Perforations (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Perforations') AND name = N'IX_Perforations_County') CREATE NONCLUSTERED INDEX IX_Perforations_County ON DrillingInfo.dbo.Perforations (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Perforations') AND name = N'IX_Perforations_DeletedDate') CREATE NONCLUSTERED INDEX IX_Perforations_DeletedDate ON DrillingInfo.dbo.Perforations (DeletedDate)

end