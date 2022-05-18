SELECT * FROM EMP;

SELECT EMPNO,ENAME,JOB,SAL FROM EMP;

SELECT EMPNO,ENAME,DECODE(JOB,'MANAGER','Sr.Manager','CLERK','Sr.Clerk',JOB) AS JOB,SAL FROM EMP;

SELECT EMPNO,ENAME,DEPTNO FROM EMP;

SELECT EMPNO,ENAME,DEPTNO,DECODE(DEPTNO,10,'Director',20,'Manager',30,'Clerk','Unknow') FROM EMP;

SELECT EMPNO,ENAME,DEPTNO,SAL,SAL+DECODE(DEPTNO,10,5000,20,2500,30,1000,'Unknow') bONUS FROM EMP;

SELECT EMPNO,ENAME,JOB,
CASE 
    WHEN JOB='MANAGER' AND SAL>2500 THEN 'Sr.Manager'
    WHEN JOB='CLERK' THEN 'Sr.Clerk'
    WHEN JOB='ANALYST' THEN 'Sr. Analyst'
    ELSE
       JOB  END AS JOB,SAL FROM EMP;

---------------------------------------------------------

SELECT EMPNO,ENAME,JOB,SAL,COMM,SAL+NVL(COMM,0) AS TOTSAL FROM EMP;

SELECT EMPNO,ENAME,JOB,SAL,COMM,SAL+NVL(COMM,0) AS TOTSAL FROM EMP;

SELECT COMM,NVL2(COMM,4500,5000) FROM EMP;

SELECT COALESCE(NULL,NULL,NULL,500) FROM DUAL;

CREATE TABLE X2(RNO NUMBER, A NUMBER, B NUMBER, C NUMBER);

INSERT INTO X2 VALUES(1,500,NULL,NULL);
INSERT INTO X2 VALUES(2,NULL,799,NULL);
INSERT INTO X2 VALUES(3,500,NULL,800);
INSERT INTO X2 VALUES(4,NULL,600,NULL);
INSERT INTO X2 VALUES(5,NULL,NULL,600);
INSERT INTO X2 VALUES(6,NULL,200,NULL);

SELECT * FROM X2;


SELECT RNO,COALESCE(A,B,C) FROM X2;

-----------------------------------
SELECT USER FROM DUAL;

SELECT MAX(SAL) FROM EMP;

SELECT SUM(SAL) FROM EMP;

SELECT ENAME,INITCAP(ENAME),SYSDATE,USER,WEL_FUN FROM EMP;

SELECT TO_NUMBER('500') FROM DUAL;

SELECT ENAME,HARI_FUN(ENAME) FROM EMP;

SELECT WEL_FUN FROM DUAL;

SELECT HARI('HELLO HOW ARE YOU') FROM DUAL;

select ename,hari(ename) from emp;

select sum2(100,300) from dual;

select empno,ename,sal,comm, tot_sal(sal,comm) from emp;
