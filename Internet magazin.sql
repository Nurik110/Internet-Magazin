create database Nurik_192;
USE Nurik_192;--drop table KazakhBest
create table KazakhBest(
	id_product int primary key identity(1,1),
	name nvarchar(50),
	--salary bigint
	--maximum int,
	--counts int
)
select * from History
select * from KazakhBest

insert into KazakhBest values('Samsung Galaxy S20 Plus' ); --, 447900
insert into KazakhBest values('Skyworth BD-400' ); --, 169990
insert into KazakhBest values('Nokia 230 DS' ); --, 28400
insert into KazakhBest values('Apple iPad Pro A2229' ); --, 894900
insert into KazakhBest values('Apple Watch Series 6'); --, 249900
insert into KazakhBest values('SHARP SJXE55PMBE'); --, 499990
insert into KazakhBest values('DELL XPS 15'); --, 1790900
insert into KazakhBest values('Lenovo Yoga Slim 9'); --, 969900
insert into KazakhBest values('Gefest ЭПНД 6140-02 0001'); --, 167990
insert into KazakhBest values('HP EliteDesk 800 G5 TWR'); --, 399900



create table Kazakhstan(
	id_product int primary key identity(1,1),
	KazakhBest_id integer not null, 
	foreign key (KazakhBest_id) references KazakhBest(id_product),
	counts int,
	salary bigint
)
insert into Kazakhstan values(1, 50, 447900);
insert into Kazakhstan values(2, 20, 169990);
insert into Kazakhstan values(3, 30, 28400);
insert into Kazakhstan values(4, 50, 894900);
insert into Kazakhstan values(5, 50, 249900);

select KazakhBest.name, Kazakhstan.counts, Kazakhstan.salary
from Kazakhstan
join KazakhBest on KazakhBest.id_product = Kazakhstan.KazakhBest_id



--SELECT TOP 1 id_product, cod_product FROM Samsung_Galaxy_S20_Plus
--ORDER BY NEWID()

create table Samsung_Galaxy_S20_Plus(	
	id_product int primary key identity(1,1),
	cod_product int,
	KazakhBest_id integer not null, 
	foreign key (KazakhBest_id) references KazakhBest(id_product)
)
declare @cod_random_id1 int, @cod_count_id1 int
set @cod_count_id1 = 50;
set @cod_random_id1 = 12304;
while @cod_count_id1 > 0
	begin 
		insert into Samsung_Galaxy_S20_Plus values(@cod_random_id1, 1)
		set @cod_count_id1 = @cod_count_id1 - 1
		set @cod_random_id1 = FLOOR(RAND()*(1000000-5)+5);
	end;
select Samsung_Galaxy_S20_Plus.id_product, Samsung_Galaxy_S20_Plus.cod_product, KazakhBest.name
from Samsung_Galaxy_S20_Plus
join KazakhBest on KazakhBest.id_product = Samsung_Galaxy_S20_Plus.KazakhBest_id

--DELETE FROM Samsung_Galaxy_S20_Plus
--WHERE id_product = 1  
--(SELECT TOP 1 * FROM Samsung_Galaxy_S20_Plus)

--create trigger KazakhBest_Samsung_Galaxy_S20_Plus
--on Samsung_Galaxy_S20_Plus
--after delete
--as
--insert into History(id_product, operation)
--select id_product, 'Куплен товар ' + cod_product
--from deleted


create table Skyworth_BD_400(	
	id_product int primary key identity(1,1),
	cod_product int
)
declare @cod_random_id2 int, @cod_count_id2 int
set @cod_count_id2 = 20;
set @cod_random_id2 = 13134;
while @cod_count_id2 > 0
	begin 
		insert into Skyworth_BD_400 values(@cod_random_id2)
		set @cod_count_id2 = @cod_count_id2 - 1
		set @cod_random_id2 = FLOOR(RAND()*(1000000-5)+5);
	end;
select * from Skyworth_BD_400

create table Nokia_230_DS(	
	id_product int primary key identity(1,1),
	cod_product int
)
declare @cod_random_id3 int, @cod_count_id3 int
set @cod_count_id3 = 30;
set @cod_random_id3 = 13233;
while @cod_count_id3 > 0
	begin 
		insert into Nokia_230_DS values(@cod_random_id3)
		set @cod_count_id3 = @cod_count_id3 - 1
		set @cod_random_id3 = FLOOR(RAND()*(1000000-5)+5);
	end;
select * from Nokia_230_DS

create table Apple_iPad_Pro_A2229(	
	id_product int primary key identity(1,1),
	cod_product int
)
declare @cod_random_id4 int, @cod_count_id4 int
set @cod_count_id4 = 50;
set @cod_random_id4 = 123004;
while @cod_count_id4 > 0
	begin 
		insert into Apple_iPad_Pro_A2229 values(@cod_random_id4)
		set @cod_count_id4 = @cod_count_id4 - 1
		set @cod_random_id4 = FLOOR(RAND()*(1000000-5)+5);
	end;
select * from Apple_iPad_Pro_A2229

create table Apple_Watch_Series_6(	
	id_product int primary key identity(1,1),
	cod_product int
)
declare @cod_random_id5 int, @cod_count_id5 int
set @cod_count_id5 = 50;
set @cod_random_id5 = 123224;
while @cod_count_id5 > 0
	begin 
		insert into Apple_Watch_Series_6 values(@cod_random_id5)
		set @cod_count_id5 = @cod_count_id5 - 1
		set @cod_random_id5 = FLOOR(RAND()*(1000000-5)+5);
	end;
select * from Apple_Watch_Series_6


create table KazakhBest_what_city(
	id_product int primary key identity(1,1),
	KazakhBest_id integer not null, 
	foreign key (KazakhBest_id) references KazakhBest(id_product),
	what_city_id integer not null, 
	foreign key (what_city_id) references what_city(id),
	Kazakhstan_id integer not null, 
	foreign key (Kazakhstan_id) references Kazakhstan(id_product)
) 

insert into KazakhBest_what_city values(1,1,1);
insert into KazakhBest_what_city values(2,1,2);
insert into KazakhBest_what_city values(3,1,3);
insert into KazakhBest_what_city values(4,1,4);
insert into KazakhBest_what_city values(5,1,5);

insert into KazakhBest_what_city values(6,3);
insert into KazakhBest_what_city values(7,3);
insert into KazakhBest_what_city values(8,3);
insert into KazakhBest_what_city values(9,3);
insert into KazakhBest_what_city values(10,3);
insert into KazakhBest_what_city values(6,5);
insert into KazakhBest_what_city values(7,5);
insert into KazakhBest_what_city values(8,5);
insert into KazakhBest_what_city values(9,5);
insert into KazakhBest_what_city values(10,5);
insert into KazakhBest_what_city values(1,2);
insert into KazakhBest_what_city values(2,2);
insert into KazakhBest_what_city values(3,2);
insert into KazakhBest_what_city values(4,2);
insert into KazakhBest_what_city values(5,2);
insert into KazakhBest_what_city values(6,4);
insert into KazakhBest_what_city values(7,4);
insert into KazakhBest_what_city values(8,4);
insert into KazakhBest_what_city values(9,4);
insert into KazakhBest_what_city values(10,4);
insert into KazakhBest_what_city values(1,6);
insert into KazakhBest_what_city values(2,6);
insert into KazakhBest_what_city values(3,6);
insert into KazakhBest_what_city values(4,6);
insert into KazakhBest_what_city values(5,6);
insert into KazakhBest_what_city values(6,7);
insert into KazakhBest_what_city values(7,7);
insert into KazakhBest_what_city values(8,7);
insert into KazakhBest_what_city values(9,7);
insert into KazakhBest_what_city values(10,7);
insert into KazakhBest_what_city values(1,9);
insert into KazakhBest_what_city values(2,9);
insert into KazakhBest_what_city values(3,9);
insert into KazakhBest_what_city values(4,9);
insert into KazakhBest_what_city values(5,9);
insert into KazakhBest_what_city values(6,8);
insert into KazakhBest_what_city values(7,8);
insert into KazakhBest_what_city values(8,8);
insert into KazakhBest_what_city values(9,8);
insert into KazakhBest_what_city values(10,8);
insert into KazakhBest_what_city values(1,10);
insert into KazakhBest_what_city values(2,10);
insert into KazakhBest_what_city values(3,10);
insert into KazakhBest_what_city values(4,10);
insert into KazakhBest_what_city values(5,10);


create table what_city(
	id int primary key identity(1,1),
	name_product_city nvarchar(50)
)

insert into what_city values ('Казахстан');
insert into what_city values ('Россия');
insert into what_city values ('Китай');
insert into what_city values ('Азербайджан');
insert into what_city values ('Филиппины');
insert into what_city values ('Турция');
insert into what_city values ('Сингапур');
insert into what_city values ('Малайзия');
insert into what_city values ('Саудовская Аравия');
insert into what_city values ('Таиланд');

select * from what_city

select KazakhBest.name,  Kazakhstan.counts, Kazakhstan.salary, what_city.name_product_city
from KazakhBest_what_city
join KazakhBest on KazakhBest.id_product=KazakhBest_what_city.KazakhBest_id
join what_city on what_city.id=KazakhBest_what_city.what_city_id
join Kazakhstan on Kazakhstan.id_product=KazakhBest_what_city.Kazakhstan_id
where name_product_city = 'Казахстан';


select * from History
select * from KazakhBest

select * from KazakhBest
create table KazakhBest_smartphones_gadgets(
	id int primary key identity(1,1),
	KazakhBest_id integer not null, 
	foreign key (KazakhBest_id) references KazakhBest(id_product),
	smartphones_gadgets_id integer not null, 
	foreign key (smartphones_gadgets_id) references smartphones_gadgets(id)
) 
insert into KazakhBest_smartphones_gadgets values( 1 , 1 ); 
insert into KazakhBest_smartphones_gadgets values( 3 , 4 ); 
insert into KazakhBest_smartphones_gadgets values( 4 , 3 ); 
insert into KazakhBest_smartphones_gadgets values( 5 , 2 ); 
 
select KazakhBest.id_product, KazakhBest.name, smartphones_gadgets.name_product
from KazakhBest_smartphones_gadgets
join KazakhBest on KazakhBest.id_product=KazakhBest_smartphones_gadgets.KazakhBest_id
join smartphones_gadgets on smartphones_gadgets.id=KazakhBest_smartphones_gadgets.smartphones_gadgets_id

create table KazakhBest_laptops_computers(
	id int primary key identity(1,1),
	KazakhBest_id integer not null, 
	foreign key (KazakhBest_id) references KazakhBest(id_product),
	laptops_computers_id integer not null, 
	foreign key (laptops_computers_id) references laptops_computers(id)
) 
insert into KazakhBest_laptops_computers values( 7 , 1 ); 
insert into KazakhBest_laptops_computers values( 10 , 2 ); 
 
select KazakhBest.id_product, KazakhBest.name, laptops_computers.name_product
from KazakhBest_laptops_computers
join KazakhBest on KazakhBest.id_product=KazakhBest_laptops_computers.KazakhBest_id
join laptops_computers on laptops_computers.id=KazakhBest_laptops_computers.laptops_computers_id


create table KazakhBest_appliances(
	id int primary key identity(1,1),
	KazakhBest_id integer not null, 
	foreign key (KazakhBest_id) references KazakhBest(id_product),
	appliances_id integer not null, 
	foreign key (appliances_id) references appliances(id)
) 
insert into KazakhBest_appliances values( 6 , 1 ); 
insert into KazakhBest_appliances values( 2 , 2 );
insert into KazakhBest_appliances values( 9 , 4 );

select KazakhBest.id_product, KazakhBest.name, appliances.name_product
from KazakhBest_appliances
join KazakhBest on KazakhBest.id_product=KazakhBest_appliances.KazakhBest_id
join appliances on appliances.id=KazakhBest_appliances.appliances_id


create table category(
	id int primary key identity(1,1),
	name_product nvarchar(50),
)
--drop table category
insert into category values('Smartphones and gadgets');
insert into category values('Laptops and computers');
insert into category values('Appliances');

create table smartphones_gadgets( 
	id int primary key identity(1,1),
	category_id integer not null, 
	foreign key (category_id) references category(id),
	name_product nvarchar(50)

)
insert into smartphones_gadgets values( 1, 'Smartphones');
insert into smartphones_gadgets values( 1, 'Smart watch');
insert into smartphones_gadgets values( 1, 'Tablets');
insert into smartphones_gadgets values( 1, 'Push-button telephone');
select category.name_product, smartphones_gadgets.name_product
from category
join smartphones_gadgets on smartphones_gadgets.category_id = category.id

create table laptops_computers( 
	id int primary key identity(1,1),
	category_id integer not null, 
	foreign key (category_id) references category(id),
	name_product nvarchar(50)
)
insert into laptops_computers values( 2, 'Laptops');
insert into laptops_computers values( 2, 'Desktop computers');
insert into laptops_computers values( 2, 'Ultrabooks');
insert into laptops_computers values( 2,  'Monoblocks');
insert into laptops_computers values( 2, 'Antivirus');
select category.name_product, laptops_computers.name_product
from category
join laptops_computers on laptops_computers.category_id = category.id

create table appliances( 
	id int primary key identity(1,1),
	category_id integer not null, 
	foreign key (category_id) references category(id),
	name_product nvarchar(50)
)
insert into appliances values( 3, 'Refrigerators'); --Холодильники
insert into appliances values( 3, 'Freezers'); --Морозильники
insert into appliances values( 3, 'Microwaves'); --Микроволновки
insert into appliances values( 3, 'Slabs'); --Плиты
insert into appliances values( 3, 'Teapots'); --Чайники
select category.name_product, appliances.name_product
from category
join appliances on appliances.category_id = category.id



create table History(
	id int primary key identity(1,1),
	id_product int,
    operation nvarchar(50),
    createat datetime not null default getdate()
)
USE Nurik_192
go

--DISABLE TRIGGER KazakhBest_insert ON KazakhBest
--ENABLE TRIGGER KazakhBest_insert ON KazakhBest
--drop trigger KazakhBest_insert
create trigger KazakhBest_insert
on KazakhBest
after insert
as
insert into History( id_product , operation)
select id_product, 'Добавлен товар ' + name 
from inserted
--drop trigger KazakhBest_delete
create trigger KazakhBest_delete
on KazakhBest
after delete
as
insert into History(id_product, operation)
select id_product, 'Удален товар ' + name
from deleted
--drop trigger KazakhBest_update
create trigger KazakhBest_update
on KazakhBest
after update
as
insert into History(id_product, operation)
select id_product, 'Обновлен товар ' + name
from inserted

select * from History
select * from KazakhBest

