<%@page import="java.util.List"%>
<%@page import="Model.nguoidung"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<nav class="navbar navbar-expand-lg navbar-light" style="background-color:#00bfff;">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
        <li class="nav-item active"><a class="nav-link" href="/TrangTin/index.jsp">Trang chủ</a></li>
		 <%
    	nguoidung ng =(nguoidung) session.getAttribute("username");
      %>
      <%  if(ng!=null && ng.getQuyenhan() ==2 ){
    		%>
        <li class="nav-item">
            <a class="nav-link" href="/TrangTin/DanhSachChuDe.jsp">Chủ Đề</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/TrangTin/BaiViet.jsp">Bài Viết</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/TrangTin/NguoiDung.jsp">Người dùng</a>
        </li>
	<% } %>
		

       
      </ul>
     
      <ul class="navbar-nav ml-auto">
      	 
          <li class="nav-item dropdown">
          <% if(ng!=null){
    		%>
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-user"></i></a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
						<%if(ng.getQuyenhan()==2) {%>
						<a class="dropdown-item" href="/TrangTin/index.jsp"><i class="fas fa-fw fa-history"></i><%=ng.getName()%></a>
						<%} else{%>
							<a class="dropdown-item" href="/TrangTin/index.jsp"><i class="fas fa-fw fa-history"></i></a>
							<%} %>
						</div>
          </li>
           
    	  
          <li class="nav-item"><a class="nav-link" href="NguoiDung_DangXuat"><i class="fas fa-sign-out-alt"></i>Đăng xuất</a></li>
           <%} else {%>
          <li class="nav-item"><a class="nav-link" href="/TrangTin/NguoiDung_DangNhap.jsp">Đăng nhập</a></li>
          <li class="nav-item"><a class="nav-link" href="/TrangTin/NguoiDung_DangKy.jsp">Đăng ký</a></li>
          <% }%>

      </ul>
    </div>
  </nav>
</body>
</html>