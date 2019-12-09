<%@page import="DAO.BaiVietDAO"%>
<%@page import="Model.baiviet"%>
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
    <h4 class="card-header">Cập nhật Hàng</h4>
    <div class="card-body">
   
	  </div>
    <form action="BaiViet_Sua" method="post" >
    	<% int ID = Integer.parseInt(request.getParameter("ID"));
		baiviet hh =  BaiVietDAO.DanhSachTheoID(ID);
		%>
        <input type="hidden" id="ID" name="ID" value="<%=hh.getID() %>" />
            <div class="form-group">
                <label for="TieuDe">Tiêu Đề</label>
                <input type="text" class="form-control" id="TieuDe" name="TieuDe" value="<%=hh.getTieuDe() %>" required />
            </div>
            <div class="form-group">
                    <label for="IDChuDe">Chủ Đề</label>
                    <select class="form-control" id="IDChuDe" name="IDChuDe" required>
                            	<% List<chude> lh = ChuDeDAO.DanhSach(); 
                                        	for(chude lh1 : lh) {%>
                                        	<% if(lh1.getID() == hh.getIDChuDe()) {%>
                                   
                         		<%} %>
                         			<option value="<%=lh1.getID() %>" <%= (lh1.getID()==hh.getIDChuDe()) ? "selected" : "" %>> <%=lh1.getTenLoai() %> </option>
                         	<%} %>

                          
                    </select>
            </div>
           
            <div class="form-group">
                    <label for="NoiDung">Nội Dung</label>
                    <textarea class="form-control ckeditor" id="NoiDung" name="NoiDung"><%=hh.getNoiDung() %></textarea>
            </div>
             <div class="form-group">
                    <label for="TomTat">Tóm Tắt</label>
                    <textarea class="form-control ckeditor" id="TomTat" name="TomTat"><%=hh.getTomTat() %></textarea>
            </div>
            
            <div class="form-group">
                    <label >Hình ảnh</label>
                    <img width="100px" src="images/<%=hh.getHinhAnh() %>" />
            </div>
            <div class="input-group mb-3">
                    <label for="HinhAnh">Ảnh mới</label>
                    <input type="file" class="form-control" id="HinhAnh" name="HinhAnh" />
            </div>
            <button type="submit" class="btn btn-primary">Cập nhật</button>
    </form>
   </div>
</div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</body>
</html>