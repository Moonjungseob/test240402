alter session set "_oracle_script"=true;
create user oraclestudy
IDENTIFIED by oracle;

--create session ���� �ο� : �����ͺ��̽� ����
grant create session to oraclestudy;

--1. ORCLSTUDY ���� ���� ���  oracle
create user ORCLSTUDY  IDENTIFIED by oracle;

-- 2.  ORCLSTUDY ���� create session ���� �ο�
grant create session to ORCLSTUDY;

--3. ORCLSTUDY ���� ��� ���� orcl
alter user ORCLSTUDY IDENTIFIED by orcl;
--4. ORCLSTUDY ����
drop user ORCLSTUDY;

-------------------
grant create table to ORCLSTUDY;
-- ��
grant resource, connect  to ORCLSTUDY;


alter session set "_oracle_script"=true;
drop user oraclestudy CASCADE;
drop user orclstudy CASCADE;

-----
--1. test ���� ���� ���  test
--2. test ���� ���� �ο� resource, connect ,unlimited tablespace 

create user test IDENTIFIED by test;
grant  resource, connect, unlimited tablespace  to test;

--p416 ��������
-- 1. PREV_HW  �������� (���  oracle) ���� �����ϵ��� ����
create user PREV_HW IDENTIFIED by oracle;
grant  resource, connect, unlimited tablespace  to PREV_HW;








