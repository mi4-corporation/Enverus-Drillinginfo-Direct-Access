Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'CompanyAcreage') 
begin

create table CompanyAcreage(
	Mi4CompanyAcreageID int primary key identity,
	AcreageId int null,
	AcreageStatus varchar(max) null,
	AreaGrossAcres float null,
	Comment varchar(max) null,
	CountyParish varchar(1000) null,
	CreatedDate datetime null,
	DIBasin varchar(max) null,
	DeletedDate datetime null,
	[Geometry] varchar(max) null,
	MapId int null,
	OperatorCompanyName varchar(max) null,
	OperatorReported varchar(max) null,
	OperatorTicker varchar(max) null,
	PECompanyWideEquityCommitmentMM float null,
	PEInitialFundingYear int null,
	PESponsors varchar(max) null,
	PEStatus varchar(max) null,
	PETargetRegion varchar(max) null,
	PeerGroup varchar(max) null,
	ShapefileUpdateDate datetime null,
	[State] varchar(1000) null,
	USRegion varchar(max) null,
	UpdatedDate datetime null,
	Mi4AddDtTm datetime NULL default GETDATE(),
	Mi4LastUpdateDtTm datetime null)
				
end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].CompanyAcreage') AND name = N'IX_CompanyAcreage_UpdatedDate') CREATE NONCLUSTERED INDEX IX_CompanyAcreage_UpdatedDate ON DrillingInfo.dbo.CompanyAcreage (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].CompanyAcreage') AND name = N'IX_CompanyAcreage_State') CREATE NONCLUSTERED INDEX IX_CompanyAcreage_State ON DrillingInfo.dbo.CompanyAcreage ([State])

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].CompanyAcreage') AND name = N'IX_CompanyAcreage_CountyParish') CREATE NONCLUSTERED INDEX IX_CompanyAcreage_CountyParish ON DrillingInfo.dbo.CompanyAcreage (CountyParish)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].CompanyAcreage') AND name = N'IX_CompanyAcreage_DeletedDate') CREATE NONCLUSTERED INDEX IX_CompanyAcreage_DeletedDate ON DrillingInfo.dbo.CompanyAcreage (DeletedDate)

end


