<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/layouts/header.jsp"></jsp:include></head>
<body>
<div class="container">
	<jsp:include page="/layouts/navbar.jsp"></jsp:include>
	<div class="card">
		<h4 class="card-header">Thêm Chủ Đề</h4>
		<div class="card-body">
			<form action="ChuDe_Them" method="post">
				<div class="form-group">
					<label for="TenLoai">Tên Chủ Đề</label>
					<input type="text" class="form-control" id="TenLoai" name="TenLoai" placeholder="" required />
				</div>
				<button type="submit" class="btn btn-primary">Thêm vào CSDL</button>
			</form>
		</div>
	</div>
</div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</body>
</html>