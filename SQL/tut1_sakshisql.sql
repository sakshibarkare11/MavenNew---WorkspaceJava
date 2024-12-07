select * from HR.DEPARTMENTS;

SELECT MANAGER_ID FROM DEPARTMENTS;

select 10 from departments;

select  department_id,department_name,manager_id,location_id from departments;

select department_name,manager_id,location_id from departments;

select  department_id,department_name as "dname",manager_id,location_id from departments;

select department_id || ' ' || department_name "dep id and name" from departments;

select department_id || ' is an id of ' || department_name || ' department' "dep id and name" from departments;

--steven king's salary is 24000; ASSIGNMENT

--18-02-2023

select department_id as id,department_name "name" from DEPARTMENTS;

--10 department name is administration

select department_id ||' department name is ' || department_name from departments;

--q'[] for giving quotations
select q'[Steven king's salary is : ]' || department_id from departments;

select  q'["]' || department_name || q'["]' || ' has ' || manager_id || ' manager ID ' as details from departments;

select department_id from departments;

select distinct manager_id from departments;

select distinct (manager_id) from DEPARTMENTS;

select manager_id ,distinct (department_id) from DEPARTMENTS;

DESCRIBE bonus;

select department_id+manager_id from departments;

select * from hr.departments where department_id = 50 ;

select * from hr.departments;

select location_id,manager_id,department_id from departments where department_id < 50 ;

select * from hr.departments where department_id between 10 and 90 ;

select * from hr.departments where department_id in (20,30,50,70,90) ;

select * from emp;

select empno,ename,sal from emp where ename = 'ALLEN';
-- character values are case sensative in SQL

select empno,deptno,ename,sal from emp where deptno in (30);

--Like Operator
select department_name from hr.departments where department_name like 'Sh%';
select department_name from hr.departments where department_name like 'G%';

select sal,empno,ename from emp where ename like 'A%N';
-- 'A%' start with a
--start with 's' and  end with 'a' >>> 'S%a'
--'S_%' start with s and end with any
select sal,empno,ename from emp where ename like 'A_%';

select sal,empno,ename,comm from emp where comm is null;

select sal,empno,ename,JOB from emp where sal>=800 or JOB like '%MAN%';

select sal,empno,ename,JOB from emp where sal>=800 and JOB not like '%MAN%';

select sal,empno,ename,JOB from emp where sal>=800 and JOB not in ('CLERK','MANAGER');

select * from hr.departments
where department_name like 'S%'
order by department_id desc;

select department_id,department_name "NAME" 
from hr.departments
where department_name like 'S%'
order by  2 desc;

select * 
from emp
where sal>=1000
order by  3 asc;

select ename,empno,sal,deptno 
from emp
where sal>=1000
order by  ename,sal desc; --wrong

select ename,empno,sal,deptno 
from emp
where sal>=1000
order by  empno desc,sal desc,ename asc;

select empno,sal,ename,JOB from emp where empno =7521 or JOB = 'CLERK';

select empno,sal,ename,JOB from emp where empno =&eno or JOB = '&JID';

select empno,sal,ename,JOB,&b from emp where empno =&a;

select empno,sal,ename,JOB,&columnname
from emp 
where empno in (&a,&b,&c)
order by &cname desc;

select empno,ename,sal ,&columnnamee
from emp
where &cond
order by &columname asc; --job..empno>=7521...empno

select department_name,&col
from hr.departments
where &col<50
order by &col;

select department_name,&col
from hr.departments
where &col<80
order by &col;
 
select * from HR.LOCATIONS;
select * from HR.JOB_HISTORY;

select employee_id,&col
from job_history;

define dep_id =100;

select * from hr.departments
where department_id=&dep_id;

undefine dep_id;
--we have to undefine variable
select * from HR.JOB_HISTORY;

set verify off;
select employee_id,&col
from HR.JOB_HISTORY;

select * from HR.EMPLOYEES
where first_name ='Steven';

select upper(first_name),last_name
from HR.EMPLOYEES;

select lower(first_name),last_name
from HR.EMPLOYEES;

select initcap(first_name),last_name
from HR.EMPLOYEES;
--first capital other small >> INITIAL LETTER CAPITAL
--DUAL >> TABLE = TEMPORARY PURPOSE ,IMAGINARY TABLE,LOOS LIKE TABLE

Select * from dual;
select lower ('sakSHI'),
upper('barkare'),
initcap('inFORMATION tEcHNOLOGY') 
FROM DUAL;

select upper(first_name ||' '|| last_name) as Name from HR.EMPLOYEES;


--22 feb 2023
select last_name,UPPER (CONCAT(SUBSTR(last_name 1,8),'_us'))
from employee

select * from hr.employee;

select trunc(45.9456,2),trunc(45.9456,0),trunc(45.4),trunc(45.5),
trunc(45.689,-1),trunc(43.689,-1)
from dual;

select round(45.788,2), ceil (45.788),ceil(45.12)
from dual;

--floor mod ceil trunc round

select employee_id as "Even number",last_name 
from HR.EMPLOYEES
where mod(employee_id,2) != 0;

--@@@@@@@@@@@@@@@@@
--22-2-23
 
select initcap(upper( first_name||' '||last_name) )as NAME
from hr.employees;

select concat('seed',' Infotech')as CONCAT,
substr('Seed Infotech',5,4)as "SUBSTR",
length('Seed Infotech ') as "LENGTH",
instr('Seed Infotech ','z')as "INSTR",
lpad(24000,10,'#') as "LPAD",
rpad(24000,10,'&') "RPAD"
from dual;

select length( concat(concat(first_name , ' ' ), last_name)) as Name,
job_id,substr(job_id,4,3),
lpad(first_name,12,'$') ,
rpad(first_name,12,'@') ,
replace('SeedInfotech','e','h'),
replace('Jack Jue','J','BL'),
length (' Seed Infotech ') ,
length(trim(' Seed Infotech '))
from hr.employees;

SELECT last_name,
UPPER(CONCAT(SUBSTR (LAST_NAME, 1, 8), '_us'))
FROM hr.employees
WHERE department_id = 60;

--working with dates
--22-02-2023

select hire_date from hr.employees;

select last_name,hire_date 
from hr.employees 
where hire_date > '01-FEB-2000';

select sysdate from dual;

select sysdate, sessiontimezone,current_timestamp,current_date from dual;

select round(months_between (sysdate,'21-JAN-23')),
add_months(sysdate,3),
next_day (sysdate, 'wednesday'),
last_day (sysdate),
round(sysdate,'month'),
round(sysdate,'year'),
round(sysdate,'day'),
trunc(sysdate,'month'),
trunc(sysdate,'year'),
trunc(sysdate,'day')
from dual;


select * from hr.employees;

update first_name set salary =9000,hire_date = sysdate where employee_id=102;

--6-3-23
create table category (category_id INT primary key, category_name)


CREATE TABLE  category (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    amount DECIMAL(10 , 2 )
);

INSERT INTO category(category_id, category_name, amount)
VALUES (1,'Children Bicycles',15000);

INSERT INTO category(category_id, category_name, amount)
VALUES  (2,'Comfort Bicycles',25000);

INSERT INTO category(category_id, category_name, amount)
VALUES   (3,'Cruisers Bicycles',13000);

INSERT INTO category(category_id, category_name, amount)
VALUES  (4,'Cyclocross Bicycles',10000);

    select * from category;
    
    CREATE TABLE category_staging (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL,
    amount DECIMAL(10 , 2 )
);

INSERT INTO  category_staging 
VALUES(1,'Children Bicycles',15000);


INSERT INTO category_staging 
VALUES (3,'Cruisers Bicycles',13000);


INSERT INTO category_staging 
VALUES (4,'Cyclocross Bicycles',20000);
   
INSERT INTO category_staging 
VALUES (5,'Electric Bikes',10000);
   
   INSERT INTO category_staging 
VALUES (6,'Mountain Bikes',10000);
    
   select * from category;
select * from category_staging;


MERGE into category t 
    USING category_staging s
ON (t.category_id = s.category_id)
WHEN MATCHED
    THEN UPDATE SET 
        t.category_name = s.category_name,
        t.amount = s.amount
     DELETE WHERE (s.category_name IS NOT NULL)
WHEN NOT MATCHED    
    THEN INSERT (category_id, category_name, amount)
         VALUES (s.category_id, s.category_name, s.amount);


--8-03-2023
select employee_id, , last_name, salary*12 AnnualSal, hire_date 
from hr.employees
where department_id=20;

select * from hr.departments;
desc department_id20;

--alter table statement to add a new column or modify coloumn

--copied and pasted
Create table student(
Sid number(4) constraint pk primary key,
Name varchar2(35) not null,
Fees number(5),
eid number(4) constraint efk references Teacher(eid) (on delete set null)/ (on delete cascade));

Create table Teacher
(
eid number(4) constraint pk primary key,
ename varchar2(35) not null,
salary number(5),
age number(4)  
);
--Student
--sid	name	fees	eid
--1	aa	1000	100
--2	bb	2000	100
--3	cc	3000	101

--Teacher 
--eid	ename	Salary	age
--100	A1	5000	30
--101	B1	10000	40
--102	C1	20000	50

--
-- select * from TEACHER;
 
 select employee_id ,last_name,salary,salary*12 AnnulSal,hire_date
 from hr.employees
 where department_id=20;
 
 --select department_id from hr.departments where department_id=20;
 
 create table dept20
 as ( select employee_id ,last_name,salary,salary*12 AnnulSal,hire_date
 from employees
 where department_id=20
 );

select * from dept20;
desc dept20;

--alter 

alter table dept20
add phoneNum number(9);

alter table dept20
add age number(4) not null ;  -- not alter;

alter table dept20
modify phoneNum varchar2(35) default '12344567';

alter table dept20
drop column ANNULSAL;

--9-3-2023
select * from user_objects;
select * from dba_objects;
select * from all_objects;
select * from dictionary;
desc dictionary;
select * from dictionary where table_name = 'user_objects';
select object_name ,object_type ,created,status order by;


--11-3-2023
al

