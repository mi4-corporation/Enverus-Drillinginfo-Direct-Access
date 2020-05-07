Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'ApplcationFormations') 
begin

create table ApplicationFormations(
	Mi4ApplicationFormationID int primary key identity,
	AppOrderFormationId int null,
	AppOrderId int null,
	CreatedDate datetime null,
	DeletedDate datetime null,
	DepthLower float null,
	DepthUpper float null,
	[Description] varchar(max) null,
	FormationName varchar(max) null,
	MeridianCode varchar(max) null,
	Orientation varchar(max) null,
	ProductCode varchar(max) null,
	[Range] varchar(max) null,
	Section varchar(max) null,
	SectionCalls varchar(max) null,
	Size float null,
	StateCode varchar(1000) null,
	Township varchar(max) null,
	UpdatedDate datetime null,
	Mi4AddDtTm datetime NULL default GETDATE(),
	Mi4LastUpdateDtTm datetime null)
				
end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ApplicationFormations') AND name = N'IX_ApplicationFormations_UpdatedDate') CREATE NONCLUSTERED INDEX IX_ApplicationFormations_UpdatedDate ON DrillingInfo.dbo.ApplicationFormations (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ApplicationFormations') AND name = N'IX_ApplicationFormations_StateCode') CREATE NONCLUSTERED INDEX IX_ApplicationFormations_StateCode ON DrillingInfo.dbo.ApplicationFormations (StateCode)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ApplicationFormations') AND name = N'IX_ApplicationFormations_DeletedDate') CREATE NONCLUSTERED INDEX IX_ApplicationFormations_DeletedDate ON DrillingInfo.dbo.ApplicationFormations (DeletedDate)

end


