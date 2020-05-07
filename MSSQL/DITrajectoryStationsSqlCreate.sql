Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'TrajectoryStations') 
begin

create table TrajectoryStations (
	TrajectoryStationRowID int primary key identity,
	TrajectoryStationID int null unique,
	TrajectoryID int null,
	UpdatedDate datetime null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	CreatedDate datetime null,
	DeletedDate datetime null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	PointType varchar(1) null,
	Datum varchar(10) null,
	MD numeric(8,2) null,
	Azimuth numeric(5,2) null,
	Inclination numeric(5,2) null,
	TVD numeric(10,5) null,
	XOffset numeric(7,2) null,
	YOffset numeric(7,2) null,
	VerticalSection numeric(15,2) null,
	Latitude numeric(14,9) null,
	Longitude numeric(14,9) null,
	DoglegSeverity numeric(5,2) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TrajectoryStations') AND name = N'IX_TrajectoryStations_UpdatedDate') CREATE NONCLUSTERED INDEX IX_TrajectoryStations_UpdatedDate ON DrillingInfo.dbo.TrajectoryStations (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TrajectoryStations') AND name = N'IX_TrajectoryStations_StateProvince') CREATE NONCLUSTERED INDEX IX_TrajectoryStations_StateProvince ON DrillingInfo.dbo.TrajectoryStations (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TrajectoryStations') AND name = N'IX_TrajectoryStations_County') CREATE NONCLUSTERED INDEX IX_TrajectoryStations_County ON DrillingInfo.dbo.TrajectoryStations (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].TrajectoryStations') AND name = N'IX_TrajectoryStations_DeletedDate') CREATE NONCLUSTERED INDEX IX_TrajectoryStations_DeletedDate ON DrillingInfo.dbo.TrajectoryStations (DeletedDate)

end