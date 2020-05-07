if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'AdditiveSummaryHeaders') 
begin

create table AdditiveSummaryHeaders (
Mi4AdditiveSummaryHeaderID int primary key identity,
API10 varchar(25) null,
AdditiveSummaryHeaderId int null,
CompletionId int null,
CreatedDate datetime null,
DeletedDate datetime null,
FracProvider varchar(500) null,
FracType varchar(500) null,
JobEndDate datetime null,
JobStartDate datetime null,
NumberOfJobDay float null,
Operator varchar(500) null,
[Source] varchar(500) null,
SubSource varchar(500) null,
TVD float null,
TotalAdditiveLbs float null,
TotalBaseNonWaterVolumeGal float null,
TotalBaseWaterVolumeGal float null,
TotalProppantLbs float null,
UpdatedDate datetime null,
WellBoreId int null,
WellId int null,
Mi4AddDtTm datetime null DEFAULT GETDATE(),
Mi4LastUpdateDtTm datetime)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].AdditiveSummaryHeaders') AND name = N'IX_AdditiveSummaryHeaders_UpdatedDate') CREATE NONCLUSTERED INDEX IX_AdditiveSummaryHeaders_UpdatedDate ON DrillingInfo.dbo.AdditiveSummaryHeaders (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].AdditiveSummaryHeaders') AND name = N'IX_AdditiveSummaryHeaders_AdditiveSummaryHeaderId') CREATE UNIQUE NONCLUSTERED INDEX IX_AdditiveSummaryHeaders_AdditiveSummaryHeaderId ON DrillingInfo.dbo.AdditiveSummaryHeaders (AdditiveSummaryHeaderId)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].AdditiveSummaryHeaders') AND name = N'IX_AdditiveSummaryHeaders_DeletedDate') CREATE NONCLUSTERED INDEX IX_AdditiveSummaryHeaders_DeletedDate ON DrillingInfo.dbo.AdditiveSummaryHeaders (DeletedDate)

end