-- Generated by Ora2Pg, the Oracle database Schema converter, version 21.1
-- Copyright 2000-2020 Gilles DAROLD. All rights reserved.
-- DATASOURCE: dbi:Oracle:host=DESKTOP-KNCPJAN;sid=XE;port=1521

SET client_encoding TO 'UTF8';

CREATE SCHEMA IF NOT EXISTS test_user;
ALTER SCHEMA test_user OWNER TO test_user;

SET search_path = test_user,public;

CREATE TABLE audit_ddl (
	id numeric NOT NULL,
	arcdate timestamp NOT NULL,
	osuser varchar(255),
	current_user varchar(255),
	host varchar(255),
	terminal varchar(255),
	object_owner varchar(255),
	object_type varchar(255),
	object_name varchar(255),
	sysevent varchar(255)
) ;
COMMENT ON TABLE audit_ddl IS E'Аудит DDL операций над схемой';
CREATE INDEX audit_ddl_obj_name_ix ON audit_ddl (object_name);
ALTER TABLE audit_ddl ADD PRIMARY KEY (id);
