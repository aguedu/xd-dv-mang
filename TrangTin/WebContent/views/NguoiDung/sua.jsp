<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Classes.*" %>
<%@ page import="Models.*" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>
<% NguoiDung nd = (NguoiDung)request.getAttribute("nd"); 
	/* NguoiDung đã được gán vào biến nd trên controller nên không cần khai báo lại 
	TUYỆT ĐỐI KHÔNG ĐƯỢC dispatch view này khi chưa khai báo biến nd */ %>
<%@ include file="../layouts/viewbegin.jsp" %>
	<div class="container">
		<%@ include file="../layouts/navbar.jsp" %>
		
		<div class="card mt-3 shadow-sm">
			<h5 class="card-header alert-warning">Hồ sơ cá nhân</h5>
			<div class="card-body">
				<%	String updateState = (String)request.getAttribute("updateState"); 
					if(updateState != null){ 
						if(updateState.equals("success")){ %>
				<div class="alert alert-success alert-dismissible fade show" role="alert">
				  <span>Cập nhật thông tin thành công!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<% }else{ %>
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
				  <span>Cập nhật thông tin thất bại. Vui lòng thử lại!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<% } // End if error
				} // End if null %>
				<form action="NguoiDung" method="post">
				  <div class="form-group">
				    <label for="txtHoVaTen">Họ và tên</label>
				    <input type="text" class="form-control" id="txtHoVaTen" name="txtHoVaTen" aria-describedby="txtHoVaTenHelp" value="<%= nd.getHovaten() %>" required>
				    <small id="txtHoVaTenHelp" class="form-text text-muted d-none">Họ và tên không hợp lệ.</small>
				  </div>
				  <div class="form-group">
				  <label for="QuyenHan">Quyền hạn</label>
					<select class="custom-select" id="QuyenHan" name="selectQuyenHan" required>
						<% if(nd.getQuyenhan()==1) {%>
						<option value="1" selected>Quản trị viên</option>
						<option value="2">Thành viên</option>
						<% } else { %>
						<option value="1">Quản trị viên</option>
						<option value="2" selected>Thành viên</option>
						<% } // End else if %>
					</select>
				  </div>	
				  <div class="form-group">
				    <label for="txtTenDangNhap">Tên đăng nhập</label>
				    <input type="text" class="form-control" id="txtTenDangNhap" name="txtTenDangNhap" aria-describedby="txtTenDangNhapHelp" value="<%= nd.getTendangnhap() %>" readonly>
				    <small id="txtTenDangNhapHelp" class="form-text text-muted d-none">Tên đăng nhập không hợp lệ.</small>
				  </div>
				  <div class="form-group">
				    <label for="txtMatKhau">Mật khẩu</label>
				    <input type="password" class="form-control" id="txtMatKhau" name="txtMatKhau">
				  </div>
				  <div class="form-group">
				    <label for="txtXacNhanMatKhau">Xác nhận mật khẩu</label>
				    <input type="password" class="form-control" id="txtXacNhanMatKhau" name="txtXacNhanMatKhau">
				  </div>
				  <input type="hidden" name="khoa" value="<%= nd.getKhoa() %>"/>
				  <input type="hidden" name="id" value="<%= nd.getId() %>"/>
				  <input type="hidden" name="do" value="CapNhat"/>
				  <button type="submit" class="btn btn-success">Cập nhật</button>  
				</form>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
<%@ include file="../layouts/javascript.jsp" %>
<%@ include file="../layouts/viewend.jsp" %>