alter session set "_oracle_script"=true;
--p394 14장  연습문제
--1. DEPT_CONST 생성
CREATE TABLE DEPT_CONST ( 
   DEPTNO NUMBER(2)    CONSTRAINT DEPTCONST_DEPTNO_PK PRIMARY KEY, 
   DNAME  VARCHAR2(14) CONSTRAINT DEPTCONST_DNAME_UNQ UNIQUE, 
   LOC    VARCHAR2(13) CONSTRAINT DEPTCONST_LOC_NN NOT NULL 
);

--2. EMP_CONST 생성
CREATE TABLE EMP_CONST ( 
   EMPNO    NUMBER(4) CONSTRAINT EMPCONST_EMPNO_PK PRIMARY KEY, 
   ENAME    VARCHAR2(10) CONSTRAINT EMPCONST_ENAME_NN NOT NULL, 
   JOB      VARCHAR2(9), 
   TEL      VARCHAR2(20) CONSTRAINT EMPCONST_TEL_UNQ UNIQUE, 
   HIREDATE DATE, 
   SAL      NUMBER(7, 2) CONSTRAINT EMPCONST_SAL_CHK 
          CHECK (SAL BETWEEN 1000 AND 9999), 
   COMM     NUMBER(7, 2), 
   DEPTNO   NUMBER(2) CONSTRAINT EMPCONST_DEPTNO_FK 
   REFERENCES DEPT_CONST (DEPTNO) 
);
--3.
select TABLE_NAME,CONSTRAINT_NAME,CONSTRAINT_TYPE
from USER_CONSTRAINTS
where table_name in ('DEPT_CONST','EMP_CONST')
order by CONSTRAINT_NAME;
------------
--사용자  / 데이터베이스 스키마
--예) scott :   사용자
-- scott이 생성한 테이블, 제약조건, 시퀀스 등 데이터베이스에서  scott 이 만든
-- 모든 객체를 스키마

--p416 연습문제
-- 1. PREV_HW  계정생성 (비번  oracle) 접속 가능하도록 생성

--2. scott 계정으로 접속해서   PREV_HW에 emp, dept, salgrade  테이블의  select 권한 부여
grant select on emp to PREV_HW;
grant select on dept to PREV_HW;
grant select on salgrade to PREV_HW;

--3.2번에 부여한 권한 취소
REVOKE SELECT on emp from PREV_HW;
 











