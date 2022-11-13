--DECLARE citiz_usr varchar := 'postgres';
--DECLARE ident_usr varchar := 'IdentityUser';
--DECLARE ident_pwd varchar := '********';

-	CREATE EXTENSION postgres_fdw;

	CREATE SERVER identity_server
	FOREIGN DATA WRAPPER postgres_fdw
	OPTIONS (host '127.0.0.1', port '5432', dbname 'identity');
	
	CREATE USER MAPPING for postgres
	SERVER identity_server
	OPTIONS (user 'citizenshipuser', password 'usausa1');
	
	CREATE SCHEMA auth;
	IMPORT FOREIGN SCHEMA public from SERVER identity_server into auth;