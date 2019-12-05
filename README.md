# Xây dựng Dịch vụ mạng - Trang tin tức

# Thông tin môn học

Mã học phần: **CON913**

Tên học phần: **Xây dựng dịch vụ mạng**

Giảng viên: **Châu Ngân Khánh**

**Khoa Công nghệ thông tin, Trường Đại học An Giang**

# Thành viên thực hiện
| STT | Mã số sinh viên | Họ và tên lót | Tên | Lớp | Chuyên ngành |
|:--:|:--:|---|--|:--:|---|
| 1 | DTH166270 | Huỳnh Phúc Lâm Trường | Anh | DH17TH | Công nghệ thông tin |
| 2 | DTH166314 | Trần Minh | Lý | DH17TH | Công nghệ thông tin |
| 3 | DPM166393 | Nguyễn Hoàng Anh | Khoa | DH17PM | Kỹ thuật phần mềm |

# Nội dung thực hiện
## 1. Lý do chọn đề tài

Đồng hành cùng sự phát triển của khoa học - công nghệ, lĩnh vực công nghệ thông tin cần được xây dựng phục vụ xã hội nhanh chóng và hiệu quả.

Do nhu cầu cập nhật thông tin đó, nhóm xây dựng dịch vụ mạng quản lý tin tức điện tử trực tuyến làm công cụ cho các nhà biên tập và độc giả.
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

# Thông tin kỹ thuật
* Máy chủ: Apache Tomcat v7.0, openjdk-6-jdk, openjdk-6-jre, mysql server v14.14 Distrib 5.6.28 on Ubuntu MATE Desktop Environment 1.8.2
* Ngôn ngữ: Java, HTML, CSS, javascript
* Công nghệ: Servlet, JSP
* Thư viện: mysql-connector-java-3.0.17-ga-bin, java, javax
* Công cụ: Eclipse, phpMyAdmin, Git
