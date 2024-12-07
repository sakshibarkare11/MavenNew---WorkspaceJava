select empno,ename,sal from emp; --1
select department_id, department_name from hr.departments;
select empno,ename from emp where empno=7499;

--<<<<<<<<<ASSIGNMENT PAGE ONE>>>>>>>>>
--QUESTION 1
select employee_id,first_name,last_name from employees;

--QUESTION 2
SELECT DEPARTMENT_ID,DEPARTMENT_NAME FROM HR.DEPARTMENTS;

--QUESTION 3
SELECT * FROM HR.EMPLOYEES WHERE EMPLOYEE_ID=101;

--QUESTION 4 >> FETCH THE RECORD OF DEPARTMENT WHOSE DEP NAME IS HUMAN RESOURCES
SELECT * FROM HR.DEPARTMENTS WHERE DEPARTMENT_NAME='Human Resources';

--QUESTION 5
select * from HR.EMPLOYEES;
select employee_id,first_name,salary+1000 from HR.EMPLOYEES where employee_id=103;

--QUESTION 6
SELECT * FROM HR.EMPLOYEES WHERE SALARY < 1000;

--QUESTION 7
SELECT * FROM HR.EMPLOYEES WHERE SALARY > 15000;

--QUESTION 8
SELECT * FROM HR.EMPLOYEES WHERE SALARY <= 6000;
SELECT * FROM HR.EMPLOYEES WHERE SALARY >= 6000;

--QUESTION 9
SELECT EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY FROM  HR.EMPLOYEES WHERE SALARY !=7000;

--QUESTION 10
SELECT * FROM HR.EMPLOYEES WHERE SALARY>6000 AND SALARY <15000;

--QUESTION 11
SELECT * FROM HR.EMPLOYEES WHERE SALARY BETWEEN 6000 AND 23000;


--QUESTION 12
SELECT * FROM HR.EMPLOYEES WHERE EMPLOYEE_ID BETWEEN 101 AND 109;


QUESTION 13
SELECT * FROM HR.EMPLOYEES WHERE EMPLOYEE_ID NOT BETWEEN 102 AND 110;

--QUESTION 14
SELECT * FROM HR. EMPLOYEES WHERE EMPLOYEE_ID IN (101,104,107,109,117) ;

---QUESTION 15
SELECT * FROM HR.EMPLOYEES WHERE FIRST_NAME LIKE 'S%';

--QUESTION 16
SELECT * FROM HR.EMPLOYEES WHERE LAST_NAME LIKE '_%s'; --'%s'

--QUESTION 17,18,19 AND 20
select 20+30 from dual;
select 20*30 as total from dual;
select 30-20 from dual;
select 20/30 from dual;
--<<<<<<<<<<<<<<PAGE ONE ENDED>>>>>>>>>>>>>>>>

--<<<<<<<<<<<<PAGE TWO STARTED>>>>>>>>>>>>>
--QUESTION 1
select * from hr.employees;

--QUESTION 2
select first_name|| ' ' || last_name from hr.employees;

--QUESTION 3
select first_name||' '||last_name "Name",job_id from hr.employees; 

--QUESTION 4
select DNAME from dept;

--QUESTION 5
select  ename from emp where job='MANAGER';

--QUESTION 6
select ename from emp where sal>=3000;

--QUESTION 7 (employees having a as a second letter in their name)
select ename from emp where ename like '_A%';
--Can also be printed by using >>>> _A%_

--QUESTION 8(show the information from the department table)
select * from dept;

--QUESTION 9
select empno,ename as Employee_Name,sal from emp;

--QUESTION 10==11 done
select * from HR.DEPARTMENTS;
select *  from emp;
select *  from dept;
select * from hr.employees;
select empno,deptno,ename,hiredate,job from emp where deptno=10;

--QUESTION 11 ==12
select * from hr.employees where salary > 2000;

--QUESTION 12==13
select deptno,ename from emp where DEPTNO in(10,20) and ename like 'A%S';

--QUESTION 13>>14
select * from hr.employees where hire_date = '21-DEC-1990';

--QUESTION 14
select employee_id,first_name || ' ' || last_name AS Name,job_id,salary*12 as Annual_sal from hr.employees where department_id=10;

--QUESTION 15
select * from hr.employees where salary*12 >25000 order by salary*12 desc;

--QUESTION 16
select ename from emp where ename like '%F%';

--QUESTION 17
select dname as "Department Names",loc as "Location" from dept;

--QUESTION 18
select * from dept;
select deptno,dname from dept order by dname desc;

--QUESTION 19
select* from hr.employees;
select employee_id,first_name || ' ' || last_name AS full_name,job_id as "Designation",salary from hr.employees where salary between 1000 and 2000;

--QUESTION 20
select first_name||' '||last_name "Name",job_id as "Job",department_id as "Dept No." from hr.employees where department_id=30 or department_id=40;

--QUESTION 21
Select DISTINCT MGR  as "MGR column" FROM emp;

--<<<<<<<<<<<<PAGE TWO ENDED>>>>>>>>>>>>>

--<<<<<<<<<<<<PAGE THREE STARTED>>>>>>>>>>>>>
select empno,ENAME,JOB from emp where job='CLERK' or Job='MANAGER' ;
--when we have to display the records of both queries then we use "OR" 

--QUESTION 24
select * from emp;
select ename,sal,sal*12 as annual_sal,comm as "Commision Earned" from emp where sal > comm;

select ename,JOB from emp where job in ('SALESMAN','MANAGER') and ename like '_%S';
--when I use or here it was displaying if any one from them is true but I wanted both true so
--"AND GIVES THE RESULT WHERE BOTH STATEMENTS ARE TRUE"

select ename,sal from emp where sal between 1000 and 2200;

select ename,sal,job from emp where job = 'CLERK';

select ename from emp where ename like 'B%' or ename like 'M%';

select empno || ',' || ename|| ',' ||JOB|| ',' ||HIREDATE|| ',' ||SAL|| ',' ||COMM|| ',' ||DEPTNO from emp;

select CONCAT(CONCAT(empno, ','), job) FROM emp; 

select ename ,job ,hiredate "Start Date" from emp where hiredate between '1-FEB-1981' and '31-MAY-1981';

select ename "Name", hiredate from emp where hiredate between '31-Dec-1981' and '1-Jan 1983';

select EMPLOYEE_ID,first_name||' '|| LAST_NAME "Ename" ,JOB_ID,MANAGER_ID from hr.employees where manager_id is null; 

select ENAME,SAL,COMM from emp where comm is not null order by sal,comm desc;

select ename from emp where ename like '__A%';

--QUESTION 35
select EMPNO,ENAME,(1000+sal*12+comm) as "Gross Salary" from emp where deptno=20 or deptno=30 order by empno asc ;

define did=100;

-- QUESTION 38
select ename from emp where hiredate between '31-dec-1989' and '31-dec-2000';

select * from emp convert(varchar getdate(),106)dd mon yyyy;
--<<<<<<<<<<<<PAGE THREE ENDED>>>>>>>>>>>>>

--<<<<<<<<<<<<PAGE  Practice Started >>>>>>>>>>>>>

/*There are four coding errors in the following statement. Can you identify them?
SELECT employee_id, last_name  sal x 12  ANNUAL SALARY  FROM  employees;*/

SELECT employee_id, last_name,salary*12 as annual_salary From employees;

-- QUESTION 2
Select last_name,Salary from employees where salary>12000;

-- QUESTION 3
/*Display last name and department no for employee no 176 */
Select last_name,department_id from employees where employee_id=176;

--Question 4
/*Display a last name and salary for employee whose salary is not in range of 5000 to 12000 */
Select last_name, Salary from employees where salary not between 5000 and 12000;

--Question 5
/*Create a report to display the last name, job ID, and start date for the employees 
with the last names of Matos and Taylor. 
Order the query in ascending order by start date.*/
select * from employees;
Select last_name,job_id,hire_date from employees
where last_name = 'Taylor' or last_name = 'Matos' 
order by hire_date asc;

--Question 6
--Display the record who were hired in 1994
select hire_date,last_name from employees;
Select last_name, hire_date from employees where hire_date between '31-DEC-1993' and '1-JAN-1995';

--Question 7
--Write a query to display last_name and job_title who donot have manager
select last_name,job_id from employees where manager_id is null;

--Question 8
/*Write a query to display last_name, salary and commission for employees
Sort the data in descending order of commission and salary 
use the column numeric position in the order by clause*/
select last_name , salary , commission_pct from employees where commission_pct is not null order by salary,commission_pct desc;

--Question 9
--NOT UNDERSTAND NOT DONE BY ME
select last_name , manager_id from employees;
select employee_id, last_name, salary, department_id
from employees
where manager_id= &manager
*order by last_name;
**order by salary;
***order by employee_id;

--Question 10
/*Display a last name of employee which the third letter of the name is "a"*/
Select last_name from employees where last_name like '__a%';

--Question 11
/*Display a last name of employee which the third letter of the name is "a" and "e"*/
Select last_name from employees where last_name like '%a' or last_name like '%e' ;
-- "OR" operator displays both required content at a time

--Question 12
/* Display the last_name , salary and job for the 
employees whose job is sales representative or stock clerk and 
whose salary is not equal to 2500 3500 or 7000*/
Select last_name , salary, job_id from employees where (job_id = 'SA_REP' or job_id= 'ST_CLERK') and salary not in (2500, 3500,7000);

--Question 13
/*Display the last name who contain first letter 'M' 'A' 'J' */
Select last_name from employees where last_name like 'J%' or last_name like 'A%' or last_name like 'M%';
Select * from employees;

--Question 14
--NOT DONE BY ME
select last_name, hire_date, sysdate as system_date, round(months_between(sysdate,hire_date),0) Months_worked from employees
order by 2;
Select last_name,hire_date from employees;

--Question 15 ---->>>  NOT DONE BY MYSELF

/*Create a query to display last name and salary of employee. 
Format the salary to be 15 character long left-padded with the $ symbol. 
Label the column SALARY.*/

select last_name, lpad(salary,15,'$') Salary from employees;

--Question 16 ----->>>>>  NOT DONE BY ME
/*Display the first eight characters of employees last name and indicates the amount of salary with asterisks
Each asterisks signifies 1000 dollars. Sort the data in desc order of salary and Label it
EMPLOYEES_AND_THEIR_SALARIES.*/
SELECT salary, rpad(last_name, 8)||' '|| rpad(' ', salary/1000+1, '*') EMPLOYEES_AND_THEIR_SALARIES FROM  employees ORDER BY salary DESC; 

--Question 17 
/*Create a report that produces the following for each employee:
<employee last name> earns <salary> monthly but wants <3 times salary>*/
Select last_name ||' earns '||salary|| ' monthly but wants ' || salary*3 as DREAM SALARY from employees;
/*SELECT  last_name || ' earns ' || TO_CHAR(salary, 'fm$99,999.00')|| ' monthly but wants ' || TO_CHAR(salary * 3, 'fm$99,999.00')|| '.' "Dream Salaries" FROM employees;*/

--Question 18

--<<<<<<<<<<<<PAGE Practice ENDED>>>>>>>>>>>>>




