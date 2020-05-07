Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'Packers') 
begin

create table Packers (PackerRowID int primary key identity,
	PackerID int null unique,
	CasingTubingID int null,
	UpdatedDate datetime null,
	DeletedDate datetime null,
	CreatedDate datetime null,
	StateProvince varchar(5) null,
	County varchar(63) null,
	PackerDepth numeric(10,2) null,
	Region varchar(50) null,
	Country varchar(5) null,
	Field varchar(100) null,
	BasinName varchar(100) null,
	District varchar(128) null,
	PackerType varchar(500) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Packers') AND name = N'IX_Packers_UpdatedDate') CREATE NONCLUSTERED INDEX IX_Packers_UpdatedDate ON DrillingInfo.dbo.Packers (UpdatedDate)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Packers') AND name = N'IX_Packers_StateProvince') CREATE NONCLUSTERED INDEX IX_Packers_StateProvince ON DrillingInfo.dbo.Packers (StateProvince)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Packers') AND name = N'IX_Packers_County') CREATE NONCLUSTERED INDEX IX_Packers_County ON DrillingInfo.dbo.Packers (County)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].Packers') AND name = N'IX_Packers_DeletedDate') CREATE NONCLUSTERED INDEX IX_Packers_DeletedDate ON DrillingInfo.dbo.Packers (DeletedDate)

end