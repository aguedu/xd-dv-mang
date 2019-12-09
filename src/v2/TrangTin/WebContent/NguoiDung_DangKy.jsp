<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/layouts/header.jsp"></jsp:include>
</head>
<body>
<div class="container">
<jsp:include page="/layouts/navbar.jsp"></jsp:include>
<div class="card">
   
    <h4 class="card-header">Đăng ký khách hàng</h4>
    <div class="card-body">
        <form action="NguoiDung_Them" method="post">
                <input type="hidden" name="_token" value="{{csrf_token()}}" />
                <div class="form-group">
                    <label for="HoVaTen">Họ và tên</label>
                    <input type="text" class="form-control" id="HoVaTen" name="HoVaTen" placeholder="" required />
                </div>
                <div class="form-group">
                    <label for="TenDangNhap">Tên đăng nhập</label>
                    <input type="text" class="form-control" id="TenDangNhap" name="TenDangNhap" placeholder="" required />
                </div>
                <div class="form-group">
                    <label for="password">Mật khẩu</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="" required />
                </div>
                
                <button type="submit" class="btn btn-primary">Đăng ký</button>
        </form>
    </div>
</div>
</div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</body>
</html>