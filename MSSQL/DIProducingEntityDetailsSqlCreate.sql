Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'ProducingEntityDetails')
begin
	
create table ProducingEntityDetails (
	EntityDetailID int primary key identity,
	EntityId int null,
	PdenProdId int null,
	ApiNo varchar(100) null,
	ProdDate datetime null,
	CreatedDate datetime null,
	UpdatedDate datetime null,
	DeletedDate datetime null,
	AverageDailyGas numeric(10,2) null,
	AverageDailyWater numeric(10,2) null,
	AverageDailyOil numeric(10,2) null,
	Liq float null,
	Gas float null,
	Wtr float null,
	Wcnt float null,
	Days float null,
	ProdMonthNo float null,
	ApiList varchar(max) null,
	LiqAllocationMethod varchar(max) null,
	GasAllocationMethod varchar(max) null,
	WaterAllocationMethod varchar(max) null,
	WellCount varchar(100) null,
	Source varchar(max) null,
	SourceKey varchar(max) null,
	IsDeleted bit null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)
										

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ProducingEntityDetails') AND name = N'IX_ProducingEntityDetails_UpdatedDate') CREATE NONCLUSTERED INDEX IX_ProducingEntityDetails_UpdatedDate ON DrillingInfo.dbo.ProducingEntityDetails (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ProducingEntityDetails') AND name = N'IX_ProducingEntityDetails_DeletedDate') CREATE NONCLUSTERED INDEX IX_ProducingEntityDetails_DeletedDate ON DrillingInfo.dbo.ProducingEntityDetails (DeletedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ProducingEntityDetails') AND name = N'IX_ProducingEntityDetails_EntityIDProdDate')
BEGIN

CREATE NONCLUSTERED INDEX [IX_ProducingEntityDetails_EntityIDProdDate] 
ON [dbo].[ProducingEntityDetails]
(
	[EntityId] ASC,
	[ProdDate] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

END

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ProducingEntityDetails') AND name = N'IX_ProducingEntityDetails_PdenProdId1') CREATE NONCLUSTERED INDEX IX_ProducingEntityDetails_PdenProdId1 ON DrillingInfo.dbo.ProducingEntityDetails (PdenProdId)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].ProducingEntityDetails') AND name = N'IX_ProducingEntityDetails_ApiNo1') CREATE NONCLUSTERED INDEX IX_ProducingEntityDetails_ApiNo1 ON DrillingInfo.dbo.ProducingEntityDetails (ApiNo)



end