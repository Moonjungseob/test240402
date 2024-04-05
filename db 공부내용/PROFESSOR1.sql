CREATE TABLE PROFESSOR
        (PROFNO NUMBER(4),
         NAME VARCHAR2(10),
         USERID VARCHAR2(10),
         POSITION VARCHAR2(20),
         SAL NUMBER(10),
         HIREDATE DATE,
         COMM NUMBER(2),
         DEPTNO NUMBER(4));


INSERT INTO PROFESSOR VALUES
        (9901, '�赵��', 'capool', '����', 500,
        TO_DATE('24-06-1982','DD-MM-YYYY'), 20, 101);

INSERT INTO PROFESSOR VALUES
        (9902, '�����', 'sweat413', '������', 320,
        TO_DATE('12-04-1995','DD-MM-YYYY'), NULL, 201);

INSERT INTO PROFESSOR VALUES
        (9903, '������', 'Pascal', '������', 360,
        TO_DATE('17-03-1993','DD-MM-YYYY'), 15, 101);

INSERT INTO PROFESSOR VALUES
        (9904, '���Ͽ�', 'Blue77', '���Ӱ���', 240,
        TO_DATE('02-10-1998','DD-MM-YYYY'), NULL, 102);

INSERT INTO PROFESSOR VALUES
        (9905, '������', 'refresh', '����', 450,
        TO_DATE('08-01-1986','DD-MM-YYYY'), 25, 102);

INSERT INTO PROFESSOR VALUES
        (9906, '�̸���', 'Pocari', '�α���', 420,
        TO_DATE('13-09-1988','DD-MM-YYYY'), NULL, 101);

INSERT INTO PROFESSOR VALUES
        (9907, '������', 'totoro', '���Ӱ���', 210,
        TO_DATE('01-06-2001','DD-MM-YYYY'), NULL, 101);

INSERT INTO PROFESSOR VALUES
        (9908, '������', 'Bird13', '�α���', 400,
        TO_DATE('18-11-1990','DD-MM-YYYY'), 17, 202);
        
        commit;