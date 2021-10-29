use assignment_8;
create table order_ord(
id int,
orderDate date,
ordernumber int,
customerid int,
totalamount int);

create table customer(
id int,
firstname varchar(50),
lastname varchar(50),
city varchar(50),
country varchar(50),
phone int(10));

create table order_itme(
id int,
orderid int,
productid int, 
unitprice int, 
quantity int
);

create table product(
id int,
productname varchar(50),
supplierid int,
unitprice int,
package varchar(20),
isdiscontinued int);

create table supplier(
id int, 
company_name varchar(50),
contact_name varchar(50),
city varchar(50),
country varchar(50),
phone int(10),
fax int);

INSERT INTO CUSTOMER(ID , FIRSTNAME , LASTNAME , CITY , COUNTRY , PHONE)
VALUES
('1' , 'John' , 'Smith' , 'Mumbai' , 'India' , '987654321'),
('2' , 'Franklin' , 'Wong' , 'Delhi' , 'India' , '975318642'),
('3' , 'Joyce' , 'English' , 'Paris' , 'France' , '123456789'),
('4' , 'Ramesh' , 'Narayan' , 'NewYork' , 'USA' , '543219876'),
('5' , 'James' , 'Bong' , 'Mumbai' , 'India' , '918273645'),
('6' , 'Jennifer' , 'Walice' , 'Paris' , 'France' , '192937465'),
('7' , 'Ahmed' , 'Jabbar' , 'Delhi' , 'India' , '998877665'),
('8' , 'Alicia' , 'Zelaya' , 'NewYork' , 'USA' , '554433221');

INSERT INTO order_ord(ID , ORDERDATE , ORDERNUMBER , CUSTOMERID , TOTALAMOUNT)
VALUES
('1' , '2020-12-03' , '1' , '3' , '3250'),
('2' , '2021-09-12' , '2' , '3' , '5550'),
('3' , '2020-11-15' , '3' , '1' , '7540'),
('4' , '2020-08-07' , '4' , '2' , '9990'),
('5' , '2021-01-09' , '5' , '7' , '7650');

INSERT INTO SUPPLIER(ID , COMPANY_NAME , CONTACT_NAME , CITY , COUNTRY , PHONE , FAX)
VALUES
('1' , 'Levis' , 'Ross Geller' , 'NewYork' , 'USA' , '598764321' , '12345'),
('2' , 'Adidas' , 'Fury Marton' , 'Delhi' , 'India' , '987987987' , '87654'),
('3' , 'Puma' , 'John Lincon' , 'Mumbai' , 'India' , '912345678' , '98765'),
('4' , 'Levis' , 'Perry Richards' , 'Paris' , 'France' , '112233445' , '23456');

INSERT INTO PRODUCT(ID , PRODUCTNAME , SUPPLIERID , UNITPRICE , PACKAGE , ISDISCONTINUED)
VALUES
('1' , 'Tshirt' , '1' , '900' , 'Carton' , '0'),
('2' , 'Jeans' , '1' , '1500' , 'Bags' , '0'),
('3' , 'Top' , '3' , '600' , 'Carton' , '0'),
('4' , 'Hoodie' , '2' , '1100' , 'Bags' , '0'),
('5' , 'Skirt' , '4' , '1200' , 'Bags' , '0'),
('6' , 'Shorts' , '3' , '700' , 'Carton' , '0'),
('7' , 'Flip-flops' , '2' , '800' , 'Bags' , '0');

INSERT INTO ORDER_ITME(ID , ORDERID , PRODUCTID , UNITPRICE , QUANTITY)
VALUES
('1' , '1' , '5' , '1200' , '5'),
('2' , '3' , '3' , '600' , '7'),
('3' , '2' , '5' , '1200' , '4'),
('4' , '5' , '4' , '1100' , '3'),
('5' , '4' , '7' , '800' , '8');

select * from order_ord inner join  customer on
order_ord.id = customer.id;

select product.productname, order_itme.quantity, order_itme.unitprice from order_itme 
inner join product on 
order_itme.id=product.id;

select customer.firstname, customer.lastname, order_ord.totalamount 
from order_ord inner join customer on 
order_ord.id = customer.id;

select customer.* from customer
left join order_ord on order_ord.id=customer.id
where order_ord.id is NULL;

select count(id) from order_ord
where product

