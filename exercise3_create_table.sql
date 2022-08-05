-- Tạo bảng Khoa :

CREATE TABLE TBLKhoa
(Makhoa char(10)primary key,
Tenkhoa char(30),
Dienthoai char(10));
-- Tạo bảng Giảng Viên :
CREATE TABLE TBLGiangVien(
Magv int primary key,
Hotengv char(30),
Luong decimal(5,2),
Makhoa char(10) references TBLKhoa);
-- Tạo bảng Sinh Viên :
CREATE TABLE TBLSinhVien(
Masv int primary key,
Hotensv char(40),
Makhoa char(10),
foreign key (Makhoa) references TBLKhoa(Makhoa),
Namsinh int,
Quequan char(30));
-- Tạo bảng Đề Tài :
CREATE TABLE TBLDeTai(
Madt char(10)primary key,
Tendt char(30),
Kinhphi int,
Noithuctap char(30));
-- Tạo bảng Hướng Dẫn :
CREATE TABLE TBLHuongDan(
Masv int primary key,
Madt char(10),
foreign key (Madt) references TBLDeTai(Madt),
Magv int,
foreign key (Magv) references TBLGiangVien(Magv),
KetQua decimal(5,2));
-- Nhập dữ liệu cho từng bảng  :
-- Thêm dữ liệu vào bảng Khoa :
INSERT INTO TBLKhoa VALUES
("Geo","Dia ly va QLTN",3855413),
("Math","Toan",3855411),
("Bio","Cong nghe Sinh hoc",3855412);
-- Thêm dữ liệu vào bảng Giảng Viên :
INSERT INTO TBLGiangVien VALUES
(11,"Thanh Xuan",700,"Geo"),
(12,"Thu Minh",500,"Math"),
(13,"Chu Tuan",650,"Geo"),
(14,"Le Thi Lan",500,"Bio"),
(15,"Tran Xoay",900,"Math");
-- Thêm dữ liệu vào bảng SInh Viên :
INSERT INTO TBLSinhVien VALUES
(1,"Le Van Sao","Bio",1990,"Nghe An"),
(2,"Nguyen Thi My","Geo",1990,"Thanh Hoa"),
(3,"Bui Xuan Duc","Math",1992,"Ha Noi"),
(4,"Nguyen Van Tung","Bio",null,"Ha Tinh"),
(5,"Le Khanh Linh","Bio",1989,"Ha Nam"),
(6,"Tran Khac Trong","Geo",1991,"Thanh Hoa"),
(7,"Le Thi Van","Math",null,null),
(8,"Hoang Van Duc","Bio",1992,"Nghe An");
-- Thêm dữ liệu vào bảng Đề Tài :
INSERT INTO TBLDeTai VALUES
("Dt01","GIS",100,"Nghe An"),
("Dt02","ARC GIS",500,"Nam Dinh"),
("Dt03","Spatial DB",100, "Ha Tinh"),
("Dt04","MAP",300,"Quang Binh" );
-- Thêm dữ liệu vào bảng Hướng Dẫn  :
INSERT INTO TBLHuongDan VALUES
(1,"Dt01",13,8),
(2,"Dt03",14,0),
(3,"Dt03",12,10),
(5,"Dt04",14,7),
(6,"Dt01",13,Null),
(7,"Dt04",11,10),
(8,"Dt03",15,6);