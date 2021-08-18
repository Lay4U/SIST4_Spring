alter user scott
identified by tiger
account unlock;

select * from PRODUCT_COMPONENT_VERSION;

-- scott 생성
CREATE USER scott IDENTIFIED BY tiger
      DEFAULT TABLESPACE users
      TEMPORARY TABLESPACE temp;

GRANT connect, resource TO scott;

ALTER USER scott
     IDENTIFIED BY tiger
     ACCOUNT UNLOCK;