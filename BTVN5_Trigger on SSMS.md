NGUYỄN THỊ THU HIỀN
BÀI TẬP VỀ NHÀ 05, Môn Hệ quản trị csdl. DEADLINE: 23H59P59S - 23/4/2025
SUBJECT: Trigger on mssql


A. Trình bày lại đầu bài của đồ án PT&TKHT:
1. Mô tả bài toán của đồ án PT&TKHT, 
   đưa ra yêu cầu của bài toán đó
2. Cơ sở dữ liệu của Đồ án PT&TKHT :
   Có database với các bảng dữ liệu cần thiết (3nf),
   Các bảng này đã có PK, FK, CK cần thiết
 
B. Nội dung Bài tập 05:
1. Dựa trên cơ sở là csdl của Đồ án
2. Tìm cách bổ xung thêm 1 (hoặc vài) trường phi chuẩn
   (là trường tính toán đc, nhưng thêm vào thì ok hơn,
    ok hơn theo 1 logic nào đó, vd ok hơn về speed)
   => Nêu rõ logic này!
3. Viết trigger cho 1 bảng nào đó, 
   mà có sử dụng trường phi chuẩn này,
   nhằm đạt được 1 vài mục tiêu nào đó.
   => Nêu rõ các mục tiêu 
4. Nhập dữ liệu có kiểm soát, 
   nhằm để test sự hiệu quả của việc trigger auto run.
5. Kết luận về Trigger đã giúp gì cho đồ án của em.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                    BÀI LÀM
PHẦN A: Trình bày đề bài đồ án phân tích thiết kế hệ thống
1. Tên đề tài: Phân tích thiết kế hệ thống quản lý mạng LAN khu vực kí túc xá trường đại học kỹ thuật công nghiệp

1.1 Mô tả bài toán của đồ án

Hiện nay, khu vực ký túc xá của trường Đại học Kỹ thuật Công nghiệp gồm nhiều tòa nhà dành cho sinh viên nội trú. 
Nhu cầu truy cập mạng Internet và nội bộ ngày càng tăng cao, trong khi hệ thống mạng hiện tại thiếu sự quản lý tập trung, không đảm bảo tốc độ ổn định, bảo mật kém, khó giám sát và xử lý sự cố.
Bài toán đặt ra là xây dựng một hệ thống mạng LAN ổn định, có khả năng quản lý các thiết bị mạng và người dùng trong toàn bộ khu ký túc xá. 
Hệ thống cần hỗ trợ quản lý hạ tầng, địa chỉ IP, cấu hình thiết bị, kiểm soát truy cập và ghi nhận các sự cố – từ đó giúp bộ phận kỹ thuật theo dõi và xử lý hiệu quả hơn.

1.2 Đưa ra yêu cầu bài toán
* Yêu cầu về chức năng của hệ thống quản lý mạng LAN khu vực kí túc xá trường
  
![z6532018766565_b20bdd3cb6bb57b88c5baf06df0ccfba](https://github.com/user-attachments/assets/2b5f7b25-0d88-40b7-b9c1-1b6407e7305f)

- Dựa trên biểu đồ phân cấp chức năng như trên, ta thấy được rõ các yêu cầu của bài toán
. Ngoài ra vẫn luôn phải đảm bảo các phi chức năng như: tính bảo mật , tính mở rộng , tính liên kết , tính sẵn sàng , tính chính xác và giao diện dễ sử dụng.
  
2. Cơ sở dữ liệu của hệ thống quản lý mạng LAN khu vực kí túc xá trường ĐHKTCN
  
![image](https://github.com/user-attachments/assets/98373405-cefd-4bd7-b89c-b76fe8464396)

- Tạo database có tên là QUẢN LÝ MẠNG KTX

![image](https://github.com/user-attachments/assets/6b1dc806-e5cf-473b-befc-079505a5062c)

- Tạo bảng BAOCAO với các trường dữ liệu như trên với cá khóa chính: #STT , khóa ngoại: @maPhong ,@mssv , @maTHIETBI

  ![image](https://github.com/user-attachments/assets/3e293004-e410-4c84-9090-5269d1ed0e19)

- Tạo bảng CAUHINHMANG : #STT,#maCAUHINH , @maQTV,@maTHIETBI

  ![image](https://github.com/user-attachments/assets/71baa208-51c8-49b9-8ba0-093c68d5818c)

- Tạo bảng PHONG với : #maPHONG

  ![image](https://github.com/user-attachments/assets/6bf3b4be-9cee-4ef3-b04a-f529f5353539)

- Tạo bảng QUANTRIVIEN với: #maQTV

![image](https://github.com/user-attachments/assets/b9e8e5f4-b137-4adc-b493-81473564e0bc)

- Tạo bảng SINHVIEN với: #mssv, @maPHONG

  ![image](https://github.com/user-attachments/assets/8e19dff4-595b-4736-a7cf-5a209e9b5527)

- Tạo bảng TAIKHOAN với: #maTK , @mssv

![image](https://github.com/user-attachments/assets/5e772648-a01a-4514-9669-e1fc03b3e065)

- Tạo bảng THIETBI với: #maTHIETBI , @maPHONG

![image](https://github.com/user-attachments/assets/a662be26-f78f-4aca-9d00-8a05ad147abb)

Dựa vào Diagram của database QUẢN LÝ MẠNG KTX , ta có thể quan sát đc các liên kết 1 nhiều , và mối quan hệ PK,FK của các bảng với nhau.
















