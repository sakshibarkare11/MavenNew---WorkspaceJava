create table job_grades(Gra number(2),lowest_sal number(7,2),
highest_sal number(7,2));


insert into job_grades
values(1,1000,2999);

insert into job_grades
values(2,3000,5999);

insert into job_grades
values(3,6000,9999);

insert into job_grades
values(4,10000,14999);

insert into job_grades
values(5,15000,24999);

insert into job_grades
values(6,25000,40000);

commit;