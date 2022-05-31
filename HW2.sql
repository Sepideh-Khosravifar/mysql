use syntaxhrm_mysql;

# Display last name in uppercase, first name in lowercase.
SELECT 
    LOWER(emp_Firstname), UPPER(emp_LastName)
FROM
    hs_hr_employees;

# Verify how many employees don’t have any title assigned?
SELECT 
    job_title_code, COUNT(*) AS count
FROM
    hs_hr_employees
WHERE
    job_title_code IS NULL;                  

# Verify how many employees are married.
SELECT 
    emp_marital_status, COUNT(*) AS count
FROM
    hs_hr_employees
WHERE
    emp_marital_status IS NOT NULL
        AND emp_marital_status != ''
        AND emp_marital_status != '0';                                                     

# Display youngest employee in the company.
SELECT 
    MIN(age)
FROM
    person;																			     

# Verify how many Developers we have.
SELECT 
    job_title, COUNT(*) AS count
FROM
    ohrm_job_title
WHERE
    job_title = 'developer';						

# How many employees first name starts with A?
SELECT 
    emp_firstname, COUNT(*) AS count
FROM
    hs_hr_employees
WHERE
    emp_firstname LIKE 'A%';					

# Verify how many Database administrators, Application Developers, Production Manager
SELECT 
    job_title, COUNT(*) AS count
FROM
    ohrm_job_title
WHERE
    job_title IN ('database administrator' , 'application developer',
        'production manager');  

# List all employees who are Cloud Architects.
SELECT 
    job_title, COUNT(*) AS count
FROM
    ohrm_job_title
WHERE
    job_title = 'cloud architect';	

# How to retrieve information of the employee who earns the lowest salary?
SELECT 
    empId, MIN(salary), grade, department
FROM
    employee;    

# List all employees who are Self Employed/freelancers?
SELECT 
    *
FROM
    ohrm_job_title
WHERE
    job_title = 'self employed'
        OR job_title = 'freelancer';			

# Display emergency contact name and phone number of Vlad Tepes
SELECT 
    *
FROM
    hs_hr_employees
WHERE
    emp_firstname = 'Vlad'
        AND emp_lastname = 'Tepes';  		    

# How can you display the third highest salary?
SELECT 
    *
FROM
    employee
ORDER BY salary DESC
LIMIT 2 , 1;										

# Display employees number, first name and lastname and their employment status name. Sort results based on the last name.
SELECT 
    emp_number, emp_firstname, emp_lastname, emp_status
FROM
    hs_hr_employees
ORDER BY emp_lastname;

# Display employees number, first name and lastname and job title only for Developers and Application Developers.
SELECT 
    e.emp_number, e.emp_firstname, e.emp_lastname, t.job_title
FROM
    hs_hr_employees e,
    ohrm_job_title t
WHERE
    t.job_title IN ('Developer' , 'Application Developer')
        AND e.job_title_code = t.id;

# Display employees number, first name and nationality only for employees whose nationality starts with A.
SELECT 
    e.emp_number, e.emp_firstname, n.name
FROM
    hs_hr_employees e,
    ohrm_nationality n
WHERE
    e.nation_code = n.id
        AND n.name LIKE 'A%';
