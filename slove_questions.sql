-- Question 1: Employee Details with Function Manipulation
select
	upper(E.FirstName) as Fname ,
    lower(E.Lastname) as Lname,
    length(position) as lenOfPosition,
    D.Departmentname
from employees as E
inner join departments as D;



-- Question 2: Department Budget Summary
select
	DepartmentName,
    sum(E.salary),
    count(E.EmployeeId)
from Departments as D
join employees as E
using (DepartmentId)
group by E.DepartmentId;



-- Question 3: Project Assignments
select 
	upper(P.projectName) as 'project Name',
    concat(E.FirstNAme,' ',E.LastName) as 'Full Name',
    A.role
from projects as P
join assignments as A
using(Projectid)
join employees as E
using (EmployeeId);




-- Question 4: Customer Order Analysis
select
	lower(C.customerName) as Name,
    count(O.CustomerId) as 'number of orders',
    sum(O.Totalamount) as 'Totalamount'
from Customers as C
join orders as O
using (customerId)
group by C.CustomerId;




-- Question 5: Product Details Extraction
select
	P.ProductId,
	substr(P.ProductName , 1),
    left(P.Category,2),
    sum(O.Quantity)
from products as P
join orderdetails as O
using (ProductId)
group by P.ProductId , P.ProductName , P.Category;




-- Question 6: High Salary Employees in Specific Departments
select 
	concat(E.FirstNAme,' ',E.LastName) as 'Full Name',
    E.salary,
    D.DepartmentName
from employees as E
join departments as D
using(DepartmentId)
where E.salary > (
    SELECT AVG(e1.salary)
    FROM employees e1
    WHERE e1.DepartmentId = E.DepartmentId
);
