update pg_database set datallowconn = TRUE where datname = 'template0';
update pg_database set datistemplate = FALSE where datname = 'template1';
drop database template1;
create database template1 with encoding = 'UTF-8' lc_collate = 'en_US.UTF8' lc_ctype = 'en_US.UTF8' template = template0;
update pg_database set datistemplate = TRUE where datname = 'template1';
update pg_database set datallowconn = FALSE where datname = 'template0';
/q
