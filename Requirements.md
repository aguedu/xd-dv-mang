# Yêu cầu thiết kế hệ thống Trang tin tức
## 1. Cơ sở dữ liệu
### 1.1 Bảng **Người dùng** (tbl_nguoidung)
| STT | Tên trường | Kiểu DL | Độ dài | Null | Collocation | Extra |
|:--:|---|---|---|--:|---|---|
| 1 | __ID__ | int | 10 | Not null |  | auto_increment |
| 2 | HoVaTen | varchar | 50 | Not null | utf8_unicode_ci | |
| 3 | TenDangNhap | varchar | 50 | Not null | utf8_unicode_ci | |
| 4 | MatKhau | varchar | 100 | Not null | utf8_unicode_ci | |
| 5 | QuyenHan | tinyint | 1 | Not null | | |
| 6 | Khoa | tinyint | 1 | Not null | | |

*Chú thích:*
> **Quyền hạn**: `1` là **Admin**, `2` là **User**.

**Khóa**: `1` là **bị khóa**, `0` là **không khóa**.
 
### 1.1 Bảng **Chủ đề** (tbl_chude)
| STT | Tên trường | Kiểu DL | Độ dài | Null | Collocation | Extra |
|:--:|---|---|---|--:|---|---|
| 1 | __ID__ | int | 10 | Not null |  | auto_increment |
| 2 | TenChuDe | varchar | 100 | Not null | utf8_unicode_ci | |

### 1.1 Bảng **Bài viết** (tbl_baiviet)
| STT | Tên trường | Kiểu DL | Độ dài | Null | Collocation | Extra |
|:--:|---|---|---|--:|---|---|
| 1 | __ID__ | int | 10 | Not null |  | auto_increment |
| 2 | MaChuDe | int | 10 | Not null | | |
| 3 | MaNguoiDung | int | 10 | Not null | | |
| 4 | TieuDe | varchar | 255 | Not null | utf8_unicode_ci | |
| 5 | Tomtat | text | | Not null | utf8_unicode_ci | |
| 6 | NoiDung | text | | Not null | utf8_unicode_ci | |
| 7 | NgayDang | datetime | | Not null | utf8_unicode_ci | |
| 8 | LuotXem | int | 10 | Not null | | |
| 9 | KiemDuyet | tinyint | 1 | | | |

*Chú thích:*
> **Kiểm duyệt**: `1` là **Đã kiểm duyệt**, `0` là **Chưa kiểm duyệt**.

### 1.2 Tạo quan hệ (Relationships)
| STT | Tên ràng buộc | Tên bảng | Tên trường | Bảng tham chiếu | Trường tham chiếu |
|:--:|---|---|---|---|---|---|
| 1 | fk_baiviet_chude | tbl_baiviet | MaChuDe | tbl_chude | ID |
| 2 | fk_baiviet_nguoidung | tbl_baiviet | MaNguoiDung | tbl_nguoidung | ID |
*Lưu ý: __Để tạo được ràng buộc quan hệ thì phải lưu dưới dạng `InnoDB`__*

## 2. Mô hình nghiệp vụ
### 2.1 Đối với người dùng bên trong hệ thống
* Cung cấp gói chức năng quản lý thông tin người dùng.
* Cung cấp gói chức năng quản trị phân quyền người dùng.
* Cung cấp gói chức năng quản lý chủ đề.
* Cung cấp gói chức năng quản lý bài viết và kiểm duyệt bài viết.
* Cung cấp gói chức năng tìm kiếm và sắp xếp bài viết.
### 2.2 Đối với người dùng bên ngoài hệ thống
* Cung cấp gói chức năng đăng ký, đăng nhập/đăng xuất hệ thống.
* Cung cấp gói chức năng xem bài viết, lọc bài viết theo chủ đề, tìm kiếm bài viết (*đã kiểm duyệt*).
## 3. Mô tả hoạt động của hệ thống
### 3.1 Người dùng hệ thống (tác nhân)
* **Quản trị viên** và **Tổng biên tập** được phép toàn quyền quản trị người dùng, chủ đề, tin tức,...
* **Biên tập viên** được phép kiểm duyệt, quản lý nội dung bài viết.
* **Người dùng (cộng tác viên)** được phép đăng bài viết (*thông qua kiểm duyệt*), quản lý bài viết và thông tin của bản thân.
* **Người dùng khách** được phép đăng ký, đăng nhập vào hệ thống, xem bài viết (*đã kiểm duyệt*), tìm kiếm bài viết theo chủ đề hoặc nội dung liên quan.

> *Các người dùng khác kế thừa quyền hạn của người dùng khách và các quyền riêng biệt được liệt kê bên trên.*

### 3.2 Hoạt động của hệ thống (tính năng)
* **Đăng ký:** khi người dùng chưa có tài khoản để đăng nhập vào để sử dụng các tính năng bên trong của hệ thống. Người dùng đăng ký được mặc định kích hoạt tài khoản tự động.
* **Đăng nhập:** khi người dùng đã được cấp tài khoản, cần xác thực để đăng nhập vào bên trong hệ thống.
* **Tạo tài khoản:** khi người quản trị hoặc tổng biên tập tạo mới một tài khoản người dùng. Người tạo tài khoản quyết định khóa hoặc kích hoạt tài khoản trong quá trình tạo mới.
* **Quản lý thông tin người dùng:** bản thân mỗi người dùng có quyền truy cập và quản lý thông tin của bản thân. Người quản trị và tổng biên tập có quyền quản trị thông tin của tất cả tài khoản.
* **Quản trị phân quyền người dùng:** Người quản trị và tổng biên tập đồng thời có quyền thay đổi phân quyền, vô hiệu (khóa) hay kích hoạt (mở khóa) tài khoản người dùng. Chỉ có người quản trị mới có quyền vô hiệu (khóa) tài khoản tổng biên tập.
* **Quản lý chủ đề:** Người quản trị và tổng biên tập có quyền thêm, xóa, sửa các chủ đề.
* **Quản lý bài viết:** Người dùng có quyền quản lý bài viết của bản thân (*đăng bài mới phải chờ kiểm duyệt; sửa, xóa bài viết phải trải qua quá trình tái kiểm duyệt*).
* **Kiểm duyệt bài viết:** Người quản trị, tổng biên tập và biên tập viên có quyền chỉnh sửa và phê duyệt bài viết.
* **Xem bài viết (chi tiết bài viết):** tất cả mọi người ai cũng có quyền xem bài viết (*xem chi tiết bài viết*) đã kiểm duyệt. Người quản trị, tổng biên tập và biên tập viên có quyền xem tất cả các bài viết (*kể cả chưa kiểm duyệt*).
* **Lọc, tìm kiếm, liệt kê và sắp xếp bài viết:** mọi người có quyền thực hiện lọc bài viết theo chủ đề, tìm kiếm bài viết theo từ khóa (*các bài viết đã kiểm duyệt*). Người quản trị, tổng biên tập và biên tập viên có quyền lọc, tìm kiếm và liệt kê tất cả các bài viết (*kể cả chưa kiểm duyệt*), tùy chọn sắp xếp theo thứ tự nào để quản lý.
* **Lọc, tìm kiếm, liệt kê và sắp xếp thông tin người dùng:** Người quản trị và tổng biên tập có quyền lọc, tìm kiếm và liệt kê tất cả các thông tin người dùng, tùy chọn sắp xếp theo thứ tự nào để quản lý.

## 4. Thiết kế các trang
### 4.1 Người dùng
* Đăng ký.
* Đăng nhập.
* Đăng xuất.
* Hồ sơ cá nhân.
* Đổi mật khẩu.
* Quản lý người dùng *(Dành cho Admin)*.

### 4.2 Chủ đề *(Dành cho Admin)*
*	Hiển thị danh sách chủ đề.
*	Thêm chủ đề.
*	Cập nhật chủ đề.
*	Xóa chủ đề.

### 4.3 Bài viết
*	Hiển thị ra Trang chủ các tin đã được duyệt theo từng chủ đề. Mỗi chủ đề 5 tin.
*	Xem nhiều nhất.
*	Tin mới nhất.
*	Thêm mới bài viết.
*	Chỉnh sửa bài viết.
*	Xóa bài viết *(Dành cho Admin)*.
*	Kiểm duyệt bài viết *(Dành cho Admin)*.
*	Xem chi tiết bài viết *(Tăng lượt xem khi vào trang chi tiết)*.
*	Quản lý bài viết *(Dành cho Admin)*.
*	Quản lý bài viết *(Dành cho User)*.

## Thành viên thực hiện
| STT | Mã số sinh viên | Họ và tên lót | Tên | Lớp | Chuyên ngành |
|:--:|:--:|---|--|:--:|---|
| 1 | DTH166270 | Huynh Phúc Lâm Trường | Anh | DH17TH | Công nghệ thông tin |
| 2 | DTH166314 | Trần Minh | Lý | DH17TH | Công nghệ thông tin |
| 3 | DPM166393 | Nguyễn Hoàng Anh | Khoa | DH17PM | Kỹ thuật phần mềm |

## Thông tin tác giả

[Nguyễn Hoàng Anh Khoa](https://www.facebook.com/nguyenhoanganhkhoacntt)
