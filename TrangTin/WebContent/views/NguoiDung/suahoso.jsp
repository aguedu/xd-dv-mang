<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Classes.*" %>
<%@ page import="Models.*" %>
<% NguoiDung nd = new NguoiDungModel().getNguoidungByID((Integer)request.getSession().getAttribute("IDNguoiDung")); %>
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
				<form action="NguoiDung?Chon=HoSoCaNhan" method="post">
				  <div class="form-group">
				    <label for="txtHoVaTen">Họ và tên</label>
				    <input type="text" class="form-control" id="txtHoVaTen" name="txtHoVaTen" aria-describedby="txtHoVaTenHelp" value="<%= nd.getHovaten() %>" oninput="$('#txtHoVaTenHelp').addClass('d-none');" required>
				    <small id="txtHoVaTenHelp" class="form-text text-danger d-none">Họ và tên không hợp lệ.</small>
				  </div>	
				  <div class="form-group">
				    <label for="txtTenDangNhap">Tên đăng nhập</label>
				    <input type="text" class="form-control" id="txtTenDangNhap" name="txtTenDangNhap" aria-describedby="txtTenDangNhapHelp" value="<%= nd.getTendangnhap() %>" readonly>
				  </div>
				  <div class="form-group">
				    <label for="txtXacNhanMatKhau">Xác nhận mật khẩu</label>
				    <input type="password" class="form-control" id="txtXacNhanMatKhau" name="txtXacNhanMatKhau" oninput="$('#txtXacNhanMatKhauHelp').addClass('d-none');" required>
				    <small id="txtXacNhanMatKhauHelp" class="form-text text-danger d-none">Xác nhận mật khẩu không hợp lệ.</small>
				  </div>
				  <input type="hidden" name="do" value="CapNhatHoSo"/>
				  <button type="submit" class="btn btn-success" onclick="doChange()">Cập nhật</button>  
				</form>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
<%@ include file="../layouts/javascript.jsp" %>
<script>
	function doChange(){
		if($.trim($("#txtXacNhanMatKhau").val()).length === 0){
			$("#txtXacNhanMatKhauHelp").removeClass("d-none");
		}
		if($.trim($("#txtHoVaTen").val()).length === 0){
			$("#txtHoVaTenHelp").removeClass("d-none");
		}
	}
</script>
<%@ include file="../layouts/viewend.jsp" %>