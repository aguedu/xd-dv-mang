<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Classes.*" %>
<%@ page import="Models.*" %>
<% NguoiDung nd = new NguoiDungModel().getNguoidungByID((Integer)request.getSession().getAttribute("IDNguoiDung")); %>
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
				    <label for="txtTenDangNhap">Tên đăng nhập</label>
				    <input type="text" class="form-control" id="txtTenDangNhap" name="txtTenDangNhap" aria-describedby="txtTenDangNhapHelp" value="<%= nd.getTendangnhap() %>" readonly>
				    <small id="txtTenDangNhapHelp" class="form-text text-muted d-none">Tên đăng nhập không hợp lệ.</small>
				  </div>
				  <div class="form-group">
				    <label for="txtMatKhauCu">Mật khẩu cũ</label>
				    <input type="password" class="form-control" id="txtMatKhauCu" name="txtMatKhauCu">
				  </div>
				  <div class="form-group">
				    <label for="txtMatKhauMoi">Mật khẩu mới</label>
				    <input type="password" class="form-control" id="txtMatKhauMoi" name="txtMatKhauMoi">
				  </div>
				  <div class="form-group">
				    <label for="txtXacNhanMatKhau">Xác nhận mật khẩu</label>
				    <input type="password" class="form-control" id="txtXacNhanMatKhau" name="txtXacNhanMatKhau">
				  </div>
				  <input type="hidden" name="do" value="DoiMatKhau"/>
				  <button type="submit" class="btn btn-success">Cập nhật</button>  
				</form>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
</body>
<%@ include file="../layouts/javascript.jsp" %>
</html>