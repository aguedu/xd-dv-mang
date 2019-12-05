<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@ include file="../layouts/header.jsp" %>
<body class="alert-success">
	<div class="container">
		<%@ include file="../layouts/navbar.jsp" %>
		
		<div class="card mt-3 shadow-sm">
			<h5 class="card-header alert-warning">Xem nhiều nhất</h5>
			<div class="card-body">
				<ul class="list-unstyled">
				 <p>Danh sách các bài viết được xem nhiều nhất</p>
				</ul>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
</body>
<%@ include file="../layouts/javascript.jsp" %>
</html>