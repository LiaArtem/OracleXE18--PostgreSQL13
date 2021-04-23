Порядок действий:
Экспорт и конвертация:
1) Загрузите и установите perl на свой windows из (https://strawberryperl.com/)
2) Установите клиент oracle на свой windows (https://www.oracle.com/database/technologies/instant-client/winx64-64-downloads.html)
   Устанавливать тип runtime (если база данных на той же машине, ставить не нужно)
3) Загрузите программное обеспечение ora2pg и распакуйте его в известное место на windows из (https://ora2pg.darold.net/)
    Папку c:\ora2pg (переименовать ora2pg-21.1)
4) PostgreSQL предварительно установлен на вашем компьютере windows (https://www.enterprisedb.com/node/16#windows)
5) Скопировать файл install.cmd в c:\ora2pg и запустить
6) Скопировать файл ora2pg.conf в c:\ora2pg
7) Скопировать файл export.cmd в c:\ora2pg и запустить
8) Сформируются преобразованные файлы *_output.sql

Импорт:
1) Создать тестовую базу postgreSQL - 1_create_database_and_user.sql
2) Создать тестового пользователя - 2_create_user.sql
3) Загрузить *_output.sql через приложение DBeaver или pgAdmin

OracleXE18->PostgreSQL13 міграція і експорт даних за допомогою утиліти ora2pg
(table,insert,package,sequence,trigger,function,procedure,type)

OracleXE18->PostgreSQL13 migration and export of data using the ora2pg utility
(table,insert,package,sequence,trigger,function,procedure,type)