Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'DealsForSale') 
begin

create table DealsForSale(
	Mi4DealsForSaleID int primary key identity,
	AcresNetUndeveloped float null,
	Assets varchar(max) null,
	BidDeadline datetime null,
	Blocks varchar(max) null,
	Country varchar(max) null,
	CountyParish varchar(1000) null,
	CreatedDate datetime null,
	DIBasin varchar(max) null,
	DateAnnounced datetime null,
	DealHighlights varchar(max) null,
	DealStatus varchar(max) null,
	DealType varchar(max) null,
	DealsForSaleID int null,
	DealsForSaleNotes varchar(max) null,
	DeletedDate datetime null,
	[Geometry] varchar(max) null,
	Headline varchar(max) null,
	Hydrocarbon varchar(max) null,
	Latitude float null,
	Licenses varchar(max) null,
	Longitude float null,
	OnshoreOffshore varchar(max),
	OpNonOp varchar(max) null,
	OperatorCompanyName varchar(max) null,
	OperatorTicker varchar(max) null,
	ProductionMBOEDGross float null,
	ProductionMBOEDNet float null,
	ProductionPercentOil float null,
	Region varchar(max) null,
	Reserves2PMMBOEGross float null,
	Reserves2PPercentOil float null,
	ReservesProvedMMBOEGross float null,
	ReservesProvedMMBOENet float null,
	ReservesProvedPercentOil float null,
	ResourceType varchar(max) null,
	Sellers varchar(max) null,
	SellersFinancialAdvisors varchar(max) null,
	SellersPeerGroup varchar(max) null,
	[State] varchar(1000) null,
	TransactionType varchar(max) null,
	USPlay varchar(max) null,
	USRegion varchar(max) null,
	USSubRegion varchar(max) null,
	UpdatedDate datetime null,
	ValueRangeMM varchar(max) null,
	Mi4AddDtTm datetime NULL default GETDATE(),
	Mi4LastUpdateDtTm datetime null)
				
end


begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].DealsForSale') AND name = N'IX_DealsForSale_UpdatedDate') CREATE NONCLUSTERED INDEX IX_DealsForSale_UpdatedDate ON DrillingInfo.dbo.DealsForSale (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].DealsForSale') AND name = N'IX_DealsForSale_State') CREATE NONCLUSTERED INDEX IX_DealsForSale_State ON DrillingInfo.dbo.DealsForSale ([State])

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].DealsForSale') AND name = N'IX_DealsForSale_CountyParish') CREATE NONCLUSTERED INDEX IX_DealsForSale_CountyParish ON DrillingInfo.dbo.DealsForSale (CountyParish)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].DealsForSale') AND name = N'IX_DealsForSale_DeletedDate') CREATE NONCLUSTERED INDEX IX_DealsForSale_DeletedDate ON DrillingInfo.dbo.DealsForSale (DeletedDate)

end