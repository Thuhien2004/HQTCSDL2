USE [QLSV]
GO
INSERT [dbo].[Sinhvien] ([masv], [hoten], [ngaysinh]) VALUES (N'k225480106015', N'Nguyễn Thị Thu Hiền', CAST(N'2004-02-20' AS Date))
INSERT [dbo].[Sinhvien] ([masv], [hoten], [ngaysinh]) VALUES (N'k225480106028', N'Vũ Bảo Khánh', CAST(N'2004-10-02' AS Date))
INSERT [dbo].[Sinhvien] ([masv], [hoten], [ngaysinh]) VALUES (N'k225480106029', N'Đỗ Văn Toản', CAST(N'2004-05-05' AS Date))
INSERT [dbo].[Sinhvien] ([masv], [hoten], [ngaysinh]) VALUES (N'k225480106030', N'Nguyễn Thành Đăng', CAST(N'2005-11-01' AS Date))
INSERT [dbo].[Sinhvien] ([masv], [hoten], [ngaysinh]) VALUES (N'k225480106031', N'Nguyễn Minh Đức', CAST(N'2005-11-20' AS Date))
GO
INSERT [dbo].[MonHoc] ([mamon], [tenmon], [stc]) VALUES (N'm1', N'hệ quản trị csdl', 2)
INSERT [dbo].[MonHoc] ([mamon], [tenmon], [stc]) VALUES (N'm2', N'quản trị mạng', 2)
INSERT [dbo].[MonHoc] ([mamon], [tenmon], [stc]) VALUES (N'm3', N'python', 2)
INSERT [dbo].[MonHoc] ([mamon], [tenmon], [stc]) VALUES (N'm4', N'điện công nghiệp', 3)
INSERT [dbo].[MonHoc] ([mamon], [tenmon], [stc]) VALUES (N'm5', N'vẽ kỹ thuật', 2)
GO
INSERT [dbo].[Khoa] ([makhoa], [tenkhoa]) VALUES (N'cokhi', N'Cơ Khí')
INSERT [dbo].[Khoa] ([makhoa], [tenkhoa]) VALUES (N'efa', N'Điện')
INSERT [dbo].[Khoa] ([makhoa], [tenkhoa]) VALUES (N'fee', N'Điện tử')
GO
INSERT [dbo].[BoMon] ([mabm], [tenbm], [makhoa]) VALUES (N'bm1', N'Công nghệ thông tin', N'fee')
INSERT [dbo].[BoMon] ([mabm], [tenbm], [makhoa]) VALUES (N'bm2', N'Cơ điện tử', N'cokhi')
INSERT [dbo].[BoMon] ([mabm], [tenbm], [makhoa]) VALUES (N'bm3', N'Điện công nghiệp', N'efa')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [ngaysinh], [mabm]) VALUES (N'gv1', N'mr Cốp', CAST(N'1990-01-01' AS Date), N'bm1')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [ngaysinh], [mabm]) VALUES (N'gv2', N'mr Tính', CAST(N'1990-02-02' AS Date), N'bm1')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [ngaysinh], [mabm]) VALUES (N'gv3', N'mr Huy', CAST(N'1990-03-03' AS Date), N'bm1')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [ngaysinh], [mabm]) VALUES (N'gv4', N'mr Thi', CAST(N'1997-04-04' AS Date), N'bm2')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [ngaysinh], [mabm]) VALUES (N'gv5', N'mr Hoa', CAST(N'1983-01-26' AS Date), N'bm3')
GO
INSERT [dbo].[LopHP] ([malophp], [tenlophp], [HK], [mamon], [magv]) VALUES (N'k58cdt01', N'cdt', N'3', N'm2', N'gv2')
INSERT [dbo].[LopHP] ([malophp], [tenlophp], [HK], [mamon], [magv]) VALUES (N'k58kmt', N'ktmt', N'3', N'm1', N'gv1')
INSERT [dbo].[LopHP] ([malophp], [tenlophp], [HK], [mamon], [magv]) VALUES (N'k58tdh01', N'tdh', N'3', N'm3', N'gv3')
GO
INSERT [dbo].[DKMH] ([id_dk], [malophp], [masv], [diemtp], [diemthi], [phantramthi]) VALUES (N'sv1', N'k58kmt', N'k225480106015', 9, 9, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [malophp], [masv], [diemtp], [diemthi], [phantramthi]) VALUES (N'sv2', N'k58kmt', N'k225480106028', 8, 8, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [malophp], [masv], [diemtp], [diemthi], [phantramthi]) VALUES (N'sv3', N'k58cdt01', N'k225480106029', 7.5, 9, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [malophp], [masv], [diemtp], [diemthi], [phantramthi]) VALUES (N'sv4', N'k58tdh01', N'k225480106030', 2, 6, 0.6)
INSERT [dbo].[DKMH] ([id_dk], [malophp], [masv], [diemtp], [diemthi], [phantramthi]) VALUES (N'sv5', N'k58tdh01', N'k225480106031', 7, 9, 0.6)
GO
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (1, N'sv1', 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (2, N'sv2', 8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (3, N'sv3', 9)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (4, N'sv4', 6)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (5, N'sv5', 9)
GO
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'cdt01     ', N'cơ điện tử 01')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'kmt       ', N'kỹ thuật máy tính')
INSERT [dbo].[Lop] ([malop], [tenlop]) VALUES (N'tdh01     ', N'tự động hóa 01')
GO
INSERT [dbo].[LopSV] ([malop], [masv], [chucvu]) VALUES (N'cdt01     ', N'k225480106029', N'sinh viên')
INSERT [dbo].[LopSV] ([malop], [masv], [chucvu]) VALUES (N'kmt       ', N'k225480106015', N'sinh viên')
INSERT [dbo].[LopSV] ([malop], [masv], [chucvu]) VALUES (N'kmt       ', N'k225480106028', N'sinh viên')
INSERT [dbo].[LopSV] ([malop], [masv], [chucvu]) VALUES (N'tdh01     ', N'k225480106030', N'sinh viên')
INSERT [dbo].[LopSV] ([malop], [masv], [chucvu]) VALUES (N'tdh01     ', N'k225480106031', N'sinh viên')
GO
INSERT [dbo].[GVCN] ([malop], [magv], [HK]) VALUES (N'cdt01     ', N'gv4', N'3')
INSERT [dbo].[GVCN] ([malop], [magv], [HK]) VALUES (N'kmt       ', N'gv1', N'3')
INSERT [dbo].[GVCN] ([malop], [magv], [HK]) VALUES (N'kmt       ', N'gv2', N'3')
INSERT [dbo].[GVCN] ([malop], [magv], [HK]) VALUES (N'kmt       ', N'gv3', N'3')
INSERT [dbo].[GVCN] ([malop], [magv], [HK]) VALUES (N'tdh01     ', N'gv5', N'3')
GO
