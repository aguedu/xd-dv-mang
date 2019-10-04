# HƯỚNG DẪN CÀI ĐẶT TỪNG BƯỚC
## Cài đặt
### Cài đặt máy ảo và hệ điều hành

1. Cài đặt chương trình máy ảo VMWare Workstation
2. Tạo máy ảo hoặc sử dụng tập tin máy ảo dựng sẵn (vmx)
3. Cài đặt hệ điều hành Linux Ubuntu Mate (*nếu dùng tập tin máy ảo thì không cần thực hiện bước này*).

### Cài đặt công cụ và môi trường

Trước khi tiến hành các cài đặt bên dưới, cần đảm bảo hệ điều hành có thể kết nối đến máy chủ quản lý các gói cài đặt.
Do phiên bản Ubutun-Mate đã ngừng hỗ trợ dài hạn (End-of-Life), nên chúng ta cần chuyển các đường dẫn nguồn từ `sercurity.ubuntu.com` và `archive.ubuntu.com` sang máy chủ dự phòng (unsecure) tại địa chỉ `old-releases.ubutu.com` và tương tự `old-releases.canonical.com` cho các gói được quản lý tại máy chủ canonical.

Để thực hiện thao tác nhanh mà không cần chỉnh sửa thủ công tập tin cấu hình `/etc/apt/sources.list`, ta sử dụng lệnh:
`sudo sed -i.bak -r 's/(archive|security|us.archive).ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list`

_*Lệnh bên trên đã bao gồm sửa lỗi cho máy chủ tại US. Chuyển tất cả về `old-releases.ubuntu.org`, nếu sử dụng máy chủ vùng khác, vui lòng sửa mã quốc gia tại `us` thành mã quốc gia cần sửa._

Chi tiết xem tại hướng dẫn: [ubuntu-eol.md](https://github.com/aguedu/xd-dv-mang/blob/master/ubtuntu-eol.md)

1. Cài đặt Apache2

Sử dụng lệnh `sudo apt-get install apache2`

Để kiểm tra việc cài đặt apache2 và phiên bản, ta dùng lệnh: `apache2 -v`
> Ví dụ, kết quả trả về là:
 `Server version: Apache/2.4.10 (Ubuntu)`
 `Server built:   Jul 24 2015 17:25:17` là đã cài đặt thành công Apache phiên bản 2.4.10.

2. Tải và cài đặt Apache-Tomcat

Tải Apache-Tomcat tại địa chỉ: https://archive.apache.org/dist/tomcat/

3. Tải và cài đặt mySql-server và mySql-connector-java

Để tải và cài đặt mysql-server, dùng lệnh: `sudo apt-get install mysql-server`
> Trong quá trình cài đặt, nếu có thông báo:
`After this operation, 150 MB of additional disk space will be used.
Do you want to continue? [Y/n] ` 
Điều này có nghĩa là cần xác nhận khoản trống để cài đặt mysql-server. Chúng ta gõ `Y` và `Enter` để tiếp tục cài đặt.
Sau khi cài đặt mysql-server xong, chương trình sẽ đòi hỏi chúng ta đặt mật khẩu cho mysql-server. Chúng ta nhập mật khẩu là `user`, lặp lại một lần nữa. Tiếp theo, mysql-server sẽ được cấu hình tự động.

Tải mySql-server (thủ công) tại địa chỉ: https://downloads.mysql.com/archives/community/

Để kiểm tra việc cài đặt mysql-server và phiên bản, ta dùng lệnh: `mysql --version`
> Ví dụ, kết quả trả về là: `mysql  Ver 14.14 Distrib 5.6.28, for debian-linux-gnu (i686) using  EditLine wrapper` là đã cài đặt thành công mysql phiên bản 14.14 (5.6.28)

Tải mySql-connector-java tại địa chỉ:  https://downloads.mysql.com/archives/c-j/

4. Tải và cài đặt phpMyAdmin

Để tải và cài đặt mysql-server, dùng lệnh: `sudo apt-get install phpmyadmin`
> Trong quá trình cài đặt, nếu có thông báo:
`After this operation, 69.0 MB of additional disk space will be used.
Do you want to continue? [Y/n]`
Điều này có nghĩa là cần xác nhận khoản trống để cài đặt phpmyadmin. Chúng ta gõ `Y` và `Enter` để tiếp tục cài đặt.

5. Tải và cài đặt JRE

Đăng ký tài khoản Oracle tại địa chỉ: https://profile.oracle.com/myprofile/account/create-account.jspx

Tải JRE tại địa chỉ: https://www.oracle.com/technetwork/java/javase/downloads/index.html

5. Tải và cài đặt Eclipse

Do Eclipse Mars (thế hệ 2, phiên bản 4.5) không còn được hỗ trợ nữa. Vì vậy, mình sử dụng bản Eclipse Neon (thế hệ 3).
Tải Eclipse Neon (thế hệ 3, phiên bản 4.6) tại địa chỉ: https://www.eclipse.org/downloads/packages/release/neon/3

# Thông tin tác giả

[Nguyễn Hoàng Anh Khoa](https://www.facebook.com/nguyenhoanganhkhoacntt)

# Tài liệu tham khảo

https://gist.github.com/dergachev/f5da514802fcbbb441a1
