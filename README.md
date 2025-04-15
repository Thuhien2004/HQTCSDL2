BÀI TẬP VỀ NHÀ 4 - HỆ QUẢN TRỊ CƠ SỞ DỮ LIỆU - NGUYỄN THỊ THU HIỀN - K225480106015
------------------------------------------------------------------------------------
bai tap 4: (sql server)
yêu cầu bài toán:
 - Tạo csdl cho hệ thống TKB (đã nghe giảng, đã xem cách làm)
 - Nguồn dữ liệu: TMS.tnut.edu.vn
 - Tạo các bảng tuỳ ý (3nf)
 - Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
   trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.
các bước thực hiện:
1. Tạo github repo mới: đặt tên tuỳ ý (có liên quan đến bài tập này)
2. tạo file readme.md, edit online nó:
   paste những ảnh chụp màn hình
   gõ text mô tả cho ảnh đó
Gợi ý:
  sử dung tms => dữ liệu thô => tiền xử lý => dữ liệu như ý (3nf)
  tạo các bảng với struct phù hợp
  insert nhiều rows từ excel vào cửa sổ edit dữ liệu 1 table (quan sát thì sẽ làm đc)
deadline: 15/4/2025
----------------------------------------------------------------------------------------
BÀI LÀM
Bước 1: Tạo cơ sở dữ liệu Thời Khóa Biểu

![TẠO CSDL](https://github.com/user-attachments/assets/1a5963a6-befe-40a6-a44d-63b61b71a5c2)

Bước 2: Tạo các bảng theo dạng chuẩn 3NF dựa trên dữ liệu của TMS.tnut.edu.vn 

![TAOj bảng giangvien](https://github.com/user-attachments/assets/a78bdc1f-3d7d-48a1-890d-eba3cdec7ed2)

- Tạo bảng GiangVien(#maGV,hoTen)
  
![tạo bảng lop](https://github.com/user-attachments/assets/435507d1-6863-46dc-b6e2-1a946add2ab8)

- Tạo bảng Lop(#maLop,tenLop)
  
![tạo bảng monhoc](https://github.com/user-attachments/assets/ad8c3cae-3f25-438d-b614-61b7a3a8d564)

- Tạo bảng MonHoc(#maMon,tenMon)
  
![tạo bảng phonghoc](https://github.com/user-attachments/assets/c3fa889c-6c99-4cdf-9f9a-c9d4f3d4fd62)

- Tạo bảng PhongHoc(#maPhong,tenPhong)
  
![tạo bảng thoikhoabieu](https://github.com/user-attachments/assets/50c4a974-6d94-4e78-ac49-7eef8f8900ff)

- Tạo bảng ThoiKhoaBieu(#stt,@maGV,@maLop,@maMon,@maPhong,thu,tietBĐ,sotiet,gioVao,gioRa,ngay)
  
![tạo các trường khóa FK](https://github.com/user-attachments/assets/aec4fea0-aa6f-423a-be34-852b6c18bee7)

- Thiết lập các mối quan hệ PK, FK
  
Bước 3: Thêm dữ liệu vào các bảng
- Truy cập trang TMS.tnut.edu.vn , copy dữ liệu vào Exel, sử dụng remove duplicate ở mục Data để loại bỏ sự trùng lặp

   ![Screenshot 2025-04-15 195841](https://github.com/user-attachments/assets/1043fa0e-2f92-41f1-933e-cde5c24ec7e6)

![Screenshot 2025-04-15 195754](https://github.com/user-attachments/assets/691877f2-c5f4-4b59-8b75-766e3b5baa16)

- Sau đó copy các dữ liệu vào các bảng
  
![dữ liệu bảng giangvien](https://github.com/user-attachments/assets/4f3bf13b-ed41-4df0-87d9-96a199771177)

- Dữ liệu bảng GiangVien
  
![dữ liệu bảng lop](https://github.com/user-attachments/assets/e3887920-081c-4688-af36-c74126a28dc3)

- Dữ liệu bảng Lop
  
![dữ liệu bảng monhoc](https://github.com/user-attachments/assets/0bf58c51-6186-48c2-9413-164d8845548a)

- Dữ liệu bảng MonHoc
  
![dữ liệu bảng phonghoc](https://github.com/user-attachments/assets/ea76e74b-22b1-4c95-9eed-3834aa13e3a2)

- Dữ liệu bảng PhongHoc
  
![dữ liệu bảng thoikhoabieu](https://github.com/user-attachments/assets/6e171610-125c-49cc-b6f1-f687eb34624d)

- Dữ liệu bảng ThoiKhoaBieu, tự bản thân điền thông tin vào

Bước 4: Thực hiện truy vấn các thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.

![truy vấn](https://github.com/user-attachments/assets/353208b1-2f4d-4efa-9852-6477e47b076f)

- Chuyển đổi các tên trường hoTen, tenMon , gioVao , gioRa sang tên các trường có dấu và tường minh hơn từ bảng ThoiKhoaBieu
- Dùng join để kết hợp các dữ liệu của các bảng đều trường giống nhau như maGV , maMon của các bảng GiangVien, MonHoc và ThoiKhoaBieu
  
- ![truy vấn giảng viên bận](https://github.com/user-attachments/assets/0150bcaf-c9ac-4b0f-b8a6-9e84ca3d2c59)
  
   Truy vấn xem có giáo viên nào bận trong khoảng thời gian datetime 1, datetime2 hay không?
  - Đưa ra mốc thời gian của datetime1, datetime2
  -  Đưa ra cột "Giang vien bận" sử dụng dữ liệu từ bảng ThoiKhoaBieu và từ các trường maGV của cả 2 bảng GiangVien, ThoiKhoaBieu
  -  Khoảng thời gian giáo viên bận là trong khoảng datetime 1- datetime 2. Nên khi lọc dữ liệu sẽ để điều kiện <= datetime1 >=datetime2
     
    









































