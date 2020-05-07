Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'Trajectories') 
begin

create table Trajectories(
	TrajectoryRowID int primary key identity,
	TrajectoryID int null unique,
	WellboreID int null,
	GovernmentID varchar(28) null,
	UpdatedDate datetime null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	CreatedDate datetime null,
	DeletedDate datetime null,
	StartDate date null,
	EndDate date null,
	Source varchar(2) null,
	MeasuredDepth numeric(10,2) null,
	NorthReference varchar(50) null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	[Geometry] varchar(max) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	ComputeMethod varchar(17) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Trajectories') AND name = N'IX_Trajectories_UpdatedDate') CREATE NONCLUSTERED INDEX IX_Trajectories_UpdatedDate ON DrillingInfo.dbo.Trajectories (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Trajectories') AND name = N'IX_Trajectories_StateProvince') CREATE NONCLUSTERED INDEX IX_Trajectories_StateProvince ON DrillingInfo.dbo.Trajectories (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Trajectories') AND name = N'IX_Trajectories_County') CREATE NONCLUSTERED INDEX IX_Trajectories_County ON DrillingInfo.dbo.Trajectories (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Trajectories') AND name = N'IX_Trajectories_DeletedDate') CREATE NONCLUSTERED INDEX IX_Trajectories_DeletedDate ON DrillingInfo.dbo.Trajectories (DeletedDate)

end