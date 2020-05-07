Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'Completions') 
begin
	
create table Completions (
	CompletionRowID int primary key identity,
	[UID] int null unique,
	UIDParent int null,
	CompletionID int null,
	WellboreID int null,
	Governmentid varchar(50) null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	CompletionDate date null,
	CreatedDate datetime null,
	UpdatedDate datetime null,
	DeletedDate datetime null,
	CompletionEventID int null,
	PermitDate date null,
	CompletionEvent int null,
	CompletionSequence int null,
	CompletionNumber int null,
	TopDepth numeric(10,2) null,
	BaseDepth numeric(10,2) null,
	PermitNumber varchar(128) null,
	Source varchar(2) null,
	Formation varchar(100) null,
	Type varchar(50) null,
	Method varchar(50) null,
	Remark varchar(max) null,
	DepthUOM varchar(2) null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	Section varchar(10) null,
	Township varchar(10) null,
	TownshipDirection varchar(10) null,
	Range varchar(10) null,
	RangeDirection varchar(10) null,
	Abstract varchar(50) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Completions') AND name = N'IX_Completions_UpdatedDate') CREATE NONCLUSTERED INDEX IX_Completions_UpdatedDate ON DrillingInfo.dbo.Completions (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Completions') AND name = N'IX_Completions_StateProvince') CREATE NONCLUSTERED INDEX IX_Completions_StateProvince ON DrillingInfo.dbo.Completions (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Completions') AND name = N'IX_Completions_County') CREATE NONCLUSTERED INDEX IX_Completions_County ON DrillingInfo.dbo.Completions (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Completions') AND name = N'IX_Completions_DeletedDate') CREATE NONCLUSTERED INDEX IX_Completions_DeletedDate ON DrillingInfo.dbo.Completions (DeletedDate)

end