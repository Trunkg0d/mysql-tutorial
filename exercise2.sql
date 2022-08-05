/*
create table SinhVien(
MSSV int primary key,
Lop varchar(50),
Ho varchar(50),
Ten varchar(50),
NgaySinh date,
Sex varchar(5)
)

create table MonHoc(
MSMon int primary key,
TenMon varchar(50)
);

create table DiemThi(
MSSV int,
MSMon int,
Lanthi int,
Diem decimal(4,2),
primary key(MSSV,MSMon, Lanthi),
foreign key(MSSV) references SinhVien(MSSV),
foreign key(MSMon) references MonHoc(MSMon)
)
*/

/* Insert data and add constraint
alter table DiemThi modify column LanThi  int default 1;
alter table DiemThi add check(Diem between 0 and 10);

insert into SinhVien values (21120157,'07ct112','Nguyen','Hoang Long',"1989-10-11","Nam");
insert into SinhVien values (21120153,'07ct112','Le','Ngoc Nam',"1989-11-10","Nam");
insert into SinhVien values (21120149,'07ct112','Le','Thanh Phuc',"1989-12-25","Nu");
	--------------------
insert into MonHoc values (1,'SQL 2005');
insert into MonHoc values (2,'TTHCM');
	--------------------
insert into DiemThi values(21120157,1,1,10);
	--------------------
insert into DiemThi values(21120153,1,1,7);
insert into DiemThi values(21120153,1,2,9);
	--------------------
insert into DiemThi values(21120149,1,1,8);
insert into DiemThi values(21120149,2,1,2);
insert into DiemThi values(21120149,2,2,6);
insert into DiemThi values(21120149,2,3,10);

*/
select * from DiemThi;

select MSSV, MSMon, max(LanThi) as LanThiCuoi 
from DiemThi
group by MSSV, MSMon;

select MSSV, MSMon, LanThiCuoi, Diem from 
(
select MSSV, MSMon, max(LanThi) as LanThiCuoi 
from DiemThi
group by MSSV, MSMon
) a
left join 
(
select LanThi, Diem
from DiemThi
) b on
a.LanThiCuoi = b.LanThi
group by MSSV, MSMon;


