Use DrillingInfo 

if not exists (select * 
    from INFORMATION_SCHEMA.TABLES   
    where TABLE_SCHEMA = N'dbo' and TABLE_NAME = N'LandtracLeases') 
begin

create table LandtracLeases(
	Mi4LandtracLeaseID int primary key identity,
	expiration_date date null,
	id int null,
	county_parish varchar(500) null,
	acres float null,
	grantee_alias varchar(max) null,
	bonus float null,
	instrument_date date null,
	grantee_address varchar(max) null,
	state_province varchar(500) null,
	instrument_type varchar(max) null,
	effective_date datetime null,
	maximum_depth float null,
	county_state varchar(max) null,
	volume_page varchar(max) null,
	grantee_name varchar(max) null,
	record_number varchar(max) null,
	extension_term_month float null,
	blm_lease float null,
	grantor_address varchar(max) null,
	term_months float null,
	extension_bonus float null,
	royalty float null,
	record_date date null,
	minimum_depth float null,
	grantor_name varchar(max) null,
	[geometry] varchar(max) null,
	state_lease float null,
	extension float null,
	Mi4AddDtTm datetime default GETDATE(),
	Mi4LastUpdateDtTm datetime null)

end

begin

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].LandtracLeases') AND name = N'IX_LandtracLeases_StateProvince') CREATE NONCLUSTERED INDEX IX_LandtracLeases_StateProvince ON DrillingInfo.dbo.LandtracLeases (state_province)

IF NOT EXISTS (SELECT * FROM DrillingInfo.sys.indexes WHERE object_id = OBJECT_ID(N'DrillingInfo.[dbo].LandtracLeases') AND name = N'IX_LandtracLeases_CountyParish') CREATE NONCLUSTERED INDEX IX_LandtracLeases_CountyParish ON DrillingInfo.dbo.LandtracLeases (county_parish)

end