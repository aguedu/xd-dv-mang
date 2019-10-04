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

# Thông tin tác giả

[Nguyễn Hoàng Anh Khoa](https://www.facebook.com/nguyenhoanganhkhoacntt)

# Tài liệu tham khảo

https://gist.github.com/dergachev/f5da514802fcbbb441a1
