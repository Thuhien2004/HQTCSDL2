# HQTCSDL2
Bài tập về nhà số 2 Hệ quản trị cơ sở dữ liệu - NGUYỄN THỊ THU HIỀN_K225480106015
Deadline 23h59 ngày 25/3/2025
điều kiện: đã xong bài 1
BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql

    BÀI LÀM

![1 Tạo CSDL tên QLSV](https://github.com/user-attachments/assets/7eb6abd4-efb4-4bc6-bafd-3768902735cd)

-> Sau khi connect vào sql server đã tạo trước đó , ta tạo database mới bằng cách :
+ vào mục object explore
+ nhấp chuật phải vào database->new database -> đặt tên database ->oke
+ một csdl được tạo sẽ có 2 kiểu file là rows và log, có thể lựa chọn các thông số về kích thức tập file, có giới hạn hay không giới hạn. 
![2 Tạo bảng trong QLSV](https://github.com/user-attachments/assets/7a07709f-91e7-4b56-9c3c-9f1c376c007d)
+ Tạo bảng trong csdl đã tạo , ấn chuột phải vào tables ->new->table
![3 tạo bảng sinh viên](https://github.com/user-attachments/assets/1425756d-1c4f-4976-b868-b7bcc02d5420)
+tạo bảng sinhvien với các trường masv,hoten,ngaysinh 
+trong đó masv là trường PK = cách nhấp chuột phải vào trường masv ->set primary key
+kiểu dữ liệu dùng cho các xâu kí tự đều được em dùng nvarchar(20) ở tất cả các trường.
+ngaysinh kiểu date
![4 tạo bảng lớp](https://github.com/user-attachments/assets/fbb950d9-72a7-4755-bb8b-11d2e452fce6)
+ tương tự như vậy tạo bảng Lop. với các trường #malop , tenlop
+ muốn phần tables hiển thị các bảng đã tạo , ấn chuột phải vào tables -> refresh
![5  tạo bảng GVCN](https://github.com/user-attachments/assets/29a881c2-3770-4910-933c-d78ad4e2ce9d)
+ tạo bảng GVCN với #malop,#magv,#hk
+ với malop với magv cũng là khóa ngoại. Ta sẽ nhấp chuột vào trường có khóa ngoại , hoặc vùng trắng . -> relationship -> add -> ở mục tables and columes, ấn vào dấu 3 chấm ...
+ sau đó ta tham chiếu trường khóa ngoại của bảng này với trường khóa chính cùng tên ở bảng Lop. Như bên dưới :))
![5 1  thiết lập khóa ngoại của malop-malop(lop)](https://github.com/user-attachments/assets/261be0a7-9a79-4e38-a0ee-c76071f9553e)
+ đây là đang tham chiếu trường malop của GVCN sang malop của Lop
![5 2 thiết lập khóa ngoại mgv-magv(giaovien)](https://github.com/user-attachments/assets/5e70a15a-31a0-4e63-bdb5-d99437879ac0)
+ Nếu chưa tạo bảng Giaovien thì có thể tạo bảng Giaovien trước , rồi tham chiếu khóa ngoại magv của bảng gvcn-giaovien.
+ Đây là em đã tạo bảng giaovien trước đó rồi , nên em tham chiếu nó luôn.
![6 tạo bảng LopSV](https://github.com/user-attachments/assets/0f4ae7d8-c520-4865-933b-238f1b42e677)
+tạo bảng lopsv, với các trường có khóa chính khóa ngoại như đề tài, rồi sau đó thiết lập khóa ngoại cho các trường.
![6 1 thiết lập khóa ngoại malop-malop(lop)](https://github.com/user-attachments/assets/95f3b119-2950-41bd-9d54-46d1b1b5b70a)
+ tương tự như các ví dụ trên.
![6 2  thiết lập khóa ngoại masv-masv(sinhvien)](https://github.com/user-attachments/assets/c950aae1-b0eb-431c-a21f-685f80f49186)
<=>
![7 tạo bảng giaovien](https://github.com/user-attachments/assets/cfd02708-6233-40af-9446-c130929f01bc)
<=>
![7 1 thiết lập khóa ngoại mabm-mabm(bomon)](https://github.com/user-attachments/assets/228eef64-3bc4-44f2-92a0-ccb39c7d7b77)
<=>
![8 tạo bảng bomon](https://github.com/user-attachments/assets/673bc049-ad45-4139-a954-03d9648dacb3)
<=>
![8 1 thiết lập khóa ngoại makhoa-makhoa(khoa)](https://github.com/user-attachments/assets/10f3df35-2318-4330-a24d-1393e00df1ce)
<=>
![9 tạo bảng khoa](https://github.com/user-attachments/assets/10c93db1-43a1-4dad-b21f-368bfc7e4edf)
<=>
![10 tạo bảng monhoc](https://github.com/user-attachments/assets/64de09a4-0628-46b2-a1c3-5b045a3dbf4d)
<=>
![11 tạo bảng lophp](https://github.com/user-attachments/assets/eb35cd42-1177-4459-8ba6-ced87709a673)
<=>
![11 1 thiết lập khóa ngoại mamon-mamom(monhoc)](https://github.com/user-attachments/assets/6c74c3f0-b3b6-435d-9d97-7500ca5f266a)
<=>
![11 2 thiết lập khóa ngoại magv-magv(giaovien)](https://github.com/user-attachments/assets/e8cbb2f1-9f5b-47be-8c8f-46b8d2c76e9f)
<=>
![12 tạo bảng DKMH](https://github.com/user-attachments/assets/af894c08-d748-4ebf-bee2-1357019eec57)
<=>
![12 1 thiết lập khóa ngoại malophp-malophp(lophp)](https://github.com/user-attachments/assets/794d8c99-ba30-4910-afaa-e93a4de12bb2)
<=>
![12 2 thiết lập khóa ngoại masv-masv(sinhvien)](https://github.com/user-attachments/assets/48efa380-6387-42cc-af07-f6ff5757c313)
<=>
















    
