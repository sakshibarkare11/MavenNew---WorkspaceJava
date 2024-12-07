select * from employees;

select department name from departments;
--identifier=column name

Select employee_id,salary,salary*2,salary*2+100-50/(2*200),salary*2+100-50/2*200
from employees;

select last_name, salary,12*(salary+100) from employees;
select last_name||' is a ' || job_id "Employee" from employees;

--q'[]'
Select q'["]'|| department_name || q'["]'|| q'[ department's manager id : ]' || manager_id from departments;
--"Administration" department's manager id : 200

--30-11-2023
select employee_id,department_id from employees;
select distinct department_id from employees;
desc departments;

select * from employees where department_id=90;

select * from employees where first_name like '%a%';
--contains a anywhere
select * from employees where first_name like '%n';
--last is n
select * from employees where first_name like '_a_e%';

select * from employees where first_name like 'S%';
--first letter s

select first_name,last_name,manager_id from employees where manager_id is null;

select last_name,job_id from employees where job_id Not in ('IT_PROG','ST_CLERK','SA_REP');

--sent by maam on wp of 30 november
select employee_id  ,  department_id from employees; 
 
select  distinct department_id from employees; 
desc employees;
 
select * from employees where department_id=90;
 
select employee_id,first_name,salary,department_id from employees where department_id=90;
 
select * from employees where employee_id!=105;
 
select * from employees where first_name ='Steven';

select employee_id,first_name ,salary from employees where first_name ='Steven';
 
select employee_id,first_name ,salary,hire_date from employees where hire_date='17-jun-87';
 
select employee_id,first_name ,salary,hire_date from employees where hire_date='jun-17-87';
 
select * from employees where employee_id between 105 and 109;
 
select * from employees where employee_id in(100,105,300);
 
select * from employees where first_name like 'S%';
 
select * from employees where first_name like '%n';
 
select * from employees where first_name like '%a%';
 
select * from employees where first_name like '_a_e%';
 
select * from employees where salary>=10000 and job_id like '%MAN%';
   
select * from employees where salary>=10000 or job_id like '%MAN%';
 
select * from employees order by employee_id desc;
 
select * from employees order by first_name;
 
select employee_id eid ,first_name ,salary,salary*12 annsal from employees where eid=100;
 
select employee_id eid ,first_name ,salary,salary*12 annsal from employees order by eid desc;
 
  
select employee_id eid,salary ,first_name from employees order by 3  ;
 
select employee_id eid, first_name ,department_id,salary from employees order by department_id;
 
select employee_id eid, first_name ,department_id,salary from employees order by department_id ,salary  ;

--1-12-2023
select &col1,&col2 from &tbl where &cond order by &sort;
select employee_id ,first_name, salary from employees where salary>12000 order by salary;

Define employee_num=200
select employee_id,last_name, salary, department_id from employees where employee_id= &employee_num;
undefine employee_num;

set verify on

select employee_id, first_name, salary from employees where &col>12000 order by &col;

select instr('sakshi','h'), length(trim('   sakshi')), replace('Black','Bl','J') from dual;

--.........from maam.........
select * from departments
 where department_id=&a;
 
 select * from employees
 where &cond;
 
  select * from employees
 where job_id='IT_PROG';
 
 select * from employees
 where &cond
 order by &sort;
 
   select * from employees
 where job_id='IT_PROG'
 order by first_name;
 
 select employee_id,first_name,&a1,&a1
 from employees;
 
  select &col1,&col2,&col3 from employees
 where &cond
 order by &sort;
 
   select &col1,&col2,&col3 from &tbl
 where &cond
 order by &sort;
 
 select employee_id,first_name ,salary
 from employees
 where salary>12000
 order by salary ;
 
  select employee_id,first_name ,&col
 from employees
 where &col>12000
 order by &col ;
 
   select employee_id,first_name ,&&col
 from employees
 where &col>12000
 order by &col ;
 
 select employee_id,&col
 from employees;
 
 define empno=100;
 
 select * from employees
 where employee_id=&empno;
 
 undefine empno;
 
 set verify on
 
 select lower('SeedINFO')
 from dual;
 
 select lower( job_id),upper(first_name),initcap(job_id)
 from employees;
 
 select * from employees
 where lower(firsT_name) ='steven';
 
 select concat('Seed', 'Infotech'),substr('Infotech',3,4),length('Infotech'),
 instr('Infotech','e'),instr('Infotech','d'),lpad('Seed',10,'$'),
 rpad('Seed',6,'%'),length(trim('   Hello ')),
 replace('Black And Blue','Bl','J')
 from dual;
 
 select first_name,concat(first_name,last_name ),substr(first_name,2,3),
 length(first_name),instr(first_name,'a')
 from employees;
 --............
 
 --2-12-23
 select sysdate, current_date, sessiontimezone,current_timestamp from dual;
 
 select last_name, (SYSDATE-hire_date)/7 AS WEEKS from employees where department_id =90;
 
 select sysdate-2,sysdate+3,(sysdate- (to_date('25-Nov-23', 'dd-mon-rr'))),
 (sysdate- (to_date('2-dec-22', 'dd-mon-yy'))),
 (sysdate- (to_date('30-Nov-23', 'dd-mon-rr')))
 from dual;
 
 --conversion function to_date
 --rr date format is used to store before 20th century data and after 20 but for current/now we can also use yy
 
 
 
 --by maam
  select round(10.89),trunc(10.89) 
 from dual;
 
 select round(45.926,2),trunc(45.926,2) from dual;
 
 select round(45.926,0),trunc(45.926,0) from dual;
 
  select round(45.926,-1),trunc(45.926,-1) from dual;
  
   select ceil(2.23),floor( 2.23),mod(5,2) from dual;
      select sysdate,current_date,sessiontimezone,current_timestamp
   from dual;
   
   select sysdate-2 ,sysdate+3,
   (sysdate- (to_date('25-NOV-23','dd-MON-RR'))),
    (sysdate- (to_date('2-DEC-22','dd-MON-RR'))),
     (sysdate- (to_date('30-nov-23','dd-MON-RR')))
   from dual;
   
   select months_between(sysdate, (to_date('2-DEC-22','dd-MON-RR'))),
   add_months(sysdate,3),next_day(sysdate,'saturday'),
   next_day(sysdate,'sunday'),last_day(sysdate)
   from dual;
      
   select round(sysdate,'year'),trunc(sysdate,'year')
   from dual;
   
      select round(sysdate,'month'),trunc(sysdate,'month')
   from dual;
   
      select round(sysdate,'day'),trunc(sysdate,'day')
   from dual;
   
      select round(sysdate,'dd'),trunc(sysdate,'dd')
   from dual;
   
   select hire_date,to_char(hire_date,'fm yyyy,dd,mm') 
   from employees;
   
   select sysdate ,to_char(sysdate,'fm ddspth "date of" Month HH:MI:SS am')
   from dual;
   
   select salary , to_char(salary,'99,99,9.000')from employees;
         
   select to_char(23589.1235,'L9,99,99,9.000')from dual;
   
   select to_number('12,323.35',99999.99) from dual;
   
   select to_date('2023 2 DECEMBER','fm yyyy dd MONTH') from dual;
   
   
   select last_name,salary,commission_pct ,salary+commission_pct,
   salary+nvl(commission_pct,0)
   from employees;
 
 

 --4-12-23
 
 select coalesce(null,null,1,null,123) from dual;
 --null ka extended version coalesce
 --coalesce function take multiple values >> advantage of coalesce
 select last_name,salary,job_id
 case job_id 
 when 'IT_PROG' then 1.10*salary
 else salary end "NewSalary"
 from employees;
 
 select last_name,salary,job_id, 
 decode(job_id, 'IT_PROG',2*salary,
 salary)"New Salary" from employees;
 
 --05-12-23
 --select * from table1 natural join table2;
select * from employees;
 select * from jobs;

select * from employees natural join jobs;
 
select * from employees natural join departments;

select employee_id,first_name,department_name from employees natural join departments;

select employee_id, department_id,first_name,department_name
from employees natural join departments;

select employee_id, department_id,first_name,department_name
from employees natural join departments
where department_id in (100,30,60);

--natural =no repetedly common col; inner = repeatedly commom col
select employee_id,first_name, department_id,department_name,d.manager_id,e.manager_id
from employees e
join departments d
using (department_id);
--we we put manager id then created ambiguity thAT from whom employee or deparment manager id should taken
--used table alias when using clause create ambiguity, gives tablename shorter

select employee_id,first_name, department_id,department_name,d.manager_id,e.manager_id
from employees e
join departments d
using (department_id)
join locations
using(location_id);



select * from system.tables;

select e.job_id, j.job_title, count(e.job_id)
from employees e, jobs j
where e.job_id = j.job_id
group by e.job_id,j.job_title; 


select e.job_id, j.job_title, count(e.job_id)
from employees e inner join jobs j
on e.job_id = j.job_id
group by e.job_id,j.job_title; 


select * 
from employees 
where job_id = 'PR_REP';

delete from employees 
where employee_id = 204;

select * 
from all_tables
where table_name = upper('employees');

select upper('ddd') from dual;

select owner
from all_tables 
group by owner ;

where owner = 'SYS'
and table_name not like '%$';

select * 
from jobs ;

select e.*
from employees e, jobs j 
where e.job_id = j.job_id; 
