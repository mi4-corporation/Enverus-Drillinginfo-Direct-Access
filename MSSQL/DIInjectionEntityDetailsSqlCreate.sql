Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'InjectionEntityDetails') 
begin

create table InjectionEntityDetails(
	Mi4InjectionEntityDetailID int primary key identity,
	ApiNo varchar(1000) null,
	AverageDailyGas float null,
	AverageDailyOther float null,
	AverageDailyWater float null,
	CasingPressure float null,
	CreatedDate datetime null,
	CumGas float null,
	CumOther float null,
	CumWater float null,
	[Days] float null,
	DeletedDate datetime null,
	EntityId int null,
	InjectedGasType varchar(max) null,
	InjectedGasVolume float null,
	InjectedOtherType varchar(max) null,
	InjectedOtherUnit varchar(max) null,
	InjectedOtherVolume float null,
	InjectedProductTypes varchar(max) null,
	InjectedWaterType varchar(max) null,
	InjectedWaterVolume float null,
	InjectionDate datetime null,
	InjectionMonthNo float null,
	InjectionPressure float null,
	UpdatedDate datetime null,
	Mi4AddDtTm datetime NULL default GETDATE(),
	Mi4LastUpdateDtTm datetime null)
				
end


begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].InjectionEntityDetails') AND name = N'IX_InjectionEntityDetails_UpdatedDate') CREATE NONCLUSTERED INDEX IX_InjectionEntityDetails_UpdatedDate ON DrillingInfo.dbo.InjectionEntityDetails (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].InjectionEntityDetails') AND name = N'IX_InjectionEntityDetails_DeletedDate') CREATE NONCLUSTERED INDEX IX_InjectionEntityDetails_DeletedDate ON DrillingInfo.dbo.InjectionEntityDetails (DeletedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].InjectionEntityDetails') AND name = N'IX_InjectionEntityDetails_EntityIDInjectionDate')
BEGIN

CREATE NONCLUSTERED INDEX [IX_InjectionEntityDetails_EntityIDInjectionDate] 
ON [dbo].[InjectionEntityDetails]
(
	[EntityId] ASC,
	[InjectionDate] ASC
)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

END

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].InjectionEntityDetails') AND name = N'IX_InjectionEntityDetails_ApiNo1') CREATE NONCLUSTERED INDEX IX_InjectionEntityDetails_ApiNo1 ON DrillingInfo.dbo.InjectionEntityDetails (ApiNo)

end

