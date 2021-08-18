SELECT * From DBA_USERS;
CREATE USER SIST4 IDENTIFIED BY java1234;
GRANT CONNECT,RESOURCE,DBA TO SIST4;

create table test(
    test varchar2(100)
);

select * from test;
commit;