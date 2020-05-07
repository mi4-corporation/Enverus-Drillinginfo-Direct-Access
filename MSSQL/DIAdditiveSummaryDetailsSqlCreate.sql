if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'AdditiveSummaryDetails') 
begin

create table AdditiveSummaryDetails (Mi4AdditiveSummaryDetailID int primary key identity,
AdditiveSummaryDetailId int null,
AdditiveSummaryHeaderId int null,
CASNumber varchar(50) null,
CASNumberReported varchar(50) null,
CreatedDate datetime null,
DeletedDate datetime null,
IngredientComments varchar(500) null,
IngredientDensityPpg float null,
IngredientIndexName nvarchar(max) null,
IngredientNameReported varchar(150) null,
IngredientPercentHFJob float null,
IngredientPercentHFJobReported float null,
MassDuplicationFlag bit null,
MaxIngredientMassLbs float null,
PercentHighAdditiveReported float null,
ProppantMeshSize varchar(500) null,
ProppantSandClassification varchar(20) null,
Purpose varchar(255) null,
PurposeReported varchar(255) null,
SandQuality varchar(100) null,
[Source] varchar(100) null,
SubSource varchar(100) null,
Supplier varchar(255) null,
SupplierCategory varchar(255) null,
SupplierReported varchar(255) null,
TradeName varchar(255) null,
TradeNameReported varchar(255) null,
UpdatedDate datetime null,
Mi4AddDtTm datetime null DEFAULT GETDATE(),
Mi4LastUpdateDtTm datetime)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].AdditiveSummaryDetails') AND name = N'IX_AdditiveSummaryDetails_UpdatedDate') CREATE NONCLUSTERED INDEX IX_AdditiveSummaryDetails_UpdatedDate ON DrillingInfo.dbo.AdditiveSummaryDetails (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].AdditiveSummaryDetails') AND name = N'IX_AdditiveSummaryDetails_AdditiveSummaryDetailId') CREATE UNIQUE NONCLUSTERED INDEX IX_AdditiveSummaryDetails_AdditiveSummaryDetailId ON DrillingInfo.dbo.AdditiveSummaryDetails (AdditiveSummaryDetailId)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].AdditiveSummaryDetails') AND name = N'IX_AdditiveSummaryDetails_DeletedDate') CREATE NONCLUSTERED INDEX IX_AdditiveSummaryDetails_DeletedDate ON DrillingInfo.dbo.AdditiveSummaryDetails (DeletedDate)

end