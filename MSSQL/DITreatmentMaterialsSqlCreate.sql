Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'TreatmentMaterials') 
begin

create table TreatmentMaterials (
	TreatmentMaterialRowID int primary key identity,
	TreatmentMaterialUsageID int null unique,
	TreatmentStageID int null,
	TreatmentJobID int null,
	UpdatedDate datetime null,
	DeletedDate datetime null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	CreatedDate datetime null,
	PercenthighAdditiveReported numeric(10,2) null,
	IngredientPercentHFJob numeric(10,2) null,
	IngredientPercentHFJobReported numeric(10,2) null,
	IngredientDensityPPG numeric(10,2) null,
	MaterialAmount numeric(15,2) null,
	[Source] varchar(500) null,
	TradeName varchar(500) null,
	Supplier varchar(500) null,
	MaterialType varchar(500) null,
	MaterialCategory varchar(10) null,
	MaterialName varchar(max) null,
	MaterialUOM varchar(50) null,
	SandQuality varchar(100) null,
	ProppantMeshSize varchar(500) null,
	ProppantSandClassification varchar(500) null,
	AcidConcentration varchar(50) null,
	Cementclass varchar(7) null,
	CASNumber varchar(50) null,
	CASNumberReported varchar(50) null,
	Remarks varchar(max) null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentMaterials') AND name = N'IX_TreatmentMaterials_UpdatedDate') CREATE NONCLUSTERED INDEX IX_TreatmentMaterials_UpdatedDate ON DrillingInfo.dbo.TreatmentMaterials (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentMaterials') AND name = N'IX_TreatmentMaterials_StateProvince') CREATE NONCLUSTERED INDEX IX_TreatmentMaterials_StateProvince ON DrillingInfo.dbo.TreatmentMaterials (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentMaterials') AND name = N'IX_TreatmentMaterials_County') CREATE NONCLUSTERED INDEX IX_TreatmentMaterials_County ON DrillingInfo.dbo.TreatmentMaterials (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentMaterials') AND name = N'IX_TreatmentMaterials_DeletedDate') CREATE NONCLUSTERED INDEX IX_TreatmentMaterials_DeletedDate ON DrillingInfo.dbo.TreatmentMaterials (DeletedDate)

end