BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

DEADLINE: 23H59 NGÀY 30/03/2025

ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

BÀI TOÁN: Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md
------------------------------------------------------------------------------------------------------------------------------------------------------------
BÀI LÀM
2. Tạo và sửa lại các bảng
![1 tạo bảng điểm](https://github.com/user-attachments/assets/22ce11e1-4d34-4bc9-a31b-004b3f4f3453)

+ Tạo bảng điểm , có id là pk, để kiểu int
  
![1 1 tạo khóa ngoại @id-dk](https://github.com/user-attachments/assets/a02fba7e-338a-4111-80d4-72675d141217)

+ tạo khóa ngoại id-dk tới bảng dkmh

![2 sửa bảng dkmh](https://github.com/user-attachments/assets/f227ff50-bf7a-40a6-8b7f-dadcaa918cd6)

+ sửa bảng dkmh , có id-dk làm khóa chính
-> sau khi đã sửa các bảng sau, ta tiến hành nhập dũ liệu các cột vào trong tất cả các bảng đã tạo trong QLSV db.
-> ở phần tables , trỏ vào các bảng , ấn chuột phải chọn " Edit top 200 row" hay gọi là edit UI.
  
![3 Edit trên UI bằng cái này](https://github.com/user-attachments/assets/a46f37f4-7d69-4234-955c-d7a38874dd2a)

sau đó ta nhập dữ liệu cho các bảng như bên dưới.

![4 nhập dữ liệu bảng khoa](https://github.com/user-attachments/assets/509705f8-2480-4bb8-aa0a-ab8b4cc93a52)

+nhập dữ liệu cho bảng khoa

![5 nhập dữ liệu bảng bomon](https://github.com/user-attachments/assets/8a5cf9b2-152d-433f-9081-1105e567afe1)

- chú ý là , phải nhập dữ liệu makhoa ở bảng khoa , thì mới nhập được makhoa ở bảng bomon được, và dữ liệu nhập phải thích hợp với kiểu dữ liệu đã tạo cho trường.
  
![6 nhập dữ liệu vào bảng sinhvien](https://github.com/user-attachments/assets/ea1fc136-cc3d-4602-8bfc-428a1e87399b)

+ nhập dũ liệu cho bảng sinh viên
  
![7 nhập dữ liệu bảng dkmh](https://github.com/user-attachments/assets/90d993e3-177a-491c-b49d-d3ca2a49ec5e)

+ đảm bảo tính cá nhân hóa, nên người thực hiện thường hiểu lỗi sai mình làm : ở chỗ phamtramthi kia, nên để là 0.6 , để khi tính điểm thành phần sẽ bớt đi công đoạn là 60/100. Thay vì đó nên để 0.6 để tính điểm tp ở đại học là ( diemtp*(1-phantramthi)+diemthi*phantramthi). NICE SỪ , CHÍNH NÓ =))
  
![8 nhập dữ liệu bảng lophp](https://github.com/user-attachments/assets/b26534a5-f1d8-4019-9f71-ad6e7155ba49)

+ nhập dữ liệu cho bảng lophp
  
![9 nhập dữ liệu bảng lópv](https://github.com/user-attachments/assets/6b5fa2ce-d5fd-4018-9e9f-17dfc5706bde)

+nhập dữ liệu cho bảng lopsv

![10 nhập dữ liệu bảng lop](https://github.com/user-attachments/assets/7faf645b-9265-4d71-a2ee-dd7a322aa17f)

+ nhập dữ liệu bảng lop
  
![11 nhập dữ liệu bảng monhoc](https://github.com/user-attachments/assets/3f21c2fe-3d71-47f9-990a-ea9dade79cc0)

+ nhập dữ liệu bảng môn học
  
![12 nhập dữ liệu bảng giáo viên](https://github.com/user-attachments/assets/e72910f9-b74b-4cfc-b9a6-beac05351b5c)

+ nhập dữu liệu bảng giaovien
  
![13 nhập dữ liệu bảng gvcn](https://github.com/user-attachments/assets/8e951c08-cd7a-4940-93ce-01eea902c6a2)

<=>

![14 nhập dữ liệu bảng diem](https://github.com/user-attachments/assets/d148a04c-8b5e-4750-aada-6df982b57d8c)

<=>

3. Truy vấn dữ liệu : tính điểm của 1 sinh viên ở một lớp học phần

![15 truy vấn sv1 ](https://github.com/user-attachments/assets/209ec621-4f26-40d7-8adf-26eade8887e2)

+ như công thức tính đã cho để tính điểm thành phần
+ lệnh select để truy vấn các trường masv, malophp
+ FROM : từ bảng DKMH
+ WHERE : ở trường masv có dữ liệu = 'ma_sinh_vien_cần_truy_vấn'
+ AND : và malophp = 'malophp_cua_sinhvien_cần_truy_vấn'
-> kết quả sẽ hiện ở phía dưới với Diemtong là một trường được gọi là để đưa dữ liệu đã tính diemtp vào. Sau khi dùng AS ở trên.
  và tương tự với các sinh viên khác.
  
![16 truy vấn sinh viên 2](https://github.com/user-attachments/assets/0cc7a262-b5f4-46b1-8dae-33568850dabc)

![17 truy vấn sv3](https://github.com/user-attachments/assets/66365144-3312-4a77-b57e-ba612c83810f)

![18 truy vấn sinhvien4](https://github.com/user-attachments/assets/b4637cb9-bf78-4d72-a9e6-390d0718c09f)

![19 truy vấn sinh viên 5](https://github.com/user-attachments/assets/0d6842d9-ea32-4040-b9de-7f141766cb5e)


4.Cách tạo 2 file , file scheme chứa cấu trúc của db , file data chứ dữ liệu của db

![20 cách tạo file chứ cấu trúc db](https://github.com/user-attachments/assets/c0ad885a-e486-492b-b7c2-4cdf198ab091)

+ ấn chuột phải vào QLSV , chọn task -> chọn generate sripst... -> chọn tích ô đầu tiên rồi ấn next

![21 tiếp tục tạo](https://github.com/user-attachments/assets/5b1a187f-7235-4914-bcdd-7a185536f398)

![22 tiếp](https://github.com/user-attachments/assets/f5d23014-bf33-4866-80b5-c4010a4a9e2a)

+ chọn mục save as script file , chọn browers , chọn mục để lưu file , đặt tên file btvn3_scheme.sql
+ sau đó vào mục addvange -> lướt tìm types of data to script ->chọn schema only -> ok ->next

![24 ấn finnish](https://github.com/user-attachments/assets/458c7584-5a7a-4c2b-b36b-8aaee6fbbbba)

+ chạy xong cái này , ấn next -> finish
  Làm tương tự với file còn lại là data.sql
  + khác ở chỗ mục addvange -> tìm type ... -> chọn data only . làm tương tự là xong

   ![25 tạo file data](https://github.com/user-attachments/assets/012a0e2a-7dc2-434b-9668-b402de2f74be)
  
![26 lưu file](https://github.com/user-attachments/assets/d654cf24-12f4-4974-9b61-efac746e7157)

![28 tiếp tục finissh](https://github.com/user-attachments/assets/8088cd2e-48a6-4987-b27e-e1e317f68807)


5. Tạo diagrams cho db để thấy các kết nối 1->nhiều .

![29 tạo diagram](https://github.com/user-attachments/assets/0396287e-b397-460c-9cf2-83c82d8be28c)

+ ở QLSV , ấn chuột phải vào database diagrams -> new diagrams
  
![30 add tất cả các bảng](https://github.com/user-attachments/assets/ec20acb3-11fa-4d72-8877-fb1933b1e959) 

+ chọn hết các bảng bằng cách nhấn giữ ctrl , rồi ấn add
  
![31 hiện các bảng kết nối](https://github.com/user-attachments/assets/4cfd1998-c862-4377-8a7a-ba3f96b1db73)

+ nó sẽ hiện ra như này , sau đó kéo thả , co kéo các bảng về các vị trí thích hợp để thấy rõ mối quan hệ 1-nhiều. Sau quá trình co thắt keo thả, sẽ được hình như dưới:
  
![32 sau khi sắp xếp](https://github.com/user-attachments/assets/f46ffe12-8bb5-4c56-b9f9-da4b43297b58)

+ Đầu có khóa sẽ trỏ vào khóa của bảng này , đầu "vô cùng" còn lại sẽ trỏ vào trường là khóa ngoại của Pk của nó.



  






















