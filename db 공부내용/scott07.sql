alter session set "_oracle_script"=true;
--p394 14��  ��������
--1. DEPT_CONST ����
CREATE TABLE DEPT_CONST ( 
   DEPTNO NUMBER(2)    CONSTRAINT DEPTCONST_DEPTNO_PK PRIMARY KEY, 
   DNAME  VARCHAR2(14) CONSTRAINT DEPTCONST_DNAME_UNQ UNIQUE, 
   LOC    VARCHAR2(13) CONSTRAINT DEPTCONST_LOC_NN NOT NULL 
);

--2. EMP_CONST ����
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
--�����  / �����ͺ��̽� ��Ű��
--��) scott :   �����
-- scott�� ������ ���̺�, ��������, ������ �� �����ͺ��̽�����  scott �� ����
-- ��� ��ü�� ��Ű��

--p416 ��������
-- 1. PREV_HW  �������� (���  oracle) ���� �����ϵ��� ����

--2. scott �������� �����ؼ�   PREV_HW�� emp, dept, salgrade  ���̺���  select ���� �ο�
grant select on emp to PREV_HW;
grant select on dept to PREV_HW;
grant select on salgrade to PREV_HW;

--3.2���� �ο��� ���� ���
REVOKE SELECT on emp from PREV_HW;
 











