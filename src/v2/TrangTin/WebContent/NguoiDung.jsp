<%@page import="Model.nguoidung"%>
<%@page import="DAO.NguoiDungDAO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="/layouts/header.jsp"></jsp:include>
</head>
<body>
<div class="container">
<jsp:include page="/layouts/navbar.jsp"></jsp:include>
<div class="card">
	<h4 class="card-header">Danh sách người dùng</h4>
	<div class="card-body">
		<form method="post" action="NguoiDung_Sua">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th width="5%">ID</th>
                    <th width="65%">Tên người dùng</th>
                    <th width="10%">Tài khoản</th>
					<th width="10%">Quyền hạn</th>
				</tr>
			</thead>
			<tbody>
				<%int stt=1;
					List<nguoidung> ng = NguoiDungDAO.DanhSach();
					for(nguoidung ng1 : ng) {
				%>
						<tr>
							<td><input type="hidden" id="ID" name="ID" value="<%=ng1.getID()%>"/></td>
							<td><%=stt++ %></td>
							<td><%=ng1.getName() %></td>
                            <td><%=ng1.getUsername() %></td>
							<td class='text-right'><input type='text' class='form-control' id="quyenhan" name='quyenhan' value='<%=ng1.getQuyenhan() %>'/></td>
						</tr>
						<%} %>
			</tbody>
		</table>
		<button type="submit" class="btn btn-warning"><i class="fas fa-sync"></i>Sửa quyền hạn</button>
		</form>
	</div>
</div>


</div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</body>
</html>