use QL_sinh_vien
GO

-- Tạo bảng sinh viên
CREATE TABLE tblSinhVien(
    id_sv INT IDENTITY(1,1) PRIMARY KEY,
    maSV NCHAR(20) NOT NULL ,
    tenSV NVARCHAR(50) NOT NULL,
    id_lop INT FOREIGN KEY REFERENCES tblLop(id_lop),
    gioitinh BIT,
    ngaysinh DATE,
    quequan NVARCHAR(50),
    hinhanh NVARCHAR(50) NULL,
    ghichu NVARCHAR(128) NULL

)

-- Tạo bảng lớp
CREATE TABLE tblLop(
    id_lop INT IDENTITY(1,1) PRIMARY KEY,
    malop nchar(10) NOT NULL,
	khoa int NOT NULL,
    tenlop nchar(20) NOT NULL,
	tenkhoa nvarchar(50) NOT NULL,
	heDT nvarchar (50) NOT NULL
)


-- tạo bảng tài khoản
CREATE TABLE tblTaiKhoan(
    id_gv INT IDENTITY(1,1) PRIMARY KEY,
    maGV VARCHAR(20) NOT NULL,
    tenGV NVARCHAR(50) NOT NULL,
    matkhau VARCHAR(50) NOT NULL
)

--nhập dữ liệu cho bảng sinh viên
INSERT INTO tblSinhVien(maSV, tenSV, id_lop, gioitinh,ngaysinh, quequan) VALUES
    ('1873404000000',N'Nguyễn Văn Một',1,1,'2000-01-08',N'Hà Nội'),
    ('1873404000010',N'Nguyễn Văn Hai',2,1,'2000-08-27',N'Hải Dương'),
    ('1873404000347',N'Nguyễn Văn Ba' ,3,1,'2000-08-26',N'Ninh Bình'),
    ('1873407834593',N'Nguyễn Văn Bốn',4,1,'2000-08-25',N'Hải Phòng'),
    ('1873404345897',N'Nguyễn Thị Năm',1,0,'2000-08-24',N'Quảng Ninh'),
    ('1873403479592',N'Nguyễn Thị Sáu',2,0,'2000-08-23',N'TP Hồ Chí Minh')

INSERT INTO tblSinhVien(maSV, tenSV, id_lop, gioitinh,ngaysinh, quequan, ghichu) VALUES
    ('1873408968984',N'Nguyễn Văn Bảy',3,1,'2000-08-22',N'Thái Nguyên',N'Ghi chú 1'),
    ('1873404568795',N'Nguyễn Văn Tám',4,1,'2000-08-21',N'Cao Bằng',N'Ghi chú 2'),
    ('1873406893475',N'Nguyễn Thị Chín',1,0,'2000-08-20',N'Nghệ An',N'Ghi chú 3'),
    ('1873408934758',N'Nguyễn Văn Mười',2,1,'2000-08-19',N'Hà Nội',N'Ghi chú 4')

SELECT maSV,tenSV,tenlop,gioitinh,ngaysinh,quequan FROM tblSinhVien, tblLop WHERE tblSinhVien.id_lop=tblLop.id_lop

-- Nhập dữ liệu cho bảng lớp
INSERT INTO tblLop(malop, khoa, tenlop, tenkhoa, heDT) VALUES
    ('4101', '56', 'CQ56/41.01', N'Hệ thống Thông tin Kinh Tế', 'Chính Quy'),
    ('4102', '56', 'CQ56/41.02', N'Hệ thống Thông tin Kinh Tế', 'Chính Quy'),
	('4103', '56', 'CQ56/41.03', N'Hệ thống Thông tin Kinh Tế', 'Chính Quy'),
	('4104', '56', 'CQ56/41.04', N'Hệ thống Thông tin Kinh Tế', 'Chính Quy')

-- nhập dữ liệu cho bảng tài khoản
INSERT INTO tblTaiKhoan VALUES
    ('gv12345',N'Giảng Viên Một','abc123')

SELECT tblSinhVien.id_lop,tenlop FROM tblLop,tblSinhVien WHERE tblLop.id_lop=tblSinhVien.id_lop AND tblSinhVien.maSV ='1873407834593'