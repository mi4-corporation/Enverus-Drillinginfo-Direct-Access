Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'Applications') 
begin

create table Applications(
	Mi4ApplicationID int primary key identity,
	ActiveCommonName varchar(max) null,
	ActiveTickerName varchar(max) null,
	AppOrderId int null,
	Attorney varchar(max) null,
	CauseNumber varchar(max) null,
	ContestBy datetime null,
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
	FilingDate datetime null,
	FilingLocation varchar(max) null,
	HearingDate datetime null,
	MultiunitHorizontal bit null,
	Notes varchar(max) null, 
	OCDCauseUrl varchar(max) null,
	OCDHearingDocketUrl varchar(max) null,
	PrimaryDate datetime null,
	ReportedApplicant varchar(max) null,
	StateCode varchar(1000) null, 
	UpdatedDate datetime null,
	Mi4AddDtTm datetime NULL default GETDATE(),
	Mi4LastUpdateDtTm datetime null)
				
end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Applications') AND name = N'IX_Applications_UpdatedDate') CREATE NONCLUSTERED INDEX IX_Applications_UpdatedDate ON DrillingInfo.dbo.Applications (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Applications') AND name = N'IX_Applications_DIStateProvinceCode') CREATE NONCLUSTERED INDEX IX_Applications_DIStateProvinceCode ON DrillingInfo.dbo.Applications (DIStateProvinceCode)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Applications') AND name = N'IX_Applications_DIStateProvinceName') CREATE NONCLUSTERED INDEX IX_Applications_DIStateProvinceName ON DrillingInfo.dbo.Applications (DIStateProvinceName)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Applications') AND name = N'IX_Applications_StateCode') CREATE NONCLUSTERED INDEX IX_Applications_StateCode ON DrillingInfo.dbo.Applications (StateCode)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Applications') AND name = N'IX_Applications_DICountyParishName') CREATE NONCLUSTERED INDEX IX_Applications_DICountyParishName ON DrillingInfo.dbo.Applications (DICountyParishName)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Applications') AND name = N'IX_Applications_DeletedDate') CREATE NONCLUSTERED INDEX IX_Applications_DeletedDate ON DrillingInfo.dbo.Applications (DeletedDate)

end
