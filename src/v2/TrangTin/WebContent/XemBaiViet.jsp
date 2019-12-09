<%@page import="Model.nguoidung"%>
<%@page import="DAO.BaiVietDAO"%>
<%@page import="Model.baiviet"%>
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
 <% int ID = Integer.parseInt(request.getParameter("ID"));
 nguoidung ng =(nguoidung) session.getAttribute("username");
       baiviet hh = BaiVietDAO.DanhSachTheoID(ID);
        %>
	<div class="card mt-4">
        <img class="card-img-top" style="width: 350px; height: 350px;" src="images/<%=hh.getHinhAnh() %>" alt=""/>
        <div class="card-body">
       
          <h3 class="card-title"><%=hh.getTieuDe() %></h3>
            <h4 style="font-size: 10pt;"><%=hh.getTomTat() %></h4>
            
        </div>
      </div>

      <div class="card card-outline-secondary my-4">
        <div class="card-body chitietbaiviet">

           <p class="text-justify"> <%=hh.getNoiDung() %> </p>
        </div>
</div>


</div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</body>
</html>