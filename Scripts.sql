/* 1 */ 
select * from DICT;
select count(*) from DICT; /*1821*/
desc DICT;

/* 2 */
desc ALL_TAB_COLUMNS;
desc USER_USERS;
desc ALL_CONSTRAINTS;
desc USER_TAB_PRIVS;

/* 3 */
select * from USER_USERS;

/* 4 */
desc ALL_TAB_COLUMNS;
select * from ALL_TAB_COLUMNS;
select COUNT(*) from ALL_TAB_COLUMNS;
desc USER_TAB_COLUMNS;
select * from USER_TAB_COLUMNS;
select count(*) from USER_TAB_COLUMNS;

/* 5 */
select * from USER_TABLES;
/* we use the catalogue all_tab_columns cause we are logged as system*/
select distinct TABLE_NAME,TABLESPACE_NAME,SAMPLE_SIZE from all_tab_columns where user_name='DBAHOPITAL' ;
/* 6 */ 
select DISTINCT TABLE_NAME from ALL_TAB_COLUMNS where OWNER='DBAHOPITAL';
select DISTINCT TABLE_NAME from ALL_TAB_COLUMNS where OWNER='SYS';
select count (DISTINCT TABLE_NAME) from ALL_TAB_COLUMNS where OWNER='SYS';

/* 7 */
select * from USER_TAB_COLUMNS where TABLE_NAME='PATIENT';
select * from USER_TAB_COLUMNS where TABLE_NAME='HOSPITALISATION';

/* 8 */
select * from ALL_CONSTRAINTS where TABLE_NAME='HOSPITALISATION' and CONSTRAINT_TYPE='R';

/* 9 */
select * from USER_CONSTRAINTS;

/* 10 */
select * from ALL_TAB_COLUMNS where TABLE_NAME='HOSPITALISATION';
select * from USER_CONSTRAINTS where TABLE_NAME='HOSPITALISATION';

/* 11 */
/* use all_tab_privs*/
select * from all_TAB_PRIVS where grantee ='ADMINHOPITAL';
select * from SESSION_PRIVS;

/* 12 */
/* you need to be logged as adminhopital*/
connect adminhopital/&password;
select * from user_role_privs;

/* 13 */
select * from USER_OBJECTS;
/*or using system*/
select * from all_objects where owner='ADMINHOPITAL';
/* 14 */
select DISTINCT OWNER from ALL_TAB_COLUMNS where TABLE_NAME='HOSPITALISATION';

/* 15 */
select BYTES/1024 as SIZE_TABLE_KO from USER_SEGMENTS where SEGMENT_NAME='HOSPITALISATION';

/* 16 */
select tablespace_name,block_size,contents from DBA_TableSpaces where tablespace_name like 'HOPITAL%';
select * from all_users where username='DBAHOPITAL' ;
select GRANTEE,OWNER,TABLE_NAME,PRIVILEGE,GRANTABLE from USER_TAB_PRIVS;
/* the effect of the attribut*/
select table_name,column_name from all_tab_columns where owner='DBAHOPITAL' order by table_name;
/*the effect of constraints*/
selec table_name,constraint_name,constraint_type from all_constraint where owner = 'DBAHOPITAL';
/* FIN */ 
