-- PostgreSQL schema for RVA crime reports data. Requires PostGIS for the
-- geometry column. Columns are distinguished by source by name casing;
-- UPPERCASE names match the exported data columns while lowercase column names
-- represent calculated or updated values.

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
DROP TABLE IF EXISTS "crime_reports";
CREATE TABLE "crime_reports" (
    "INCIDENT_NUMBER" varchar(100),
    "INCIDENT_TIME" time,
    "OFFENSE_NUMBER" int4 DEFAULT NULL,
    "OFFENSE_CODE" varchar(5) DEFAULT NULL,
    "OFFENSE_CODE_DESC" varchar(100) DEFAULT NULL,
    "OFFENSE_RESTRICTED_INDICATOR" varchar(1) DEFAULT NULL,
    "ATTEMPTED_CRIME_FLG_DESC" varchar(100) DEFAULT NULL,
    "INCIDENT_BUILDING_NUMBER" varchar(100) DEFAULT NULL,
    "INCIDENT_BUILDING_SUFFIX" varchar(100) DEFAULT NULL,
    "INCIDENT_STREET_DIRECTION" varchar(1) DEFAULT NULL,
    "INCIDENT_STREET_NAME" varchar(100) DEFAULT NULL,
    "INCIDENT_STREET_NOMENCLATURE" varchar(100) DEFAULT NULL,
    "INCIDENT_BLDG_EXTENDED_TYPE" varchar(100) DEFAULT NULL,
    "INCIDENT_BLDG_EXTENDED_NUMBER" varchar(100) DEFAULT NULL,
    "INCIDENT_CITY" varchar(100) DEFAULT NULL,
    "INCIDENT_STATE" varchar(2) DEFAULT NULL,
    "INCIDENT_ZIP_CODE" varchar(100) DEFAULT NULL,
    "CIVIC_ASSOCIATION" varchar(4) DEFAULT NULL,
    "CIVIC_NAME" varchar(100) DEFAULT NULL,
    "COUNCIL_DISTRICT" varchar(1) DEFAULT NULL,
    "NEIGHBORHOOD" varchar(100) DEFAULT NULL,
    "NEIGHBORHOOD_NAME" varchar(100) DEFAULT NULL,
    "POLICE_PRECINCT" varchar(1) DEFAULT NULL,
    "POLICE_SECTOR" varchar(3) DEFAULT NULL,
    "DISPATCH_ZONE" varchar(4) DEFAULT NULL,
    "SUSPECTED_USED_CODE_DESC" varchar(100) DEFAULT NULL,
    "LOCATION_CODE_DESC" varchar(100) DEFAULT NULL,
    "WEAPON_CODE_DESC" varchar(100) DEFAULT NULL,
    "ENTRY_CODE_DESC" varchar(100) DEFAULT NULL,
    "ACTIVITY_CODE_DESC" varchar(100) DEFAULT NULL,
    "SECURITY_CODE_DESC" varchar(100) DEFAULT NULL,
    "EXCEPT_CLEARANCE_CODE_DESC" varchar(100) DEFAULT NULL,
    "DISPOSITION_CODE_DESC" varchar(100) DEFAULT NULL,
    "ARRESTEE_SEQ_NO" int4 DEFAULT NULL,
    "ARRESTEE_BUSINESS_NAME" varchar(100) DEFAULT NULL,
    "ARRESTEE_FIRST_NAME" varchar(100) DEFAULT NULL,
    "ARRESTEE_MIDDLE_NAME" varchar(100) DEFAULT NULL,
    "ARRESTEE_LAST_NAME" varchar(100) DEFAULT NULL,
    "ARRESTEE_AGE_EXACT" int4 DEFAULT NULL,
    "ARRESTEE_AGE_LOW" int4 DEFAULT NULL,
    "ARRESTEE_AGE_HIGH" int4 DEFAULT NULL,
    "ARRESTEE_BODY_BUILD_CODE_DESC" varchar(100) DEFAULT NULL,
    "ARRESTEE_RACE_CODE_DESC" varchar(100) DEFAULT NULL,
    "ARRESTEE_OCCUPATION" varchar(100) DEFAULT NULL,
    "ARRESTEE_RESIDENCE_CODE" varchar(1) DEFAULT NULL,
    "ARRESTEE_HOME_BUILDING_NO" int4 DEFAULT NULL,
    "ARRESTEE_HOME_BUILDING_SUFFIX" varchar(100) DEFAULT NULL,
    "ARRESTEE_HOME_STREET_DIR" varchar(1) DEFAULT NULL,
    "ARRESTEE_HOME_STREET_NAME" varchar(100) DEFAULT NULL,
    "ARRESTEE_HOME_EXTENDED_TYPE" varchar(100) DEFAULT NULL,
    "ARRESTEE_HOME_EXTENDED_NO" varchar(100) DEFAULT NULL,
    "ARRESTEE_HOME_CITY" varchar(100) DEFAULT NULL,
    "ARRESTEE_HOME_STATE" varchar(2) DEFAULT NULL,
    "ARRESTEE_HOME_ZIP" varchar(100) DEFAULT NULL,
    "VEHICLE_ID" varchar(100) DEFAULT NULL,
    "VEHICLE_STATUS_CODE" varchar(100) DEFAULT NULL,
    "VEHICLE_STATUS_DESC" varchar(100) DEFAULT NULL,
    "VEHICLE_MAKE_DESC" varchar(100) DEFAULT NULL,
    "VEHICLE_MODEL_CODE" varchar(100) DEFAULT NULL,
    "VEHICLE_COLOR_DESC_1" varchar(100) DEFAULT NULL,
    "VEHICLE_COLOR_DESC_2" varchar(100) DEFAULT NULL,
    "VEHICLE_STOLEN_VALUE" varchar(100) DEFAULT NULL,
    "VEHICLE_RECOVERY_VALUE" varchar(100) DEFAULT NULL,
    "VEHICLE_RECOVERY_DATE" int4,
    "VEHICLE_RECOVERY_BUILDING_NO" varchar(100) DEFAULT NULL,
    "VEHICLE_RECOVERY_STREET_DIR" varchar(1) DEFAULT NULL,
    "VEHICLE_RECOVERY_STREET_NAME" varchar(100) DEFAULT NULL,
    "VEHICLE_RECOVERY_CITY" varchar(100) DEFAULT NULL,
    "VEHICLE_RECOVERY_STATE" varchar(2) DEFAULT NULL,
    "VEHICLE_RECOVERY_ZIP" varchar(100) DEFAULT NULL,
    "id" uuid primary key default uuid_generate_v4(),
    "timestamp" timestamp DEFAULT NULL,
    "geom" "geometry" DEFAULT NULL
);
