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

 ![image](https://github.com/user-attachments/assets/94bc133e-17b4-4996-bb23-d2f861492b98)


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

PHẦN B 
1,2: Mong muốn bài toán có thể logic hơn bằng trường phi chuẩn, thì sẽ thêm một trường dữ liệu nữa vào bảng THIETBI
- Một thiết bị có thể được cấu hình nhiều lần (thể hiện trong bảng CAUHINHMANG).
- Thay vì mỗi lần muốn biết số lần cấu hình thì phải COUNT(*) trên CAUHINHMANG, việc lưu sẵn số lần cấu hình giúp:
- Tăng tốc truy vấn.
- Giám sát hiệu quả thiết bị nhanh chóng.

![image](https://github.com/user-attachments/assets/b9ab04c8-61a7-48ca-907b-05a07e9e2718)

- Và dưới đay là bảng THIETBI sau khi có trường thêm vào
  
![image](https://github.com/user-attachments/assets/733c386c-c335-4187-80a9-5f45bfe881a7)

3. Viết trigger cho bảng THIETBI sử dụng trường SoLanCauHinh để có thể tự động cập nhật số lần cấu hình ghi có thêm dữ liệu mới

![image](https://github.com/user-attachments/assets/9f01bd43-67db-411c-a8bd-eaa6b7ca593a)

- CREATE TRIGGER trg_UpdateSoLanCauHinh:	Tạo một trigger tên là trg_UpdateSoLanCauHinh.
- ON CAUHINHMANG :	Trigger này gắn vào bảng CAUHINHMANG, nghĩa là chỉ hoạt động khi có hành động xảy ra trên bảng này.
- AFTER INSERT :	Trigger được kích hoạt sau khi có dữ liệu mới được chèn (INSERT) vào bảng CAUHINHMANG.
- AS BEGIN ... END :	Phần thân trigger – tất cả logic xử lý được đặt trong khối BEGIN ... END.
- UPDATE THIETBI :	Câu lệnh cập nhật bảng THIETBI.
- SET SoLanCauHinh = SoLanCauHinh + 1 :	Tăng số lần cấu hình (SoLanCauHinh) thêm 1 đơn vị.
- FROM THIETBI T INNER JOIN INSERTED I ON T.maTHIETBI = I.maTHIETBI :	Dòng này xác định thiết bị nào cần cập nhật. Nó so sánh maTHIETBI từ bảng THIETBI và bảng tạm INSERTED (bảng chứa dữ liệu vừa được chèn).
- INSERTED : là bảng ảo do SQL Server tạo ra để lưu tạm các bản ghi mới được chèn – rất quan trọng trong trigger.

=> Với mục đích : Cập nhật đếm số lần thiết bị được cấu hình.Tự động – nhanh – giảm lỗi do thao tác tay.Có thể dùng để cảnh báo thiết bị bị cấu hình quá nhiều lần (bất thường), phục vụ thống kê và báo cáo.

4. Nhập dữ liệu vào bảng

![image](https://github.com/user-attachments/assets/15057027-0928-40f0-a1a5-e983e0311833)

Sau khi nhập dữ liệu cần thiết như maPHONG , maTHIETBI , maQTV ở các bảng kia thì em đã hoàn thành được dữ liệu của bảng CAUHINHMANG như trên. Khi test triger thì trường SoLanCauHinh ở bảng ThIETBI có sự thay đổi.
- Trước đó bảng THIETBI đã nhập dữ liệu như sau:
  
![image](https://github.com/user-attachments/assets/4e48e562-834a-4696-8638-fc43e05f320b)

- Số lần cấu hình trước đó em nhập , và sau khi cập nhập bảng CAUHINHMANG thì SoLanCauHinh ở bảng THIETBI tự động tăng lên thành:

 ![image](https://github.com/user-attachments/assets/8e652a34-0991-4505-9e16-d60b1f572a78)

5. Kết luận
- Vậy từ đó em thấy được trigger có tính năng tự động cập nhật mà không cần dùng đến cập nhật số lần thủ công nữa, tránh được trường hợp quên cập nhật
- Em nhận thấy nó có tính đồng nhất với dữ liệu, dự liệu thay đổi như nào, nó cũng nắm bắt kịp 
- Hỗ trợ phân tích và thống kê
- Truy vấn dữ liệu nhanh hơn















  







