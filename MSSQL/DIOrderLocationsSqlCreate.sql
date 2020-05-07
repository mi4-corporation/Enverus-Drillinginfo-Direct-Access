Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'OrderLocations') 
begin

create table OrderLocations(Mi4OrderLocationID int primary key identity,
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

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].OrderLocations') AND name = N'IX_OrderLocations_UpdatedDate') CREATE NONCLUSTERED INDEX IX_OrderLocations_UpdatedDate ON DrillingInfo.dbo.OrderLocations (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].OrderLocations') AND name = N'IX_OrderLocations_StateCode') CREATE NONCLUSTERED INDEX IX_OrderLocations_StateCode ON DrillingInfo.dbo.OrderLocations (StateCode)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].OrderLocations') AND name = N'IX_OrderLocations_CountyName') CREATE NONCLUSTERED INDEX IX_OrderLocations_CountyName ON DrillingInfo.dbo.OrderLocations (CountyName)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].OrderLocations') AND name = N'IX_OrderLocations_DeletedDate') CREATE NONCLUSTERED INDEX IX_OrderLocations_DeletedDate ON DrillingInfo.dbo.OrderLocations (DeletedDate)

end


