Bài tập 6: Hệ quản trị CSDL - NGUYỄN THỊ THU HIỀN - K225480106015
Chủ đề: Câu lệnh Select
Yêu cầu bài tập: 
Cho file sv_tnut.sql (1.6MB)
1. Hãy nêu các bước để import được dữ liệu trong sv_tnut.sql vào sql server của em
2. dữ liệu đầu vào là tên của sv; sđt; ngày, tháng, năm sinh của sinh viên (của sv đang làm bài tập này)
3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
5. nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?
6. nhập sql để tìm xem có những sv nào trùng tên với em?
7. nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.
8. nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.
9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.
10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV (TRÌNH BÀY QUÁ TRÌNH SUY NGHĨ VÀ GIẢI NHỮNG VỨNG MẮC)

DEADLINE: 23H59:59 NGÀY 25/4/2025

Ghi chú: Giải thích tại sao lại có SQL như vậy.
---------------------------------------------------------------BÀI LÀM---------------------------------------------------------------------
1. IM pọt file sv_tnut.sql mà thầy giáo đã cho để đưa vào sql server của em

![image](https://github.com/user-attachments/assets/1c2ec019-7bcf-4d8c-9047-dc7dda6d21a5)

- Connect vào sql server của em, tạo một database mới => chọn New querry

  ![image](https://github.com/user-attachments/assets/a6290142-cf5c-4c9c-8bd9-2921f19bee2c)

- Chọn file -> open ->file... sv_tnut.sql

![image](https://github.com/user-attachments/assets/b699960e-8be5-424c-bb11-84b8e28b0575)

- Chọn file sv_tnut.sql ở mục đã down về rồi nhấn chọn

![image](https://github.com/user-attachments/assets/09f4847c-4b19-41bc-9f87-f9468f36a857)

- Ấn Excute để chạy file thành công ở database SINHVIEN_KMT trong server của em

2. Đưa dữ liệu cá nhân người làm vào file sv_tnut.sql đang dùng:
Dùng dòng lệnh:

![image](https://github.com/user-attachments/assets/8e91751e-e322-4d39-b955-3c7f27ea658b)

![image](https://github.com/user-attachments/assets/799d272e-b20a-473e-a041-9e7eae560c42)

=)) Vậy là đã có dữ liệu cá nhân của  mình rùi
3. nhập sql để tìm xem có những sv nào trùng hoàn toàn ngày/tháng/năm với em?
- Dùng câu lệnh: select * from SV where ns = '2004-02-20'

![image](https://github.com/user-attachments/assets/0dd76165-2253-4d8f-87e9-12153e6981ec)

=> có 3 người trùng ngày tháng năm sinh với Hiền

4. nhập sql để tìm xem có những sv nào trùng ngày và tháng sinh với em?
- chỉ select dữ liệu tại ngày và tháng
select * from SV where day(ns) = 20 and month(ns)= 02 ;

![image](https://github.com/user-attachments/assets/ac5b3cc6-2e21-41f9-9f44-b92150fd44fa)

=> có đến 24 kết quả trả về là trùng với 20-02

5.nhập sql để tìm xem có những sv nào trùng tháng và năm sinh với em?

![image](https://github.com/user-attachments/assets/5644b5b5-30f6-462d-bb1e-a68c622faee0)

=> có 127 người là trùng năm sinh với tháng sinh giống Hiền

6.nhập sql để tìm xem có những sv nào trùng tên với em?

![image](https://github.com/user-attachments/assets/c1f21de2-57a3-4faf-99e2-e82e1136d359)

=> có 2 người trùng tên với em , đó là em và 1 bạn khác

7.nhập sql để tìm xem có những sv nào trùng họ và tên đệm với em.

![image](https://github.com/user-attachments/assets/81e33ab7-6677-46c8-a95b-4258712e731d)

=> 23 người trùng họ và tên đệm của em và trong đó có em

8.nhập sql để tìm xem có những sv nào có sđt sai khác chỉ 1 số so với sđt của em.

![image](https://github.com/user-attachments/assets/a726cc08-e7a5-4e24-a212-971795e6b4c6)

=> Không thấy có kết quả nào cả , vậy có thể do số của em là độc lập 
để em sẽ test xem ai có số gần giống em thì em dùng lệnh:

![image](https://github.com/user-attachments/assets/575c6dba-4067-40d3-a78b-96aa6a8f1f4a)

=> sau khi test 5 lần 7 lượt thì em biết vì sao không trùng , là vì số điện thoại của các bạn khác không có số 0 ở đầu

![image](https://github.com/user-attachments/assets/ac761785-ae50-4f6b-85da-fe007c42812c)

Tuy nhiên thì cũng chẳng giống ai => sim độc lập , không bị chiếm đoạt

9. BẢNG SV CÓ HƠN 9000 ROWS, HÃY LIỆT KÊ TẤT CẢ CÁC SV NGÀNH KMT, SẮP XẾP THEO TÊN VÀ HỌ ĐỆM, KIỂU TIẾNG  VIỆT, GIẢI THÍCH.

![image](https://github.com/user-attachments/assets/4cadbb5a-47c2-4b7e-9c9e-a5874b2efba6)

* WHERE lop LIKE '%KMT%'
Đây là điều kiện lọc.
lop là cột chứa tên lớp của sinh viên, ví dụ: K60KMT.K01, K57KMT.K01.
LIKE '%KMT%' nghĩa là: lọc ra những dòng mà chuỗi "KMT" xuất hiện ở bất kỳ đâu trong tên lớp.
Dấu % là ký tự đại diện (wildcard):
% trước: có thể có bất kỳ ký tự gì đứng trước "KMT".
% sau: có thể có bất kỳ ký tự gì đứng sau "KMT".
* ORDER BY ten COLLATE Vietnamese_CI_AS, hodem COLLATE Vietnamese_CI_AS
Đây là phần sắp xếp kết quả.
ORDER BY ten: sắp xếp theo tên sinh viên (ví dụ: An, Bình, Dũng, Hằng...).
COLLATE Vietnamese_CI_AS: ép kiểu sắp xếp theo bảng chữ cái tiếng Việt, có phân biệt dấu (ví dụ: "Á" đúng thứ tự so với "A", không bị sai như mặc định tiếng Anh).
, hodem: nếu nhiều người trùng tên, thì sắp theo hodem (họ đệm) tiếp theo.

10. HÃY NHẬP SQL ĐỂ LIỆT KÊ CÁC SV NỮ NGÀNH KMT CÓ TRONG BẢNG SV
- em thấy dữ liệu của các trường của bảng SV được tạo , ko có trường phân biệt NAM Nữ
- Em nghĩ mình nên thêm một trường giới tính nữa vào bảng SV
- Lọc ra hết các sinh viên của ngành KMT ra xem . Em sẽ phỏng đoán giới tính bằng tên gọi, tên đệm để phân biệt, tuy nhiên nó khoog chính xác hết được
- em nghĩ mấy đứa con gái sẽ hay có tên như : Hiền, mai , thảo , hương, giang , linh, phương, trang , my , mi , thơ, vân ,... em sẽ truy vấn được những bạn này , để xem kết quả chiếm được bao nhiêu người
so với tổng số KMT .
* Hoặc cách khác:
- em sẽ truy vấn ngành KMT xem có bao nhiêu lớp khác nhau
- Sau đó em sẽ truy vấn từng lớp để xem có những tên nào giống con gái, em lọc ra
- Rồi sau đó, em sẽ lọc tạm thời những tên đấy ra và quy là con gái :)))

Em sẽ làm theo cách 2:
bước 1: hết các lớp KMT , trước đó ý 9 đã có đến 250 sinh viên của lớp KMT , nhưng đa số em thấy các khóa từ K52 đổ xuống , em sẽ check sinh viên của từng lớp. Mà trường lớp có thể có sự khác biệt ở .K01 hoặc .01 . NÊN EM TRUY VẤN CẢ 2

![image](https://github.com/user-attachments/assets/39553252-de22-4572-9ecc-d815f70cc3fe)

LOẠI

![image](https://github.com/user-attachments/assets/64d60811-82b2-46a7-8f71-8c92a6f74b79)

LOẠI

![image](https://github.com/user-attachments/assets/63ca9270-d09c-4329-95f9-6c4ac7ef4b4e)

LOẠI

![image](https://github.com/user-attachments/assets/ba36b0bd-5c1d-407d-a32e-4fe11b93b313)

LOẠI

![image](https://github.com/user-attachments/assets/8dcbdcfb-99ea-46c8-8b75-f0eef87c244e)

- Có tên Trang, chọn để truy vấn

![image](https://github.com/user-attachments/assets/6aec8b4a-6cc7-4cc2-bb97-777cf9e840e1)

- có tên nhung , my

![image](https://github.com/user-attachments/assets/3d3edc9f-9166-4079-bb36-0ddbd0cc6a3f)

- có QUYẾN , nhưng tên đệm là Thị . Nên pick là nữ luôn

![image](https://github.com/user-attachments/assets/3494de1b-7e88-41de-99a3-e82ae386f6c3)

- Có tên nghi ngờ là nữ : Vân Anh, Linh , Mai , Ngọc , Phương , Thùy , Tuyết , Như Ý , Hằng

  ![image](https://github.com/user-attachments/assets/7975c1e1-2fc2-4aa8-8d8c-8553017c809f)

- Có các tên nghi ngờ là nữ: Lan Anh, Ánh , Ngân , Nguyệt , Quỳnh , Kim Tuyến , Vân , Thương, Huyền , Bích

Tổng hợp lại cần truy vấn các tên sau : Lan Anh, Ánh , Ngân , Nguyệt , Quỳnh , Trang , Kim Tuyến , Vân , Thương, Huyền , Bích , Vân Anh, Linh , Mai , Ngọc , Phương , Thùy , Tuyết , Như Ý , Hằng , Thị Quyến, Nhung , My , Mi .

![image](https://github.com/user-attachments/assets/86dc0c38-bb21-4dd8-a6f3-eaba6e691d8f)

- Em đã lọc rồi , nhưng không triệt để , và em thấy em đang làm cái cách rất mất thời gian . Cách tốt nhất là khi tạo dữ liệu là cho thêm trường giới tính để phân biệt :))
  


























