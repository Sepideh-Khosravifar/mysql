use syntaxhrm_mysql;
#single row functions
select upper(Firstname), lower(LastName) from person; 
#select * from person where length(firstname)>4;
select count(*) from person;
select * from person;
select max(age) from person;
select min(age) from person;
select sum(age) from person;
select avg(age) from person;
select substring(firstname,1,3),lastname from person;
select abs(-1) from dual;   # abs removes all negative signs and returns an absolute value (i.e., no positive nor negative)
select upper('asel') from dual;  #dual is a test table in sql
select * from person;
select city,max(age) from person group by city;
select avg(age), city from person where city='New York' group by city;
select city,count(*) from person group by city;
select city,count(*) as count from person where city is not null
and city !='' and city!='0' group by city; 
select city,count(*) as count from person where city is not null
and city !='' and city!='0' group by city having count(*)>1; 
select avg(age) from person;
select * from person where age>23.6818;
select * from person where age>(select avg(age) from person);
select * from hs_hr_employees where job_title_code in (29,10,31);
select * from ohrm_job_title where job_title in ('Developer','Freelancer');
select id from ohrm_job_title where job_title in ('Developer','Freelancer');
select * from employee;
select firstname,lastname,salary from employee,person where employee.empid=person.empId;
select firstname,lastname,department from employee,person where employee.empid=person.empId;

select person.firstname,person.lastname,employee.department from employee,person 
where employee.empid=person.empId;

select p.firstname,p.lastname,e.department from employee as e,person as p
where e.empid=p.empId;

select p.firstname,p.lastname,e.department from employee
as e inner join person as p on p.empId=e.empId;
 
select p.firstname,p.lastname,e.department from employee
as e left join person as p on p.empId=e.empId;

select p.firstname,p.lastname,e.department from person
 as p right join employee as e on p.empId=e.empId;
 
 #select p.firstname,m.firstname from management where m.firstname=
 
 select * from hr.employee as mng, hr.employees as emp
 
# select mngr.firstname from hr.employee and emp.firstname from hr.employee 
 where mng.firstname=emp.firstname;
 
select emp.first_name as employee_name, mang.first_name as manager_name from  hr.employees emp,  hr.employees mang 
where emp.MANAGER_ID = mang.EMPLOYEE_ID;
 
 
 
 
 
 
























