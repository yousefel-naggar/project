ALTER TaBLE Employees 
ADD CONSTRAINT c1
FOREIGN KEY (DepartmentId) REFERENCES Departments(DepartmentId);

ALTER TaBLE Employees 
ADD CONSTRAINT c2
CHECK(salary>0) ;

ALTER TaBLE Assignments 
ADD CONSTRAINT c4
FOREIGN KEY (EmployeeId) REFERENCES Employees(EmployeeId);

ALTER TaBLE Assignments 
ADD CONSTRAINT c5
FOREIGN KEY (ProjectId) REFERENCES projects(ProjectId);

ALTER TaBLE Orders 
ADD CONSTRAINT c6
FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId);

ALTER TaBLE OrderDetails 
ADD CONSTRAINT c7
FOREIGN KEY (OrderId) REFERENCES orders(OrderId);

ALTER TaBLE OrderDetails 
ADD CONSTRAINT c10
FOREIGN KEY (productId) REFERENCES Products(ProductId);



