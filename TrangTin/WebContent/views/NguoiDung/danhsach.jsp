<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Classes.*" %>
<%@ page import="Models.*" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<%@ include file="../layouts/header.jsp" %>
<body class="alert-success">
	<div class="container">
		<%@ include file="../layouts/navbar.jsp" %>
		
		<div class="card mt-3 shadow-sm">
			<h5 class="card-header alert-warning">Danh sách người dùng</h5>
			<div class="card-body">
				<p>Đang cập nhật danh sách người dùng</p>
				<% ArrayList<NguoiDung> lstNguoiDung = new NguoiDungModel().getDSNguoidung();
					for(NguoiDung nd : lstNguoiDung){ %>
					<p>Test: <%= nd.getHovaten() %></p>
				<% } // End for %>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
</body>
<%@ include file="../layouts/javascript.jsp" %>
</html>