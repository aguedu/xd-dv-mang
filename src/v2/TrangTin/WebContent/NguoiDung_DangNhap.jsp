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
   
        <h4 class="card-header">Đăng nhập</h4>
        <div class="card-body">
            <form action="NguoiDung_DangNhap" method="post" role="form">
                <div class="form-group">
                    <label for="TenDangNhap">Tên đăng nhập</label>
                    <input type="text" class="form-control" id="TenDangNhap" name="TenDangNhap" placeholder="" required />
                </div>
                <div class="form-group">
                    <label for="MatKhau">Mật khẩu</label>
                    <input type="password" class="form-control" id="MatKhau" name="MatKhau" placeholder="" required />
                </div>
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <button type="submit" class="btn btn-primary">Đăng nhập</button>
            </form>
        </div>
    </div>

</div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</body>
</html>