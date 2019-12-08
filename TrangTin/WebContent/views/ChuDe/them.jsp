<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../layouts/viewbegin.jsp" %>
	<div class="container">
		<%@ include file="../layouts/navbar.jsp" %>
		
		<div class="card mt-3 shadow-sm">
			<h5 class="card-header alert-warning">Thêm chủ đề</h5>
			<div class="card-body">
				<% if(request.getAttribute("insertState") != null && request.getAttribute("insertState").equals("error")){ %>
				<div class="alert alert-danger alert-dismissible fade show" role="alert">
				  <span>Thêm chủ đề thắt bại!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<% } // End if error %>
				<form action="ChuDe?Chon=Them" method="post">
				  <div class="form-group">
				    <label for="txtTenChuDe">Tên chủ đề</label>
				    <input type="text" class="form-control" id="txtTenChuDe" name="txtTenChuDe" aria-describedby="TenChuDeHelp" value="<%= (request.getAttribute("oldTenChuDe") != null) ? request.getAttribute("oldTenChuDe") : "" %>" required>
				    <small id="TenDangNhapHelp" class="form-text text-muted d-none">Tên chủ đề không hợp lệ.</small>
				  </div>
				  <input type="hidden" name="do" value="Them"/>
				  <button type="submit" class="btn btn-success">Lưu</button> <button type="reset" class="btn btn-secondary">Xóa</button>
				</form>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
<%@ include file="../layouts/javascript.jsp" %>
<%@ include file="../layouts/viewend.jsp" %>