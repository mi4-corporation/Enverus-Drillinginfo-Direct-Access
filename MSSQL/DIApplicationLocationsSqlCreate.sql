Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'ApplicationLocations') 
begin

create table ApplicationLocations(
	Mi4ApplicationLocationID int primary key identity,
	AppOrderLocationId int null,
	AppOrderId int null,
	CountyName varchar(1000) null,
	CreatedDate datetime null,
	DeletedDate datetime null,
	MeridianCode varchar(max) null,
	[Range] varchar(max) null,
	Section varchar(max) null,
	SectionCalls varchar(max) null,
	StateCode varchar(1000) null,
	Township varchar(max) null,
	UpdatedDate datetime null,
	Mi4AddDtTm datetime NULL default GETDATE(),
	Mi4LastUpdateDtTm datetime null)
				
end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ApplicationLocations') AND name = N'IX_ApplicationLocations_UpdatedDate') CREATE NONCLUSTERED INDEX IX_ApplicationLocations_UpdatedDate ON DrillingInfo.dbo.ApplicationLocations (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ApplicationLocations') AND name = N'IX_ApplicationLocations_StateCode') CREATE NONCLUSTERED INDEX IX_ApplicationLocations_StateCode ON DrillingInfo.dbo.ApplicationLocations (StateCode)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ApplicationLocations') AND name = N'IX_ApplicationLocations_CountyName') CREATE NONCLUSTERED INDEX IX_ApplicationLocations_CountyName ON DrillingInfo.dbo.ApplicationLocations (CountyName)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ApplicationLocations') AND name = N'IX_ApplicationLocations_DeletedDate') CREATE NONCLUSTERED INDEX IX_ApplicationLocations_DeletedDate ON DrillingInfo.dbo.ApplicationLocations (DeletedDate)

end


