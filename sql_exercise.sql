-- create table if not exists Khoa(
-- makhoa char(10),
-- tenkhoa char(10),
-- dienthoai char(10)
-- );

-- create table if not exists GiangVien(
-- magv int,
-- hotengv char(30),
-- luong decimal(5,2),
-- makhoa char(10)
-- );

-- create table if not exists SinhVien(
-- masv int,
-- hotensv char(30),
-- makhoa char(10),
-- namsinh int,
-- quequan char(30)
-- );

-- create table if not exists Detai(
-- madt char(10),
-- tendt char(30),
-- kinhphi int,
-- NoiThucTap char(30)
-- );

-- create table if not exists HuongDan(
-- masv int,
-- madt char(10),
-- magv int,
-- ketqua decimal(5,2)
-- )

select * from Khoa;
select * from GiangVien;
select * from SinhVien;
select * from Detai;
select * from HuongDan;

alter table Khoa add constraint primary key(makhoa);
alter table GiangVien add constraint primary key(magv);
alter table SinhVien add constraint primary key(masv);
alter table DeTai add constraint primary key(madt);
alter table HuongDan add constraint primary key(masv);
