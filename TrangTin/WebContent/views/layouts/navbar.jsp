<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@page import="Classes.*"%>
<%@page import="Models.*"%>
<%@page import="java.util.ArrayList"%>
<nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerTrangTin" aria-controls="navbarTogglerTrangTin" aria-expanded="false" aria-label="Điều hướng chính">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarTogglerTrangTin">
    <a class="navbar-brand" href="/TrangTin"><img src="img/leaf.png" height="32" /> Báo lá cải</a>
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
	    <li class="nav-item">
	        <a class="nav-link" href="BaiViet?SapXep=XemNhieu"><i class="fas fa-fw fa-fire-alt"></i> Xem nhiều nhất</a>
	    </li>
      	<li class="nav-item dropdown">
		  <a class="nav-link dropdown-toggle" href="#" role="button" id="dropdownLinkChuDe" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    <i class="fas fa-fw fa-folder-open"></i> <span>Chủ đề</span>
		  </a>
		  <div class="dropdown-menu" aria-labelledby="dropdownLinkChuDe">
		  	<% // Lay danh sach cac san pham bang cach goi ham da dinh nghia trong Model
				ArrayList<ChuDe> lstChuDe = new ChuDeModel().getDSChude();
		  	for(ChuDe cd : lstChuDe){
		  	%>
		  		<a class="dropdown-item" href="BaiViet?SapXep=ChuDe&ChuDe=<%=cd.getId()%>"><i class="fas fa-fw fa-folder-open"></i> <%=cd.getTenchude()%></a>
		    <% } // End for %>
		  </div>
		</li>
    </ul>
    <ul class="navbar-nav ml-auto">
    <% if(request.getSession().getAttribute("QuyenHan") != null && (Integer)request.getSession().getAttribute("QuyenHan") == 1){ %>
    	<li class="nav-item dropdown">
			<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownM" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
				<i class="fas fa-cog"></i> Quản lý
			</a>
			<div class="dropdown-menu" aria-labelledby="navbarDropdownM">
				<a class="dropdown-item" href="ChuDe"><i class="fas fa-fw fa-list"></i> Chủ đề</a>
				<a class="dropdown-item" href="BaiViet"><i class="fas fa-fw fa-clone"></i> Bài viết</a>
				<a class="dropdown-item" href="NguoiDung"><i class="fas fa-fw fa-users"></i> Người dùng</a>
			</div>
		</li>
    <% } // End if %>
    <% if(request.getSession().getAttribute("TenDangNhap")!=null){ %>
	    <li class="nav-item dropdown">
		  <a class="nav-link dropdown-toggle" href="#" role="button" id="dropdownLinkNguoiDung" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
		    <i class="fas fa-fw fa-user"></i> <strong><%= (String)request.getSession().getAttribute("HoVaTen") %></strong>
		  </a>
		
		  <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownLinkNguoiDung">
		  	<a class="dropdown-item" href="NguoiDung?Chon=HoSoCaNhan"><i class="fas fa-fw fa-id-badge"></i> Hồ sơ cá nhân</a>
		  	<a class="dropdown-item" href="NguoiDung?Chon=DoiMatKhau"><i class="fas fa-fw fa-key"></i> Đổi mật khẩu</a>
		  	<a class="dropdown-item" href="NguoiDung?Chon=DangXuat"><i class="fas fa-fw fa-sign-out-alt"></i> Đăng xuất</a>
		  </div>
		</li>
    <% } else { %>
    	<li class="nav-item"><a class="nav-link" href="DangKy"><i class="fas fa-user-plus"></i> Đăng ký</a></li>
		<li class="nav-item"><a class="nav-link btn-success text-white" href="DangNhap"><i class="fas fa-sign-in-alt"></i> Đăng nhập</a></li>
    <% } // End if else %>
    </ul>
  </div>
</nav>