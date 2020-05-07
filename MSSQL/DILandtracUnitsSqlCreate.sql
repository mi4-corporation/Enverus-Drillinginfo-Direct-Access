Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'LandtracUnits') 
begin

create table LandtracUnits(
	Mi4LandtracUnitID int primary key identity,
	county_parish varchar(500) null,
	acres float null,
	current_operator varchar(max) null,
	unit_name varchar(max) null,
	state_province varchar(500) null,
	abstract varchar(max) null,
	api_10 varchar(500) null,
	well_status varchar(500) null,
	county_state varchar(max) null,
	id int null,
	instrument varchar(max) null,
	[geometry] varchar(max) null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].LandtracUnits') AND name = N'IX_LandtracUnits_StateProvince') CREATE NONCLUSTERED INDEX IX_LandtracUnits_StateProvince ON DrillingInfo.dbo.LandtracUnits (state_province)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].LandtracUnits') AND name = N'IX_LandtracUnits_CountyParish') CREATE NONCLUSTERED INDEX IX_LandtracUnits_CountyParish ON DrillingInfo.dbo.LandtracUnits (county_parish)

end