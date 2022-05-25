create database ProductsLists
use ProductsLists
Create table Nootbooks (
ID  int primary key identity,
[Name] nvarchar(50) not null, 
Price int Default 200
)
create table Brands (
ID int primary key identity,
[Name] nvarchar(30), 
CHECK (Len([name])>3)
)

alter table Nootbooks add Brands_id int foreign key references Brands(ID)

insert into Brands ([Name]) values('Lenovo')
--insert into Brands ([Name]) values('Hp')
insert into Brands ([Name]) values('Asus')
insert into Brands ([Name]) values('Toshiba')
insert into Brands([Name]) values('Sony')
insert into Brands ([Name]) values('Acer')


insert into Nootbooks([Name],Price) values('Lenovo Legion',3000)
insert into Nootbooks([Name],Price) values('Lenovo Thinkpad',2000)
insert into Nootbooks ([Name],Price) values('Toshiba C40',4000)
insert into Nootbooks ([Name],Price) values('A180 sa',4000)
insert into Nootbooks([Name],Price) values('Toshiba C50',5000)
insert into Nootbooks ([Name],Price) values('Asus Zenbook',4400)
insert into Nootbooks ([Name],Price) values('Asus Vivobook',2332)
insert into Nootbooks ([Name],Price) values('Sony Z50',2348)
insert into Nootbooks ([Name],Price) values('Sony Z80',3333)
insert into Nootbooks ([Name],Price) values('Sony Z90',4413)
insert into Nootbooks ([Name],Price) values('Acer Predator',6660)
insert into Nootbooks ([Name]) values('Acer sa')
insert into Nootbooks ([Name],Price) values('Asus 12',400)

--Name, BrandName, Price neticesi qaytaran sorgu
select n.[Name],b.[Name] as Brandname,n.Price from Brands b inner join Nootbooks n on
b.ID=n.Brands_id
--BrandName-inde 'a' olan notebooklari geriye qaytaran sorgu
select n.[Name]  from Brands b inner join Nootbooks n on  n.Brands_id=b.ID where CHARINDEX('a',b.Name)>0
--Qiymeti 100-500 arasi olan ve ya qiymeti 1000-den boyuk olan productlari qaytaran sorgular
select n.[Name]  from Brands b inner join Nootbooks n on  n.Brands_id=b.ID where n.Price>100 and n.Price<500
select n.name from Brands b inner join Nootbooks n on n.Brands_id=b.ID where n.Price>1000
