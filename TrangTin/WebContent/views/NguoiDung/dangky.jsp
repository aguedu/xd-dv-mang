<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../layouts/viewbegin.jsp" %>
	<div class="container">
		<%@ include file="../layouts/navbar.jsp" %>
		<% // Kiểm tra đối tượng thực hiện đăng ký
		String header = "Đăng ký";
		String action = "DangKy"; // Gán mặc định là người dùng khách
		boolean isAdmin = false; // Gán mặc định không cho chọn quyền hạn
		if(request.getSession().getAttribute("QuyenHan") != null && (Integer)request.getSession().getAttribute("QuyenHan") == 1)
		{	// Kiểm tra quyền, nếu là Admin thì action đưa đến trang thêm người dùng
			// Đồng thời, thêm lựa chọn quyền hạn cho tài khoản mới
			header = "Thêm người dùng";
			action = "NguoiDung?Chon=Them";
			isAdmin = true;
			// Ngược  lại, là khách chưa có tài khoản, action đưa đến trang đăng ký
		} // End if QuyenHan == 1
		%>
		<div class="card mt-3 shadow-sm">
			<h5 class="card-header alert-warning"><%= header %></h5>
			<div class="card-body">
				<%	String registerState = (String)request.getAttribute("registerState"); 
					if(registerState != null){ 
						if(registerState.equals("success")){ %>
				<div class="alert alert-success alert-dismissible fade show" role="alert">
				  <span>Đăng ký tài khoản thành công!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<% }else{ %>
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
				  <span>Đăng ký tài khoản thất bại. Vui lòng thử lại!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<% } // End if error
				} // End if null %>
				<form action="<%= action %>" method="post">
				<% if(isAdmin){ %>
					<div class="form-group">
					    <label for="QuyenHan">Quyền hạn</label>
						<select class="custom-select" id="QuyenHan" name="selectQuyenHan" required>
							<option value="2" selected>Thành viên</option>
							<option value="1">Quản trị viên</option>
						</select>
						<input type="hidden" name="do" value="Them"/>
				 	</div>	
				<% } // End if chonQuyen %>
				  <div class="form-group">
				    <label for="txtHoVaTen">Họ và tên</label>
				    <input type="text" class="form-control" id="txtHoVaTen" name="txtHoVaTen" aria-describedby="txtHoVaTenHelp" required>
				    <small id="txtHoVaTenHelp" class="form-text text-muted d-none">Họ và tên không hợp lệ.</small>
				  </div>	
				  <div class="form-group">
				    <label for="txtTenDangNhap">Tên đăng nhập</label>
				    <input type="text" class="form-control" id="txtTenDangNhap" name="txtTenDangNhap" aria-describedby="txtTenDangNhapHelp" required>
				    <small id="txtTenDangNhapHelp" class="form-text text-muted d-none">Tên đăng nhập không hợp lệ.</small>
				  </div>
				  <div class="form-group">
				    <label for="txtMatKhau">Mật khẩu</label>
				    <input type="password" class="form-control" id="txtMatKhau" name="txtMatKhau" required>
				  </div>
				  <div class="form-group">
				    <label for="txtXacNhanMatKhau">Xác nhận mật khẩu</label>
				    <input type="password" class="form-control" id="txtXacNhanMatKhau" name="txtXacNhanMatKhau" required>
				  </div>
				  <input type="hidden" name="do" value="dangky"/>
				  <button type="submit" class="btn btn-success">Đăng ký</button> <button type="reset" class="btn">Xóa</button>  
				</form>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
<%@ include file="../layouts/javascript.jsp" %>
<%@ include file="../layouts/viewend.jsp" %>