use syntaxhrm_mysql;
Select * from person where age=23;
select * from person where city = 'new york' and age = 23 and gender='F';
select * from person order by empid asc;
select * from person order by empid desc, lastname;
select * from person where firstname='sara' or age=23 or empid=120;
select * from person where firstname='sara' or firstname='gul ' or firstname='alec';
select * from person where firstname in ('sara','gul', 'alec');
select * from person where age>=23 and age<=28;
select * from person where age>23 and age<28;
select * from person where age between 23 and 28;
select * from person where firstname like '%R%';
select * from person where firstname like '__R%';
select * from person where dob like '%02___';
select * from person where dob like '%02%'; # not a good approach
select * from person where city is null;
select distinct firstname,lastname,gender, city from person where city is null;
select * from person where city is not null;

# How to display first name, last name, dob of employees who are a Freelancer or developer.

select * from hs_hr_employees where job_title_code in (29,10,31);
select * from ohrm_job_title;
# Single row functions
select upper(firstname), lower(lastname) from person;
select * from person where length(firstname)>4;
# select initcap(firstname) from person where length(firstname)>4; # not availabe in mysql
select substring(firstname,1,3),lastname from person;

select count(*) from person;
select * from person;
select max(age) from person;
select min(age) from person;
select sum(age) from person;
select avg(age) from person;
select abs(age) from person;
select city,max(age) from person group by city;
select * from person;
select age,max(empid) from person group by age;
select  avg(age),city from person where city='new york' group by city;
select city,count(*) count from person group by city;

# groups all the cities, then calculates the no. of employees from those cities

select city,count(*) as count from person where city is not null
and city !='' and city!='0' group by city;

# write a query that returns only those cities from where more than 1 employees are working

select city,count(*) as count from person where city is not null
and city !='' and city!='0'  group by city having count>1;
select avg(age) from person;
select * from person where age>(select avg(age) from person);
select * from hs_hr_employees where job_title_code in (29,10,31);

# we want all the employees which are developers or freelancers

select * from hs_hr_employees where job_title_code in
(select id from ohrm_job_title where job_title in ('Developer','Freelancer'));
select id from ohrm_job_title where job_title in ('Developer','Freelancer');

select * from person;
select * from employee;

select firstname,lastname,salary from employee,person
where employee.empid=person.empId;
 
#fetch the first name last name and department of each employee

select firstname,lastname,department from employee,person
where employee.empid=person.empId;

# better approach works even tables have same column names

select person.firstname,person.lastname,employee.department from employee,person
where employee.empid=person.empId; 

# Best approach using where

select p.firstname,p.lastname,e.department 
from employee e,person p
where e.empid=p.empId;

# inner join 

select p.firstname,p.lastname, e.department from employee 
as e inner join person as p on p.empId=e.empId;

select p.firstname,p.lastname, e.department from employee 
as e  join person as p on p.empId=e.empId;

select p.firstname,p.lastname, e.department from 
employee as e left join person as p on p.empId=e.empId;

select p.firstname,p.lastname, e.department from 
person as p left join  employee as e on p.empId=e.empId;

select p.firstname,p.lastname, e.department from 
person as p right join  employee as e on p.empId=e.empId;

select * from person as p,person m;
select p.firstname emp_name, m.firstname manager_name
from person as p, person as m where p.managerid=m.id;
 
select firstname,lastname,age from person
union all
select firstname,lastname,age from person2;
 
select firstname,lastname,age from person
union 
select firstname,lastname,age from person2;
 