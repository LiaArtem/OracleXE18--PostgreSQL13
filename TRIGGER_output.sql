-- Generated by Ora2Pg, the Oracle database Schema converter, version 21.1
-- Copyright 2000-2020 Gilles DAROLD. All rights reserved.
-- DATASOURCE: dbi:Oracle:host=DESKTOP-KNCPJAN;sid=XE;port=1521

SET client_encoding TO 'UTF8';

SET search_path = test_user,public;
DROP TRIGGER IF EXISTS trg_ddl_audit_before ON audit_ddl CASCADE;
CREATE OR REPLACE FUNCTION trigger_fct_trg_ddl_audit_before() RETURNS trigger AS $BODY$
declare
BEGIN
  BEGIN
  RAISE EXCEPTION '%', 'Запрещено модифицировать таблицу аудита AUDIT_DDL' USING ERRCODE = '45000';
  END;
IF TG_OP = 'DELETE' THEN
	RETURN OLD;
ELSE
	RETURN NEW;
END IF;

end
$BODY$
 LANGUAGE 'plpgsql';

CREATE TRIGGER trg_ddl_audit_before
	BEFORE UPDATE OR DELETE ON audit_ddl FOR EACH ROW
	EXECUTE PROCEDURE trigger_fct_trg_ddl_audit_before();

