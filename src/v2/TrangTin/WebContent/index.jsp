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

    
        <%
            	nguoidung ng =(nguoidung) session.getAttribute("username");
                                List<baiviet> hh = BaiVietDAO.DanhSach();
                                	for(baiviet hh1 : hh) {
            %>
        <div class="card-body ">
        <div class=" card list-books">
          
            <a href="XemBaiViet.jsp?ID=<%=hh1.getID()%>" ><img width="200px" height="200px" src="images/<%=hh1.getHinhAnh() %> "/></a>
             <br/>
              <a href="XemBaiViet.jsp?ID=<%=hh1.getID()%>" style="font-size: 20pt;"><%=hh1.getTieuDe()%></a>
             
            
            <p class="card-text" style="color: #8e8c8c;"><%=hh1.getTomTat() %></p>
           
           
         
        </div>
        
      </div>
      <%} %>

</div>
<jsp:include page="/layouts/footer.jsp"></jsp:include>
</body>
</html>