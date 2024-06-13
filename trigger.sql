-- trigger to copy one table data into another
delimiter //
create trigger anotherTrigger
after insert on another
for each row
begin
insert into another1(id1,name1,age1) values (new.id,new.name,new.age);
end;

-- trigger the value after update in a table
delimiter //
create trigger updateTrigger
before update on another
for each row
begin
insert into another1(id1,name1) values (new.id,new.name);
end;

-- trigger to delete table1 value and store it in table2
delimiter //
create trigger deleteTrigger
before delete on another
for each row
begin
insert into another1(id1,name1) values(old.id,old.name);
end;


create table addUserInfo(
name varchar(20),
username varchar(20),
operation varchar(10),
op_data date
);
create table bankdeposit(
id int,
name varchar(20),
balance int
);

-- printing the operation of table1 in table2(audit)
DELIMITER //
CREATE TRIGGER auditUser_before_insert
BEFORE INSERT ON bankdeposit
FOR EACH ROW
BEGIN
    INSERT INTO addUserInfo VALUES (NEW.name,user(),'Insert', NOW());
END;

CREATE TRIGGER auditUser_before_update
BEFORE UPDATE ON bankdeposit
FOR EACH ROW
BEGIN
    INSERT INTO addUserInfo  VALUES (NEW.name,user(), 'Update', NOW());
END;

CREATE TRIGGER auditUser_before_delete
BEFORE DELETE ON bankdeposit
FOR EACH ROW
BEGIN
    INSERT INTO addUserInfo VALUES (OLD.name,user(), 'Delete', NOW());
END;



create table phone1(
name varchar(10),
phone int,
price int
);
create table samephone(
name1 varchar(10),
price1 int
);

/* Check the condition in table1 and replace the value in table2
if the condition are satisfied */
DELIMITER //
CREATE TRIGGER phoneTrigger
AFTER INSERT ON phone1
FOR EACH ROW
BEGIN
    IF NEW.price >= 3000 THEN
        INSERT INTO samephone (name1, price1) VALUES (NEW.name, NEW.price);
    END IF;
END;





































