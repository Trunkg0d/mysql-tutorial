select * from TBLDeTai;
select * from TBLGiangVien;
select * from TBLHuongDan;
select * from TBLKhoa;
select * from TBLSinhVien;

/*
Cũng cùng nội dung câu hỏi trên bạn hãy đưa ra thông tin gồm mã số, họ tên và tên khoa của tất cả các giảng viên .
*/
set sql_mode ="";
select Magv, Hotengv, Tenkhoa from TBLGiangVien 
left join TBLKhoa
on
TBLKhoa.Makhoa = TBLGiangVien.Makhoa;

/*
Sử dụng lệnh xuất ra mã số, họ tên, tên khoa của các giảng viên hướng dẫn từ 2 sinh viên trở lên
*/
select b.Magv, b.Hotengv, count(b.Hotengv) as SoHSHuongDan from TBLHuongDan as a
left join TBLGiangVien as b
on
a.Magv = b.Magv
group by b.Hotengv
having count(b.Hotengv) >=2
;

/*
Sử dụng lệnh SQL để xuất ra thông tin về những sinh viên chưa có điểm thực tập .
*/

select * from TBLHuongDan
where KetQua is null;

/*
Thực hiện lệnh SQL xuất ra số điện thoại của khoa mà sinh viên có tên ‘Le Thi Van’ đang theo học .
*/

select TBLKhoa.Dienthoai from TBLSinhVien
left join
TBLKhoa
on 
TBLSinhVien.Makhoa = TBLKhoa.Makhoa
where TBLSinhVien.Hotensv = 'Le Thi Van';

/*
Sử dụng lệnh truy vấn SQL lấy ra mã số và tên các đề tài có nhiều hơn 2 sinh viên tham gia thực tập .
*/

select TBLDeTai.Madt, TBLDeTai.Tendt from
TBLHuongDan 
left join  TBLDeTai 
on TBLDeTai.Madt = TBLHuongDan.Madt
group by TBLDeTai.Madt
having count(TBLDeTai.Madt)>2
;

/*
Sử dụng câu lệnh truy vấn SQL lấy ra mã số, tên đề tài của đề tài có kinh phí cao nhất .
*/

select * from TBLDeTai
where Kinhphi = (
select max(Kinhphi) from TBLDeTai
)

