
<%@page import="DAO.ChuDeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="DAO.BaiVietDAO"%>
<%@page import="java.util.*"%>
<%@page import="Model.baiviet"%>
<%@page import="Model.chude"%>

<!DOCTYPE html>
<html>
<head>
 <jsp:include page="/layouts/header.jsp"></jsp:include>
</head>
<body>
<div class="container">
<jsp:include page="/layouts/navbar.jsp"></jsp:include>
<div class="card">
	<h4 class="card-header">Danh sách Bài Viết</h4>
	<div class="card-body">
		<p><a class="btn btn-primary" href="/TrangTin/BaiViet_Them.jsp" role="button">Thêm Bài Viết</a></p>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th width="60%">Tên Bài Viết</th>
					<th width="20%">Chủ Đề</th>
					<th width="10%">Sửa</th>
					<th width="10%">Xóa</th>
				</tr>
			</thead>
			<tbody>
				<%
					List<baiviet> hh = BaiVietDAO.DanhSach();
														for(baiviet hh1 : hh) {
				%>
						<tr>
                            <th><img width="50px" src="images/<%=hh1.getHinhAnh()%>"/><%=hh1.getTieuDe()%></th>
                            <%
                            	chude lh = ChuDeDAO.DanhSachTheoID(hh1.getIDChuDe());
                            %>
                            <td><%=lh.getTenLoai() %></td>
                       
                            <td class='text-center'><a href="/TrangTin/BaiViet_Sua.jsp?ID=<%=hh1.getID() %>">Sửa</a></td>
                            <td class='text-center'><a onclick='return confirm("Bạn có muốn xóa Bài Viết <%=hh1.getTieuDe() %>?")' href='BaiViet_Xoa?ID=<%=hh1.getID() %>'>Xóa</a></td>
                        </tr>
                        <%} %>
			</tbody>
		</table>
	</div>
</div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</div>
</body>
</html>