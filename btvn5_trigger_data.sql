USE [QUẢN LÝ MẠNG LAN KTX]
GO
INSERT [dbo].[QUANTRIVIEN] ([maQTV], [tenQTV], [Email], [SĐT], [chucvu], [Trangthaitaikhoan]) VALUES (N'QTV1      ', N'Nguyễn Thị Thu Hiền', N'thuhien2004', 917874194, N'QTV chính', N'Đang hoạt động')
INSERT [dbo].[QUANTRIVIEN] ([maQTV], [tenQTV], [Email], [SĐT], [chucvu], [Trangthaitaikhoan]) VALUES (N'QTV2      ', N'Phương Thị Anhs Nguyệt', N'nguyetyeuemnam', 39966772, N'QTV kỹ thuật', N'Đã tạm dừng')
GO
INSERT [dbo].[PHONG] ([maPHONG], [Tang], [Toa]) VALUES (N'212A3', N'2', N'A3')
INSERT [dbo].[PHONG] ([maPHONG], [Tang], [Toa]) VALUES (N'213A3', N'2', N'A3')
GO
INSERT [dbo].[THIETBI] ([STT], [maTHIETBI], [tenTHIETBI], [maPHONG], [TrangThaiHoatDong], [Lichsutrangthai], [SoLanCauHinh]) VALUES (1, N'TB01', N'Router', N'212A3', N'Đang hoạt động', N'Không', 3)
INSERT [dbo].[THIETBI] ([STT], [maTHIETBI], [tenTHIETBI], [maPHONG], [TrangThaiHoatDong], [Lichsutrangthai], [SoLanCauHinh]) VALUES (2, N'TB02', N'Switch', N'213A3', N'Đang hoạt động', N'Lỗi', 2)
GO
INSERT [dbo].[CAUHINHMANG] ([STT], [maCAUHINH], [maTHIETBI], [maQTV], [IP], [SNmask], [Gateway], [DNS], [Ngaycauhinh]) VALUES (1, N'CH001', N'TB01', N'QTV1      ', N'192.168.1.1', N'255.255.255.0', N'192.168.1.254', N'8.8.8.8', CAST(N'2025-04-23' AS Date))
INSERT [dbo].[CAUHINHMANG] ([STT], [maCAUHINH], [maTHIETBI], [maQTV], [IP], [SNmask], [Gateway], [DNS], [Ngaycauhinh]) VALUES (2, N'CH002', N'TB02', N'QTV1      ', N'192.168.1.2', N'255.255.255.0', N'192.168.1.254', N'8.8.4.4', CAST(N'2025-04-23' AS Date))
INSERT [dbo].[CAUHINHMANG] ([STT], [maCAUHINH], [maTHIETBI], [maQTV], [IP], [SNmask], [Gateway], [DNS], [Ngaycauhinh]) VALUES (3, N'CH003', N'TB01', N'QTV1      ', N'192.168.1.3', N'255.255.255.0', N'192.168.1.254', N'8.8.8.8', CAST(N'2025-04-23' AS Date))
GO
