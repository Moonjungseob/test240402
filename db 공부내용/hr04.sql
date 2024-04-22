--1. Professor ���̺��  department ���̺��� �����Ͽ� ������ȣ��
--�����̸�, �Ҽ��а��̸��� ��ȸ�ϴ�  view ���� (v_prof_dept2)
select * from Professor;
select * from department;

create or replace view v_prof_dept2
as
select p.profno  ������ȣ,  p.name �����̸�,  d.dname  �Ҽ��а��̸�
from professor p, department d
where p.deptno = d.deptno;

select * from v_prof_dept2;


create or replace view v_prof_dept3
as
select p.profno  ������ȣ,  p.name �����̸�,  d.dname  �Ҽ��а��̸�
from professor p, department d
where p.deptno = d.deptno
with read only;  --  �б� ����

--2. student , department ����Ͽ� 
--�а����� �л����� �ִ�Ű�� �ִ� ������, �а� �̸��� ���
--(DNAME      MAX_HEIGHT    MAX_WEIGHT)
select * from student;

select deptno1, max(height), max(weight)
from student
group by deptno1;
--�ζ��κ�
select d.dname, s.deptno1,s.MAX_HEIGHT, s.MAX_WEIGHT
from (select deptno1, max(height) MAX_HEIGHT, max(weight) MAX_WEIGHT
       from student
       group by deptno1) s,department d
where s.deptno1= d.deptno;
---
select d.dname, s.deptno1,s.height, s.weight
from student s, department d
where s.deptno1= d.deptno
and (s.deptno1, s.height, s.weight) in (select deptno1, max(height), max(weight)
                                        from student
                                        group by deptno1);

--3.�а��̸�, �а��� �ִ�Ű, �а����� ���� Ű�� ū �л����� �̸��� Ű��
--�ζ��� �並 �̿��Ͽ� ���
--DNAME     MAX_HEIGHT   NAME     HEIGHT 
select d.dname, a.MAX_HEIGHT, s.name, s.height
from (select deptno1, max(height) MAX_HEIGHT
       from student
       group by deptno1) a,student s,department d
where a.deptno1= s.deptno1 and s.deptno1 = d.deptno 
      and a.max_height = s.height;

-- join ~ on
select d.dname, a.MAX_HEIGHT, s.name, s.height
from (select deptno1, max(height) MAX_HEIGHT
       from student
       group by deptno1) a join student s 
                           on a.deptno1 = s.deptno1
                           join department d
                           on s.deptno1 = d.deptno
where a.max_height = s.height;
--4. student �л��� Ű�� ���� �г��� ��� Ű���� ū �л��� �г�� �̸���
--Ű, �ش� �г��� ���Ű ��� (�ζ��κ� �̿�, �г����� ��������)
select grade, avg(height)
from student
group by grade;
--
select stu.grade, stu.name, stu.height, s.avg_height
from (select grade, avg(height) avg_height
        from student
        group by grade) s, student stu
where s.grade = stu.grade and   stu.height > s.avg_height
order by stu.grade;




