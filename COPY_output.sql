
SET search_path = test_user,public;
BEGIN;
SET search_path = test_user,public;


COPY audit_ddl (id,arcdate,osuser,"current_user",host,terminal,object_owner,object_type,object_name,sysevent) FROM STDIN;
21	2021-04-21 20:22:22	DESKTOP-KNCPJAN\\Admin	TEST_USER	WORKGROUP\\DESKTOP-KNCPJAN	DESKTOP-KNCPJAN	TEST_USER	PACKAGE	MAIL_PKG	DROP
\.

ALTER SEQUENCE IF EXISTS audit_ddl_seq RESTART WITH 42;
COMMIT;

