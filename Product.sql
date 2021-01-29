use WFA3DotNet

--1.Create Table Product
Create Table Product(
                 ProductId int not null primary key identity(1,1),
				 Description varchar(30) not null unique,
				 SetQty int not null
				 CHECK(SetQty=1 OR SetQty=5 Or SetQty=10)
				 DEFAULT 1,
				 Rate decimal(10,2)
				 CHECK (Rate >=51 AND Rate<=5000)
				 )
--2.Insert 20 records in the product table
insert into Product values('Zensar',1,630.4)
insert into Product values('TCS',10,100.2)
insert into Product values('Wipro',5,4000.2)
insert into Product values('Infosys',5,63.32)
insert into Product values('IBM',1,200.8)
insert into Product values('Capgemini',10,721.67)
insert into Product values('Virtusa',10,745.21)
insert into Product values('HCL',1,72.4)
insert into Product values('Cognizant',10,322.24)
insert into Product values('Mphasis',5,289.76)
insert into Product values('Tech Mahindra',1,367.8)
insert into Product values('Accenture',10,278.10)
insert into Product values('Deloitte',5,890.5)
insert into Product values('Oracle',1,675.24)
insert into Product values('Coforge',10,999.9)
insert into Product values('Persistent',5,1100.72)
insert into Product values('Hexaware',5,289.3)
insert into Product values('L&T',10,432.1)
insert into Product values('Cyient',1,3000.24)
insert into Product values('Mindtree',5,3040.24)
--3.Update all the rates with 10% hike
update Product Set Rate=Rate*1.1
from Product;
--4.Delete last record by providing the ProductId
Delete from Product
Where ProductId=20;
--5.Alter the table and add the column
Alter Table Product add MarginCode char(1)
check(MarginCode='A' OR MarginCode='B' OR MarginCode=NULL)
--6.Update few records to set MarginCode to A and some records MarginCode to B 
Update Product
Set MarginCode='A'
Where ProductId<8;
Update Product
Set MarginCode='B'
Where ProductId>15;
--7.Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1. 
Update Product 
set SetQty=10
where MarginCode='A' AND SetQty=1
Select * from Product;
 
