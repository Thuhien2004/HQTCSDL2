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
* Yêu cầu về chức năng của hệ thống quản lý mạng LAN khu vực kí túc xá trườn























