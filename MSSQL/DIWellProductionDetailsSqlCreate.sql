Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'WellProductionDetails') 
begin

create table WellProductionDetails(
	Mi4WellProductionDetailID int primary key identity,
	Api10 varchar(1000) null,
	Api14 varchar(1000) null,
	AvgGas float null,
	AvgOil float null,
	AvgWtr float null,
	CreatedDate datetime null,
	CumGas float null,
	CumOil float null,
	CumWtr float null,
	[Days] float null,
	DeletedDate datetime null,
	Gas float null,
	IsDeleted bit null,
	Liq float null,
	ProdDate datetime null,
	ProdMonthNo float null,
	UpdatedDate datetime null,
	Wtr float null,
	Mi4AddDtTm datetime NULL default GETDATE(),
	Mi4LastUpdateDtTm datetime null)
				
end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellProductionDetails') AND name = N'IX_WellProductionDetails_UpdatedDate') CREATE NONCLUSTERED INDEX IX_WellProductionDetails_UpdatedDate ON DrillingInfo.dbo.WellProductionDetails (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].WellProductionDetails') AND name = N'IX_WellProductionDetails_DeletedDate') CREATE NONCLUSTERED INDEX IX_WellProductionDetails_DeletedDate ON DrillingInfo.dbo.WellProductionDetails (DeletedDate)

end