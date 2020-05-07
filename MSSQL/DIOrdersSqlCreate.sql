Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'Orders') 
begin

create table Orders(
	Mi4OrderID int primary key identity,
	ActiveCommonName varchar(max) null,
	ActiveTickerName varchar(max) null,
	AppOrderId int null,
	CauseNumber varchar(max) null,
	CreatedDate datetime null,
	DIBasin varchar(max) null,
	DICountryCode varchar(max) null,
	DICountryName varchar(max) null,
	DICountyParishName varchar(1000) null,
	DIPlay varchar(max) null,
	DIStateProvinceCode varchar(1000) null,
	DIStateProvinceName varchar(1000) null,
	DISubPlay varchar(max) null,
	DeletedDate datetime null,
	Docket varchar(max) null,
	DocumentSubTypeCodes varchar(max) null,
	DocumentSubTypes varchar(max) null,
	DocumentTypeCode varchar(max) null,
	MultiunitHorizontal bit null,
	Notes varchar(max) null,
	OrderNumber varchar(max) null,
	PrimaryDate datetime null,
	ReportedApplicant varchar(max) null,
	SignedDate datetime null,
	StateCode varchar(1000) null,
	UpdatedDate datetime null,
	Mi4AddDtTm datetime NULL default GETDATE(),
	Mi4LastUpdateDtTm datetime null)
				
end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Orders') AND name = N'IX_Orders_UpdatedDate') CREATE NONCLUSTERED INDEX IX_Orders_UpdatedDate ON DrillingInfo.dbo.Orders (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Orders') AND name = N'IX_Orders_DIStateProvinceName') CREATE NONCLUSTERED INDEX IX_Orders_DIStateProvinceName ON DrillingInfo.dbo.Orders (DIStateProvinceName)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Orders') AND name = N'IX_Orders_DIStateProvinceCode') CREATE NONCLUSTERED INDEX IX_Orders_DIStateProvinceCode ON DrillingInfo.dbo.Orders (DIStateProvinceCode)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Orders') AND name = N'IX_Orders_StateCode') CREATE NONCLUSTERED INDEX IX_Orders_StateCode ON DrillingInfo.dbo.Orders (StateCode)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Orders') AND name = N'IX_Orders_DICountyParishName') CREATE NONCLUSTERED INDEX IX_Orders_DICountyParishName ON DrillingInfo.dbo.Orders (DICountyParishName)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Orders') AND name = N'IX_Orders_DeletedDate') CREATE NONCLUSTERED INDEX IX_Orders_DeletedDate ON DrillingInfo.dbo.Orders (DeletedDate)

end

