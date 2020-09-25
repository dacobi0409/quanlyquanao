create database DB_ShopQuanAo
go
use DB_ShopQuanAo
go
create table SanPham(
	MaSanPham int identity primary key,
	UrlAnh nvarchar(200),
	TenSanPham nvarchar(100),
	DanhMuc int, --1: Sản phẩm Nam , 0: Sản phẩm nữ
	GiaGoc int,
	KhuyenMai int,
	MoTaNgan nvarchar(200),
	MoTaChiTiet NText,
	NgayThem date,
	TrangThai int, --1: Còn Hàng, 0: Hết hàng
	TrangThaiMuaHang int --1 Đã thêm vào giỏ hàng, 0: Chưa thêm
)	
create table LienHe(
	MaLienHe int identity primary key,
	HoTen nvarchar(50),
	Email varchar(50),
	NoiDung Ntext
)
create table Users(
    Id int identity primary key,
	TaiKhoan nchar(10),
	MatKhau nvarchar(50),
	HoTen nvarchar(50),
	GioiTinh int, -- 1:Nam , 0 Nữ
	NgaySinh date,
	Email varchar(50),
	DiaChi nvarchar(200),
	SoDienThoai varchar(20),
	UrlAnhUser varchar(200),
	PhanQuyen int not null, --1:admin, 0: Khách hàng
	TrangThaiUser int --1: dang nhap, 0: chua dang nhap
)

create table DonHang (
	MaDonHang int identity primary key,
	NgayDatHang datetime,
	HoTen nvarchar(50),
	DiaChi nvarchar(200),
	SoDienThoai varchar(20),
)

create table DonHangChitiet
(
	MaDHCT int identity primary key,
	MaSanPham int,
	Constraint FK_maSanPham1 foreign key (MaSanPham) references SanPham(MaSanPham),
	MaDonHang int,
	Constraint FK_maDonHang1 foreign key (MaDonHang) references DonHang(MaDonHang),
	Soluong int,
	KhuyenMai int
)


insert into SanPham values('sin1.jpg',N'Áo ngắn tay nữ',0,600000,10000,N'-Áo sơ mi dài tay kiểu dáng Slim Fit ôm gọn gàng cơ thể và tôn dáng người mặc.',N'- Áo sơ mi dài tay được làm từ chất liệu 100% cotton USA với đặc tính mềm mại, thấm hút mồ hôi tốt. Sản phẩm mang cảm giác dễ chịu mùa hè và giúp người mặc thoải mái trong mọi hoạt động.','01/01/2020',1,0)
insert into SanPham values('po2.jpg',N'Áo phông nam có cổ',1,520000,20000,N'-Kiểu dáng đơn giản, thoải mái, phù hợp nhiều hoàn cảnh, thích hợp mặc quanh năm.',N'- Áo polo trơn chất liệu polyester. Kết hợp với quần sóoc, jeans, khaki…với giày thể thao, sandal. ','01/01/2020',1,0)
insert into SanPham values('po3.jpg',N'Bộ áo gấm cổ tròn tay và quần',1,600000,30000,N'-Bộ đồ được làm từ vải cotton.',N'- Bộ đồ được làm từ chất liệu 100% cotton USA với đặc tính mềm mại, thấm hút mồ hôi tốt. Sản phẩm mang cảm giác dễ chịu mùa hè và giúp người mặc thoải mái trong mọi hoạt động.','01/01/2020',0,0)
insert into SanPham values('sin1.jpg',N'Áo ngắn tay nữ',0,600000,10000,N'-Áo sơ mi dài tay kiểu dáng Slim Fit ôm gọn gàng cơ thể và tôn dáng người mặc.',N'- Áo sơ mi dài tay được làm từ chất liệu 100% cotton USA với đặc tính mềm mại, thấm hút mồ hôi tốt. Sản phẩm mang cảm giác dễ chịu mùa hè và giúp người mặc thoải mái trong mọi hoạt động.','01/01/2020',1,0)
insert into SanPham values('po2.jpg',N'Áo phông nam có cổ',1,520000,20000,N'-Kiểu dáng đơn giản, thoải mái, phù hợp nhiều hoàn cảnh, thích hợp mặc quanh năm.',N'- Áo polo trơn chất liệu polyester. Kết hợp với quần sóoc, jeans, khaki…với giày thể thao, sandal. ','01/01/2020',1,0)
insert into SanPham values('po3.jpg',N'Bộ áo gấm cổ tròn tay và quần',1,600000,30000,N'-Bộ đồ được làm từ vải cotton.',N'- Bộ đồ được làm từ chất liệu 100% cotton USA với đặc tính mềm mại, thấm hút mồ hôi tốt. Sản phẩm mang cảm giác dễ chịu mùa hè và giúp người mặc thoải mái trong mọi hoạt động.','01/01/2020',0,0)
insert into SanPham values('sin1.jpg',N'Áo ngắn tay nữ',0,600000,10000,N'-Áo sơ mi dài tay kiểu dáng Slim Fit ôm gọn gàng cơ thể và tôn dáng người mặc.',N'- Áo sơ mi dài tay được làm từ chất liệu 100% cotton USA với đặc tính mềm mại, thấm hút mồ hôi tốt. Sản phẩm mang cảm giác dễ chịu mùa hè và giúp người mặc thoải mái trong mọi hoạt động.','01/01/2020',1,0)
insert into SanPham values('po2.jpg',N'Áo phông nam có cổ',0,520000,20000,N'-Kiểu dáng đơn giản, thoải mái, phù hợp nhiều hoàn cảnh, thích hợp mặc quanh năm.',N'- Áo polo trơn chất liệu polyester. Kết hợp với quần sóoc, jeans, khaki…với giày thể thao, sandal. ','01/01/2020',1,0)
insert into SanPham values('po3.jpg',N'Bộ áo gấm cổ tròn tay và quần',1,600000,30000,N'-Bộ đồ được làm từ vải cotton.',N'- Bộ đồ được làm từ chất liệu 100% cotton USA với đặc tính mềm mại, thấm hút mồ hôi tốt. Sản phẩm mang cảm giác dễ chịu mùa hè và giúp người mặc thoải mái trong mọi hoạt động.','01/01/2020',0,0)

insert into LienHe values(N'Phạm Thị Thanh Xuân ^^','XuanXuatSom@gmail.com',N'Muốn chọn một bộ đồ nữ nhưng không có tiền thì phải làm sao ?')
insert into LienHe values(N'Đào Công Bình','BinhDao@gmail.com',N'Áo bị lỗi cần đổi')

insert into Users values('admin','admin','Tôi là Admin',1,'01/01/1997','admin@gmail.com','admindiachi','0368686868','user.png',0,0)
insert into Users values('user','user','Tôi là user',1,'01/01/1997','user@gmail.com','userdiachi','0386868686','user.png',1,1)




select * from SanPham
select * from LienHe
SELECT * from Users where  TrangThaiUser=1 and phanQuyen=0
select * from DonHang
select * from DonHangChiTiet

--Create view DBDHCT
--as
--select d.MaDHCT,s.TenSanPham,s.GiaGoc,s.KhuyenMai,dh.HoTen,dh.SoDienThoai,d.Soluong, count(d.Soluong* s.KhuyenMai) as 'Tong tien' from DonHangChitiet d inner join SanPham s on  d.MaSanPham=s.MaSanPham
--							inner join DonHang dh on  d.MaDonHang= dh.MaDonHang
--group by d.MaDHCT,s.TenSanPham,s.GiaGoc,s.KhuyenMai,dh.HoTen,dh.SoDienThoai,d.Soluong


