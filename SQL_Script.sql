drop table owners cascade constraints;
drop table accounts cascade constraints;
drop table vehicle cascade constraints;
drop table toll_plaza cascade constraints;
drop table fastag cascade constraints;
drop table vehicle_passes cascade constraints;
drop table deduct_tollfee cascade constraints;
drop table employee cascade constraints;
drop table comtractor cascade constraints;

select * from owners;
select * from accounts;
select * from vehicle;
select * from toll_plaza;
select * from fastag;
select * from vehicle_passes;
select * from deduct_tollfee;
select * from employee;
select * from contractor;

create table owners
(
oname varchar(20),
ogender varchar(2),
oage number(3),
adhar_no varchar(20) primary key,
 
phone_no number(10),
vno varchar(20) references vehicle(vno)
);

create table accounts
(
acc_no number(20) primary key,
atype varchar2(20),
balance number(10),
bank_name varchar2(20),
adhar_no varchar(20) references owners(adhar_no)
);

create table vehicle
(
vno varchar(20) primary key,
vtype varchar(20),
vmodel varchar(20),
color varchar(10)
);

create table toll_plaza
(
tid number(10) primary key,
stretch varchar(30),
highway varchar(10),
amount number(10),
 
eid number(10) references employee(eid),
cid number(10) references contractor(cid)
);

create table fastag
(
fid number(10) primary key,
issued_date date,
vno varchar(20) references vehicle(vno),
acc_no number(20) references accounts(acc_no)
);

create table vehicle_passes
(
stretch varchar(30),
highway varchar(20),
passing_date date,
vno varchar(20) references vehicle(vno),
tid number(10) references toll_plaza(tid)
);

create table deduct_tollfee
(
amount number(10),
status varchar(10),
tid number(10) references toll_plaza(tid),
fid number(10) references fastag(fid),
 
acc_no number(20) references accounts(acc_no)
);

create table employee
(
eid number(10) primary key,
ename varchar(30),
eage number(3),
egender varchar(10),
esalary number(10)
);

create table contractor
(
cid number(10) primary key,
cname varchar(30),
cage number(3),
cgender varchar(10)
);

insert into owners values('Piyush Jaggi','m',25,'2344-6574-3465',9880034275,'KA 23 5432');
insert into owners values('Pranjal Sharma','f',37,'4366-7644-2806',8975560045,'KA 23 3094');
insert into owners values('Kuldeep Patil','m',43,'5488-7335-9006',7864335047,'KA 05 6537');
insert into owners values('Arun Roy','m',28,'7005-3574-7664',9664882604,'KA 27 5409');
insert into owners values('Deepak Singh','m',35,'4375-2375-8043',8653440062,'KA 27 2463');
insert into owners values('Abhinav Pandey','m',54,'6508-8445-7092',9553552684,'MH 03 6085');
insert into owners values('Sammed Mishra','m',39,'5499-2683-1784',8463006882,'KA 46 7609');
 
insert into owners values('Rani Guptha','f',32,'5696-4673-8051',7844600395,'AP 25 3572');
insert into owners values('Ramesh Arvind','m',46,'8500-3657-0652',9463380662,'MH 23 2674');
insert into owners values('Sheela Jhoshi','f',24,'4005-3755-6532',8564490888,'KA 01 8005');

insert into vehicle values('KA 23 5432', 'car','maruti suzuki','white');
insert into vehicle values('KA 05 6537','bus','tata bus','yellow');
insert into vehicle values('KA 27 2463','truck', 'cargo','yellow');
insert into vehicle values('KA 46 7609','car','shift dzire','red');
insert into vehicle values('KA 01 8005','car','maruti ertiga','grey');
insert into vehicle values('MH 23 2674','bus','red bus','white');
insert into vehicle values('AP 25 3572','car','innova cresta','black');
insert into vehicle values('MH 03 6085','truck','tata 912','red');
insert into vehicle values('KA 27 5409','bus','traveller','white');
insert into vehicle values('KA 23 3094','car','tata nexon','blue');

insert into accounts values(34523762,'current',20000,'canara bank','2344-6574-3465');
insert into accounts values(6548763327,'savings',15000,'sbi','4366-7644-2806');
insert into accounts values(43568446,'savings',10000,'canara bank','5488-7335-9006');
insert into accounts values(674895202,'current',17550,'union bank','7005-3574-7664');
insert into accounts values(4987643594,'current',12550,'sbi','4375-2375-8043');
insert into accounts values(876450932,'savings',23573,'union','6508-8445-7092');
insert into accounts values(6800653784,'current',17653,'sbi','5499-2683-1784');
insert into accounts values(76654900,'savings',29764,'canara bank','5696-4673-8051');
insert into accounts values(744560092,'current',34095,'union bank','8500-3657-0652');
insert into accounts values(65439551,'savings',9765,'canara bank','4005-3755-6532');

insert into toll_plaza values(54,'Tumkur-Chitradurga','NH 48',80,101,06);
 
insert into toll_plaza values(76,'Kundapur-Surathkal','NH 66',85,134,04);
insert into toll_plaza values(67,'Hattargi-Hirebagewadi','NH 4',90,127,03);
insert into toll_plaza values(82,'Belgaum-Dharwad','NH 4',105,115,02);
insert into toll_plaza values(69,'Hungund-Hospet','NH 13',95,107,01);
insert into toll_plaza values(95,'Bangalore-Kolar','NH 75',100,123,05);
insert into toll_plaza values(79,'Bijapur-Hungund','NH 50',75,137,01);
insert into toll_plaza values(88,'Hassan-Devihalli','NH 75',90,129,04);
insert into toll_plaza values(94,'Bangalore-Pune','NH 4',95,136,05);
insert into toll_plaza values(53,'Neelamangal-Tumkur','NH 4',85,120,03);

insert into fastag values(1284,'23-dec-2020','KA 23 5432',34523762);
insert into fastag values(1076,'17-jul-2020','KA 23 3094',6548763327);
insert into fastag values(1352,'05-mar-2020','KA 05 6537',43568446);
insert into fastag values(1279,'10-feb-2020','KA 27 5409',674895202);
insert into fastag values(1004,'16-sep-2020','KA 27 2463',4987643594);
insert into fastag values(1384,'22-nov-2020','MH 03 6085',876450932);
insert into fastag values(1437,'13-oct-2020','KA 46 7609',6800653784);
insert into fastag values(1548,'30-apr-2020','AP 25 3572',76654900);
insert into fastag values(1020,'07-jan-2020','MH 23 2674',744560092);
insert into fastag values(1295,'06-nov-2020','KA 01 8005',65439551);

insert into deduct_tollfee values(80,'success',54,1284,34523762);
insert into deduct_tollfee values(85,'success',76,1076,6548763327);
insert into deduct_tollfee values(90,'fail',67,1352,43568446);
insert into deduct_tollfee values(105,'success',82,1279,674895202);
insert into deduct_tollfee values(95,'success',69,1004,4987643594);
insert into deduct_tollfee values(100,'success',95,1384,876450932);
 
insert into deduct_tollfee values(75,'fail',79,1437,6800653784);
insert into deduct_tollfee values(90,'success',88,1548,76654900);
insert into deduct_tollfee values(90,'success',67,1437,6800653784);
insert into deduct_tollfee values(75,'success',79,1279,674895202);
insert into deduct_tollfee values(105,'success',82,1384,876450932);
insert into deduct_tollfee values(85,'fail',76,1004,4987643594);
insert into deduct_tollfee values(90,'success',88,1279,674895202);

insert into vehicle_passes values('Tumkur-Chitradurga','NH 48','21-nov-2021','KA 23 5432',54);
insert into vehicle_passes values('Kundapur-Surathkal','NH 66','21-nov-2021','KA 23 3094',76);
insert into vehicle_passes values('Hattargi-Hirebagewadi','NH 4','21-nov-2021','KA 05 6537',67);
insert into vehicle_passes values('Belgaum-Dharwad','NH 4','22-nov-2021','KA 27 5409',82);
insert into vehicle_passes values('Hungund-Hospet','NH 13','22-nov-2021','KA 27 2463',69);
insert into vehicle_passes values('Bangalore-Kolar','NH 75','23-nov-2021','MH 03 6085',95);
insert into vehicle_passes values('Bijapur-Hungund','NH 50','24-nov-2021','KA 46 7609',79);
insert into vehicle_passes values('Hassan-Devihalli','NH 75','24-nov-2021','AP 25 3572',88);
insert into vehicle_passes values('Hattargi-Hirebagewadi','NH 4','25-nov-2021','KA 46 7609',67);
insert into vehicle_passes values('Bijapur-Hungund','NH 50','25-nov-2021','KA 27 5409',79);
insert into vehicle_passes values('Belgaum-Dharwad','NH 4','25-nov-2021','MH 03 6085',82);
insert into vehicle_passes values('Kundapur-Surathkal','NH 66','26-nov-2021','KA 27 2463',76);
insert into vehicle_passes values('Hassan-Devihalli','NH 75','27-nov-2021','KA 27 5409',88);

insert into employee values(101,'Ramesh Arvind',27,'m',17000);
insert into employee values(134,'Suresh Jhoshi',34,'m',23000);
insert into employee values(127,'Manoj Patil',47,'m',24000);
insert into employee values(115,'Rani Bella',38,'f',22000);
insert into employee values(107,'Sammed Shetti',30,'m',21500);
 
insert into employee values(123,'Abhishek R N','36','m',19500);
insert into employee values(137,'Roopa Akshok',43,'f',23500);
insert into employee values(129,'Vinod Shet',33,'m',21700);
insert into employee values(136,'Zayn Malik',32,'m',24750);
insert into employee values(120,'Rana Rathod',28,'m',21700);

insert into contractor values(02,' Ravi Teja',45,'m');
insert into contractor values(06,'Surya Prakash',38,'m');
insert into contractor values(04,'Ram Charan',41,'m');
insert into contractor values(03,'R Rajkumar',47,'m');
insert into contractor values(01,'Shri Chandra',34,'m');
insert into contractor values(05,'Laxmi Rani',36,'f');

commit;
