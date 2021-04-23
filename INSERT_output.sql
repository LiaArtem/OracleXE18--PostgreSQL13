
SET search_path = test_user,public;
BEGIN;
SET search_path = test_user,public;

INSERT INTO audit_ddl (id,arcdate,osuser,"current_user",host,terminal,object_owner,object_type,object_name,sysevent) OVERRIDING SYSTEM VALUE  VALUES (21,'2021-04-21 20:22:22',E'DESKTOP-KNCPJAN\\Admin',E'TEST_USER',E'WORKGROUP\\DESKTOP-KNCPJAN',E'DESKTOP-KNCPJAN',E'TEST_USER',E'PACKAGE',E'MAIL_PKG',E'DROP');

ALTER SEQUENCE IF EXISTS audit_ddl_seq RESTART WITH 42;
COMMIT;

