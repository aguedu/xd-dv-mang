<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layouts/viewbegin.jsp" %>
	<div class="container">
		<%@ include file="../layouts/navbar.jsp" %>
		
		<div class="card mt-3 shadow-sm">
			<h5 class="card-header alert-warning">Đăng nhập</h5>
			<div class="card-body">
				<% if(request.getAttribute("loginState") != null && request.getAttribute("loginState").equals("error")){ %>
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
				  <span>Đăng nhập thất bại. Vui lòng kiểm tra lại thông tin!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<% } // End if error %>
				<form action="DangNhap" method="post">
				  <div class="form-group">
				    <label for="txtTenDangNhap">Tên đăng nhập</label>
				    <input type="text" class="form-control" id="txtTenDangNhap" name="txtTenDangNhap" aria-describedby="TenDangNhapHelp" value="<%= (request.getAttribute("oldUsername") != null) ? request.getAttribute("oldUsername") : "" %>" required>
				    <small id="TenDangNhapHelp" class="form-text text-muted d-none">Tên đăng nhập không hợp lệ.</small>
				  </div>
				  <div class="form-group">
				    <label for="txtMatKhau">Mật khẩu</label>
				    <input type="password" class="form-control" id="txtMatKhau" name="txtMatKhau">
				  </div>
				  <input type="hidden" name="do" value="dangnhap"/>
				  <button type="submit" class="btn btn-success">Đăng nhập</button>
				</form>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
<%@ include file="../layouts/javascript.jsp" %>
<%@ include file="../layouts/viewend.jsp" %>