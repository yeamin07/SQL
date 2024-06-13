-- syntax to drop a procedure
DROP PROCEDURE IF EXISTS procedure_name;


delimiter //
create procedure `value`()
begin
select * from Product
order by price desc
limit 5 offset 2;
end;

call value;


-- stored procedure with one parameter
delimiter //
create procedure `parameter`(IN p_Price DECIMAL(10, 2))
begin
select * from product 
where Price=p_Price;
end;

call `parameter`(400);


-- stored procedure with multiple parameters
delimiter //
create procedure `parameter2`(IN p_Price decimal(10,2),
IN p_ProductName varchar(50)
)
begin
select * from product where ProductName=p_ProductName and Price=p_Price;
end;

call `parameter2`(400,'Tablet');























