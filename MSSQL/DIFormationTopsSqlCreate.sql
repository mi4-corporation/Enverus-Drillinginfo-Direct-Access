Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'FormationTops') 
begin
	
create table FormationTops(
	FormationTopRowID int primary key identity,
	FormationTopID int null unique,
	WellboreID int null,
	WellID int null,
	GovernmentID varchar(50) null,
	UpdatedDate datetime null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	DeletedDate datetime null,
	CreatedDate datetime null,
	FormationConformed varchar(100) null,
	FormationTopTVD float null,
	FormationTopMD float null,
	FormationTopUnknown float null,
	FormationBottomUnknown float null,
	Source varchar(100) null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	DIBasin varchar(max) null,
	DIStateProvinceCode varchar(1000) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].FormationTops') AND name = N'IX_FormationTops_UpdatedDate') CREATE NONCLUSTERED INDEX IX_FormationTops_UpdatedDate ON DrillingInfo.dbo.FormationTops (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].FormationTops') AND name = N'IX_FormationTops_StateProvince') CREATE NONCLUSTERED INDEX IX_FormationTops_StateProvince ON DrillingInfo.dbo.FormationTops (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].FormationTops') AND name = N'IX_FormationTops_County') CREATE NONCLUSTERED INDEX IX_FormationTops_County ON DrillingInfo.dbo.FormationTops (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].FormationTops') AND name = N'IX_FormationTops_DeletedDate') CREATE NONCLUSTERED INDEX IX_FormationTops_DeletedDate ON DrillingInfo.dbo.FormationTops (DeletedDate)

end