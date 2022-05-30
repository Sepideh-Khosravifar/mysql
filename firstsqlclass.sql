use syntaxhrm_mysql;
select * from person;
select * from employee;
select * from hs_hr_employees;
select * from ohrm_user;
# Select statements -- can also be used for comments;
select * from employee;
select firstname, lastname,age, city from person;
select distinct firstname from person;
select distinct age from person;
select distinct firstname, lastname from person;
select distinct firstname, lastname, age from person;
select * from person where age=23;    # do not use '23' or "23"
select * from person where gender='f'; #use quotes with strings
select * from person where city='new york';
select * from person where age=23 or age=20;
select * from person where age = 23 and city='new york'; 
select * from hs_hr_employees where emp_firstname='kishan';
select * from hs_hr_employees where emp_firstname='Sisi';
select * from person where city is not null;
select * from person where city ='';
select * from person where city ='0';
select * from person where dob='1990-02-26';
select * from person where dob>'2000-00-00';
select * from person where not dob>'2000-00-00';
select * from person where age in (20,23,25,28);
select * from person where age not in (20,23,25,28);
select * from person where age>=20 and age<=28;      # use this method
select * from person where age between 20 and 28;    # not common!
select * from person where empid in (100, 120, 130);
select * from person where age in (20,23,25,28);
select * from person where city in ('New York','London', 'Sydney');
select * from person order by age;
select * from person order by age desc;
select * from person order by age desc, empid;
select * from person order by age, empid desc;
select * from person where age=23 order by empid;
select * from person where firstname like 'a%';     #start with a
select * from person where firstname like 'al%';    #start with a and l (in java Startswith())
select * from person where firstname like '%c'; 	#ends with a c (in java (endswith())
select * from person where firstname like '%a%';    #contains()
select * from person where firstname like '__r_';   #the third letter should be r e.g., mary or sara
select * from person where firstname like 's_r_';   #only sara will be shown in the table
use syntaxhrm_mysql;
select * from person where id='106';
SELECT * FROM PERSON where ID='106';
select * from employee;
select * from hs_hr_employees;
select * from ohrm_user;
 # Select statements -- can also be used for comments
select * FROM person;
select * from employee; #brings all the data fromhs_hr_emp_dependents the table employee
select firstname from person; # brings the data for firstname column only
select firstname,lastname from person;
select empid, salary from employee;
select firstNAME ,lastname ,age,city from person;
select distinct firstname from person;
select distinct city from person;
select distinct age from person;
select distinct firstname,lastname from person;
select distinct firstname, lastname,age from person;
select * from person where age=23; # for numbers always use without '' or ""
select * from person where age='23'; # on mysql it works but not recommanded you might alos get syntax error on other database

select * from person where age="23";
select * from person where gender='f'; # for String type data always ''
select * from person where gender='F';
select * from person where gender="F";
select * from person where gender='f';

#select * from person where gender=f;

select * from person where city='new york';
select * from person where age>23;
select * from person where age>=23;
select * from person where age!=23;
select * from person where age<>23; # same as != just a different syntax
select * from person where age=23 or age=20; # || in java is or in sql
select * from person where age=23 and city='new york';
select * from person where age>23 and gender='M';
select * from hs_hr_employees where emp_firstname='kishan';

#insert the data from the front end in syntax hrm application and
#fetch it from the backend using a query

select * from person where city=null;      # = does not work with the null values
select * from person where city is null;
select * from person where city is not null;
select * from person where city ='';
select * from person where city ='0';
select * from person where dob='1990-02-26';
select * from person where dob='1990-02-26';
select * from person where dob>'2000-00-00';
select * from person where not dob>'2000-00-00';
select * from person where not age=23;
select * from person where age=23 or age=20 or age=25 or age=28;
select * from person where age in (20,23,25,28);
select * from person where age not in (20,23,25,28);
select * from person where age>=20 and age<=28;        # widely used
select * from person where age between 20 and 28;      # not that common
select * from person where empid in (100,120,130);
select * from person where city in ('london','new york','sydney');
select * from person order by age;
select * from person order by age desc;
select * from person order by age, empid;
select * from person order by age desc, empid;
select * from person order by age, empid desc;
select * from person where age=23 order by empid;
 select * from person where firstname like 'a%';
 select * from person where firstname like 'al%';       #startsWith()
 select * from person where firstname like '%c';        #endsWith()
 select * from person where firstname like '%a%';       #contains()
select * from person where firstname like '__r_';
select * from person order by id;

























