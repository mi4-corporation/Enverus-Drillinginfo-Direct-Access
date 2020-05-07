Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'OrderFormations') 
begin

create table OrderFormations(
	Mi4OrderFormationID int primary key identity,
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

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].OrderFormations') AND name = N'IX_OrderFormations_UpdatedDate') CREATE NONCLUSTERED INDEX IX_OrderFormations_UpdatedDate ON DrillingInfo.dbo.OrderFormations (UpdatedDate)

--Ask Blake if this counts as the "state" for this table. (done)
IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].OrderFormations') AND name = N'IX_OrderFormations_StateCode') CREATE NONCLUSTERED INDEX IX_OrderFormations_StateCode ON DrillingInfo.dbo.OrderFormations (StateCode)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].OrderFormations') AND name = N'IX_OrderFormations_DeletedDate') CREATE NONCLUSTERED INDEX IX_OrderFormations_DeletedDate ON DrillingInfo.dbo.OrderFormations (DeletedDate)

end
