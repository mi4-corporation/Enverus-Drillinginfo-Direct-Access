Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'Rigs') 
begin

create table Rigs(
	Mi4RigID int primary key identity,
	API10 varchar(max) null,
	Abstract varchar(max) null,
	[Block] varchar(max) null,
	ContractorAddress varchar(max) null,
	ContractorCity varchar(max) null,
	ContractorContact varchar(max) null,
	ContractorEmail varchar(max) null,
	ContractorName varchar(max) null,
	ContractorPhone varchar(max) null,
	ContractorState varchar(max) null,
	ContractorWebsite varchar(max) null,
	ContractorZip varchar(max) null,
	CreatedDate datetime null,
	DIBasin varchar(max) null,
	DICountryCode varchar(max) null,
	DICountryName varchar(max) null,
	DICountyParishName varchar(500) null,
	DIPlay varchar(max) null,
	DIStateProvinceCode varchar(max) null,
	DIStateProvinceName varchar(500) null,
	DISubPlay varchar(max) null,
	DataSource varchar(max) null,
	DeletedDate datetime null,
	DirectionsToLocation varchar(max) null,
	District varchar(max) null,
	DrawWorks varchar(max) null,
	DrillType varchar(max) null,
	Field varchar(max) null,
	Formation varchar(max) null,
	FormationDepth float null,
	H2SArea varchar(max) null,
	LandOffshore varchar(max) null,
	LeaseName varchar(max) null,
	MajorCity30mi varchar(max) null,
	MajorCity50mi varchar(max) null,
	Mobility varchar(max) null,
	OFSRegion varchar(max) null,
	OperatorAddress varchar(max) null,
	OperatorAlias varchar(max) null,
	OperatorCity varchar(max) null,
	OperatorCompanyName varchar(max) null,
	OperatorContact varchar(max) null,
	OperatorPhone varchar(max) null,
	OperatorState varchar(max) null,
	OperatorTicker varchar(max) null,
	OperatorZip varchar(max) null,
	PermitAmendedDate datetime null,
	PermitApprovedDate datetime null,
	PermitBHLatitudeWGS84 numeric(11,7) null,
	PermitBHLongitudeWGS84 numeric(12,7) null,
	PermitDepth float null,
	PermitLatitudeWGS84 numeric(11,7) null,
	PermitLongitudeWGS84 numeric(12,7) null,
	PermitNumber varchar(max) null,
	PermitOriginalApprovedDate datetime null,
	PermitPostedDate datetime null,
	PermitType varchar(max) null,
	PowerType varchar(max) null,
	[Range] varchar(max) null,
	RatedHP float null,
	RatedWaterDepth float null,
	ReportedOperator varchar(max) null,
	RigID int null unique,
	RigLatitudeWGS84 numeric(11,7) null,
	RigLongitudeWGS84 numeric(12,7) null,
	RigNameNumber varchar(max) null,
	Section varchar(max) null,
	SpudDate datetime null,
	Survey varchar(max) null,
	TemporaryLocation varchar(max) null,
	Township varchar(max) null,
	TrueVerticalDepth float null,
	UpdatedDate datetime null,
	WellNumber varchar(max) null,
	WellType varchar(max) null,
	Mi4AddDtTm datetime NULL default GETDATE(),
	Mi4LastUpdateDtTm datetime null)
				
end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Rigs') AND name = N'IX_Rigs_UpdatedDate') CREATE NONCLUSTERED INDEX IX_Rigs_UpdatedDate ON DrillingInfo.dbo.Rigs (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Rigs') AND name = N'IX_Rigs_DIStateProvinceName') CREATE NONCLUSTERED INDEX IX_Rigs_DIStateProvinceName ON DrillingInfo.dbo.Rigs (DIStateProvinceName)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Rigs') AND name = N'IX_Rigs_DICountyParishName') CREATE NONCLUSTERED INDEX IX_Rigs_DICountyParishName ON DrillingInfo.dbo.Rigs (DICountyParishName)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Rigs') AND name = N'IX_Rigs_DeletedDate') CREATE NONCLUSTERED INDEX IX_Rigs_DeletedDate ON DrillingInfo.dbo.Rigs (DeletedDate)

end


