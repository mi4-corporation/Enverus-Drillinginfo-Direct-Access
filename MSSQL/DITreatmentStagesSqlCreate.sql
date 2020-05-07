Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'TreatmentStages') 
begin

create table TreatmentStages (
	TreatmentStageRowID int primary key identity,
	TreatmentStageID int null unique,
	TreatmentJobID int null,
	UpdatedDate datetime null,
	DeletedDate datetime null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	CreatedDate datetime null,
	StageNumber float null,
	TreatmentTop float null,
	TreatmentBottom float null,
	TotalFluidGal float null,
	TotalProppantLbs float null,
	TotalAdditiveGal float null,
	TotalAdditiveLbs float null,
	AverageRate numeric(10,2) null,
	AveragePressure numeric(10,2) null,
	MinRate numeric(10,2) null,
	MinPressure numeric(10,2) null,
	MaxRate numeric(10,2) null,
	MaxPressure numeric(10,2) null,
	BreakdownPressure numeric(10,2) null,
	ShutinPressure numeric(10,2) null,
	TotalbasedWaterVolumeGal numeric(10,2) null,
	TotalbasednonWaterVolumeGal numeric(10,2) null,
	[Source] varchar(100) null,
	Remarks varchar(max) null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	NumberOfClusters float null,
	ShotsPerFt float null,
	TotalShots float null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentStages') AND name = N'IX_TreatmentStages_UpdatedDate') CREATE NONCLUSTERED INDEX IX_TreatmentStages_UpdatedDate ON DrillingInfo.dbo.TreatmentStages (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentStages') AND name = N'IX_TreatmentStages_StateProvince') CREATE NONCLUSTERED INDEX IX_TreatmentStages_StateProvince ON DrillingInfo.dbo.TreatmentStages (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentStages') AND name = N'IX_TreatmentStages_County') CREATE NONCLUSTERED INDEX IX_TreatmentStages_County ON DrillingInfo.dbo.TreatmentStages (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TreatmentStages') AND name = N'IX_TreatmentStages_DeletedDate') CREATE NONCLUSTERED INDEX IX_TreatmentStages_DeletedDate ON DrillingInfo.dbo.TreatmentStages (DeletedDate)

end