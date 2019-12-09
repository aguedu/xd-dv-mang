<%@page import="java.util.*"%>
<%@page import="DAO.ChuDeDAO"%>
<%@page import="Model.chude"%>
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
		<h4 class="card-header">Danh sách chủ đề</h4>
		<div class="card-body">
			<p><a class="btn btn-primary" href="/TrangTin/DanhSachChuDe_Them.jsp" role="button">Thêm chủ đề</a></p>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th width="5%">ID</th>
						<th width="85%">Tên chủ đề</th>
						<th width="5%">Sửa</th>
						<th width="5%">Xóa</th>
					</tr>
				</thead>
				<tbody>
						<%
							List<chude> lh =  ChuDeDAO.DanhSach();
														int stt=1;
														for(chude lh1 : lh) {
						%>
						<tr>
							<td> <%=stt++ %></td>
							<td><%=lh1.getTenLoai()%></td>
							<td class='text-center'><a href="/TrangTin/DanhSachChuDe_Sua.jsp?ID=<%=lh1.getID() %>">Sửa</a></td>
                        	<td class='text-center'><a onclick='return confirm("Bạn có muốn xóa chủ đề <%=lh1.getTenLoai() %>?")' href="ChuDe_Xoa?ID=<%=lh1.getID() %>">Xóa</a></td>
						</tr>
						<% } %>
	                    
				</tbody>
			</table>
		</div>
	</div>
</div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</body>
</html>