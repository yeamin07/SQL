-- creating a table for employee
create table employee(
employee_id Int primary key,
first_name varchar(50),
last_name varchar(50),
department_id int,
-- adding a foreign key constraint
foreign key(department_id) references departments(department_id)
);

-- creating a table for departments
create table departments(
department_id int primary key,
department_name varchar(50)
);


-- Creating pk with ALTER(syntax)/adding a pk to an existing table
alter table your_table_name
add primary key(column_name);

-- creating fk with alter/adding an fk to an existing table
-- Creating the 'customers' table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50)
);

-- Creating the 'orders' table without the foreign key
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT, -- This will become the foreign key
    order_amount DECIMAL(10, 2)
);

alter table orders
add constraint fk_customer
foreign key(customer_id)
references customers(customer_id);


-- changing pk of an existing table(alter)
alter table table_name
drop primary key,
add primary key(new_column_name);


-- changing fk of an existing table(alter)
alter table your_table_name
drop foreign key your_fk_name,
add constraint new_fk_name
foreign key(new_column_name)
references referenced_table_name(referenced_column_name);










