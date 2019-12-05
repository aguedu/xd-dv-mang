<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Classes.*" %>
<%@ page import="Models.*" %>
<% NguoiDung nd = new NguoiDungModel().getNguoidungByID((Integer)request.getSession().getAttribute("IDNguoiDung")); %>
<%@ include file="../layouts/viewbegin.jsp" %>
	<div class="container">
		<%@ include file="../layouts/navbar.jsp" %>
		
		<div class="card mt-3 shadow-sm">
			<h5 class="card-header alert-warning">Thay đổi thông tin tài khoản</h5>
			<div class="card-body">
				<%	String resetpasswordState = (String)request.getAttribute("resetpasswordState"); 
					if(resetpasswordState != null){ 
						if(resetpasswordState.equals("success")){ %>
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
				<form id="FormDoiMatKhau" action="NguoiDung?Chon=DoiMatKhau" method="post">
				  <div class="form-group">
				    <label for="txtTenDangNhap">Tên đăng nhập</label>
				    <input type="text" class="form-control" id="txtTenDangNhap" name="txtTenDangNhap" aria-describedby="txtTenDangNhapHelp" value="<%= nd.getTendangnhap() %>" readonly>
				  </div>
				  <div class="form-group">
				    <label for="txtMatKhauCu">Mật khẩu cũ</label>
				    <input type="password" class="form-control" id="txtMatKhauCu" name="txtMatKhauCu" oninput="$('#txtMatKhauCuHelp').addClass('d-none');" required>
				    <small id="txtMatKhauCuHelp" class="form-text text-danger d-none">Bắt buộc phải nhập đúng mật khẩu cũ.</small>
				  </div>
				  <div class="form-group">
				    <label for="txtMatKhauMoi">Mật khẩu mới</label>
				    <input type="password" class="form-control" id="txtMatKhauMoi" name="txtMatKhauMoi" oninput="$('#txtMatKhauMoiHelp').addClass('d-none');$('#txtXacNhanMatKhauHelp').addClass('d-none');" required>
				    <small id="txtMatKhauMoiHelp" class="txttxtXacNhanMatKhauHelp form-text text-danger d-none">Mật khẩu mới không hợp lệ.</small>
				  </div>
				  <div class="form-group">
				    <label for="txtXacNhanMatKhau">Xác nhận mật khẩu</label>
				    <input type="password" class="form-control" id="txtXacNhanMatKhau" name="txtXacNhanMatKhau" oninput="$('#txtXacNhanMatKhauHelp').addClass('d-none');" required>
				    <small id="txtXacNhanMatKhauHelp" class="txttxtXacNhanMatKhauHelp form-text text-danger d-none">Xác nhận mật khẩu không hợp lệ.</small>
				  </div>
				  <input type="hidden" name="do" value="DoiMatKhau"/>
				  <button type="submit" class="btn btn-success" onclick="doChange()">Cập nhật</button>  
				</form>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
<%@ include file="../layouts/javascript.jsp" %>
<script>
	function doChange(){
		if($.trim($("#txtMatKhauCu").val()).length === 0){
			$("#txtMatKhauCuHelp").removeClass("d-none");
		}
		if($.trim($("#txtMatKhauMoi").val()).length === 0){
			$("#txtMatKhauMoiHelp").removeClass("d-none");
		}
		if($.trim($("#txtXacNhanMatKhau").val()).length === 0){
			$("#txtXacNhanMatKhauHelp").removeClass("d-none");
		}
		if($("#txtMatKhauMoi").val() !== $("#txtXacNhanMatKhau").val()){
			$("#txtXacNhanMatKhau").val("");
			$("#txtXacNhanMatKhauHelp").text("Xác nhận mật khẩu không trùng khớp.");
			$("#txtXacNhanMatKhauHelp").removeClass("d-none");
		}
	}
</script>
<%@ include file="../layouts/viewend.jsp" %>