<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Classes.*" %>
<%@ page import="Models.*" %>
<% ChuDe cdEdit = (ChuDe)request.getAttribute("cd"); %>
<%@ include file="../layouts/viewbegin.jsp" %>
	<div class="container">
		<%@ include file="../layouts/navbar.jsp" %>
		<div class="card mt-3 shadow-sm">
			<h5 class="card-header alert-warning">Cập nhật chủ đề</h5>
			<div class="card-body">
				<% if(request.getAttribute("updateState") != null && request.getAttribute("updateState").equals("success")){ %>
				<div class="alert alert-success alert-dismissible fade show" role="alert">
				  <span>Cập nhật chủ đề thành công!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<% } // End if error %>
				<form action="ChuDe" method="post">
				  <div class="form-group">
				    <label for="txtTenChuDe">Tên chủ đề</label>
				    <input type="text" class="form-control" id="txtTenChuDe" name="txtTenChuDe" aria-describedby="txtTenChuDeHelp" value="<%= cdEdit.getTenchude() %>" required>
				    <small id="txtTenChuDeHelp" class="form-text text-muted d-none">Tên chủ đề không hợp lệ.</small>
				  </div>
				  <input type="hidden" name="id" value="<%= cdEdit.getId() %>"/>
				  <input type="hidden" name="do" value="CapNhat"/>
				  <button type="submit" class="btn btn-success">Lưu</button> <button type="reset" class="btn btn-secondary">Xóa</button>
				</form>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
<%@ include file="../layouts/javascript.jsp" %>
<%@ include file="../layouts/viewend.jsp" %>