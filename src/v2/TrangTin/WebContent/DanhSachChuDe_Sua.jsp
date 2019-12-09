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
	<%
		int ID = Integer.parseInt(request.getParameter("ID"));
		chude lh =  ChuDeDAO.DanhSachTheoID(ID);
	%>
    <h4 class="card-header">Sửa Chủ Đề</h4>
    <div class="card-body">
	  </div>
    <form action="ChuDe_Sua" method="POST">
        <input type="hidden" id="ID" name="ID" value="<%=lh.getID() %>" />
            <div class="form-group">
            <label for="TenLoai">Tên Chủ Đề</label>
            <input type="text" class="form-control" id="TenLoai" name="TenLoai" value="<%=lh.getTenLoai() %>" required />
            </div>
            <button type="submit" class="btn btn-primary">Cập nhật</button>
    </form>
  </div>
 </div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</body>
</html>