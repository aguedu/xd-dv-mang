<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../layouts/header.jsp" %>
<body class="alert-success">
	<div class="container">
		<%@ include file="../layouts/navbar.jsp" %>
		
		<div class="card mt-3 shadow-sm">
			<h5 class="card-header alert-warning">Hồ sơ cá nhân</h5>
			<div class="card-body">
				<form action="NguoiDung" method="post">
				  <div class="form-group">
				    <label for="txtHoVaTen">Họ và tên</label>
				    <input type="text" class="form-control" id="txtHoVaTen" name="txtHoVaTen" aria-describedby="txtHoVaTenHelp">
				    <small id="txtHoVaTenHelp" class="form-text text-muted d-none">Tên đăng nhập không hợp lệ.</small>
				  </div>	
				  <div class="form-group">
				    <label for="txtTenDangNhap">Tên đăng nhập</label>
				    <input type="text" class="form-control" id="txtTenDangNhap" name="txtTenDangNhap" aria-describedby="txtTenDangNhapHelp" readonly>
				    <small id="txtTenDangNhapHelp" class="form-text text-muted d-none">Tên đăng nhập không hợp lệ.</small>
				  </div>
				  <div class="form-group">
				    <label for="txtMatKhau">Mật khẩu</label>
				    <input type="password" class="form-control" id="txtMatKhau" name="txtMatKhau">
				  </div>
				  <div class="form-group">
				    <label for="txtXacNhanMatKhau">Mật khẩu</label>
				    <input type="password" class="form-control" id="txtXacNhanMatKhau" name="txtXacNhanMatKhau">
				  </div>
				  <input type="hidden" name="id" value="-1"/>
				  <input type="hidden" name="do" value="capnhat"/>
				  <button type="submit" class="btn btn-success">Cập nhật</button>  
				</form>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
</body>
<%@ include file="../layouts/javascript.jsp" %>
</html>