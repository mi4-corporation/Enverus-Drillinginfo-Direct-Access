Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'CasingTubings') 
begin
	
create table CasingTubings (
	CasingTubingID int primary key,
	CompletionID int null,
	WellID int null,
	WellboreID int null,
	GovernmentID varchar(50) null,
	DeletedDate datetime null,
	UpdatedDate datetime null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	CreatedDate datetime null,
	CasingSequence int null,
	[Top] numeric(10,2) null,
	Bottom numeric(10,2) null,
	HoleDiameter numeric(10,2) null,
	AmountPulled numeric(10,2) null,
	SlurryVolume numeric(10,2) null,
	[Weight] numeric(10,2) null,
	Diameter numeric(10,2) null,
	MultiStageToolDepth numeric(10,2) null,
	MultiStageShoeDepth numeric(10,2) null,
	AnchorDepth numeric(10,2) null,
	TopOfCement numeric(10,2) null,
	CementSacks numeric(10,2) null,
	Weight2 numeric(10,2) null,
	CementClass varchar(500) null,
	Thread varchar(50) null,
	LinerScreen varchar(100) null,
	TopOfCementDeterminationMethod varchar(500) null,
	Grade varchar(500) null,
	Region varchar(50) null,
	Country varchar(5) null,
	CasingType varchar(100) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	[Type] varchar(500) null,
	CasingWellbore varchar(128) null,
	Field varchar(100) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].CasingTubings') AND name = N'IX_CasingTubings_UpdatedDate') CREATE NONCLUSTERED INDEX IX_CasingTubings_UpdatedDate ON DrillingInfo.dbo.CasingTubings (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].CasingTubings') AND name = N'IX_CasingTubings_StateProvince') CREATE NONCLUSTERED INDEX IX_CasingTubings_StateProvince ON DrillingInfo.dbo.CasingTubings (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].CasingTubings') AND name = N'IX_CasingTubings_County') CREATE NONCLUSTERED INDEX IX_CasingTubings_County ON DrillingInfo.dbo.CasingTubings (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].CasingTubings') AND name = N'IX_CasingTubings_DeletedDate') CREATE NONCLUSTERED INDEX IX_CasingTubings_DeletedDate ON DrillingInfo.dbo.CasingTubings (DeletedDate)

end