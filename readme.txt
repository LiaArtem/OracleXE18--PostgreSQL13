������� ��������:
������� � �����������:
1) ��������� � ���������� perl �� ���� windows �� (https://strawberryperl.com/)
2) ���������� ������ oracle �� ���� windows (https://www.oracle.com/database/technologies/instant-client/winx64-64-downloads.html)
   ������������� ��� runtime (���� ���� ������ �� ��� �� ������, ������� �� �����)
3) ��������� ����������� ����������� ora2pg � ���������� ��� � ��������� ����� �� windows �� (https://ora2pg.darold.net/)
    ����� c:\ora2pg (������������� ora2pg-21.1)
4) PostgreSQL �������������� ���������� �� ����� ���������� windows (https://www.enterprisedb.com/node/16#windows)
5) ����������� ���� install.cmd � c:\ora2pg � ���������
6) ����������� ���� ora2pg.conf � c:\ora2pg
7) ����������� ���� export.cmd � c:\ora2pg � ���������
8) ������������ ��������������� ����� *_output.sql

������:
1) ������� �������� ���� postgreSQL - 1_create_database_and_user.sql
2) ������� ��������� ������������ - 2_create_user.sql
3) ��������� *_output.sql ����� ���������� DBeaver ��� pgAdmin

OracleXE18->PostgreSQL13 ������� � ������� ����� �� ��������� ������ ora2pg
(table,insert,package,sequence,trigger,function,procedure,type)

OracleXE18->PostgreSQL13 migration and export of data using the ora2pg utility
(table,insert,package,sequence,trigger,function,procedure,type)