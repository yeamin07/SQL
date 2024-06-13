CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10, 2)
);


select * from product
order by Price desc;

select distinct(price) from product
order by price desc
limit 1 offset 4 ;


select * from product
order by Price desc
limit 1 offset 4 ;
