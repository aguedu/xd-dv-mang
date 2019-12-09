<%@page import="DAO.ChuDeDAO"%>
<%@page import="Model.chude"%>
<%@page import="java.util.*"%>
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
	<h4 class="card-header">Thêm Bài Viết</h4>
	<div class="card-body">
	<form method="post" action="BaiViet_Them">
		<div class="form-group">
		        <label for="TieuDe">Tiêu Đề</label>
		        <input type="text" class="form-control" id="TieuDe" name="TieuDe" placeholder="" required />
                </div>
                <div class="form-group">
                	
                        <label for="IDChuDe">Chủ Đề</label>
                        <select class="form-control" id="IDChuDe" name="IDChuDe" required>
                                <option value="">-- Chọn Chủ Đề--</option>
                                        <%
                                        	List<chude> lh = ChuDeDAO.DanhSach(); 
                                                                                                                        	for(chude lh1 : lh) {
                                        %>
                                                <option value='<%=lh1.getID()%>'><%=lh1.getTenLoai()%></option>
                                       <%} %>
                        </select>
                </div>
                
                <div class="form-group">
                    <label for="NoiDung">Nội Dung</label>
                    <textarea class="form-control ckeditor" id="NoiDung" name="NoiDung" ></textarea>
                </div>
                <div class="form-group">
                    <label for="TomTat">Tóm Tắt</label>
                    <textarea class="form-control ckeditor" id="TomTat" name="TomTat" ></textarea>
                </div>
              
                <label for="HinhAnh">Ảnh bìa</label>
                <div class="input-group mb-3">
                        <input type="file" class="form-control" id="HinhAnh" name="HinhAnh" />
                </div>

			<button type="submit" class="btn btn-primary">Thêm vào CSDL</button>
		</form>
	</div>
</div>


</div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</body>
</html>