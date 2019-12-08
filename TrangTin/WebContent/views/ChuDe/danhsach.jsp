<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Classes.*" %>
<%@ page import="Models.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file="../layouts/viewbegin.jsp" %>
	<div class="container">
		<%@ include file="../layouts/navbar.jsp" %>
		<div class="card mt-3 shadow-sm">
			<h5 class="card-header alert-warning">Danh sách chủ đề</h5>
			<div class="card-body">
				<% if(request.getAttribute("insertState") != null && request.getAttribute("insertState").equals("success")){ %>
				<div class="alert alert-success alert-dismissible fade show" role="alert">
				  <span>Thêm chủ đề thành công!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<% } // End if error %>
				<% if(request.getAttribute("deleteState") != null && request.getAttribute("deleteState").equals("success")){ %>
				<div class="alert alert-warning alert-dismissible fade show" role="alert">
				  <span>Bạn vừa xóa một chủ đề!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<% } // End if error %>
				<% if(request.getAttribute("updateState") != null && request.getAttribute("updateState").equals("success")){ %>
				<div class="alert alert-success alert-dismissible fade show" role="alert">
				  <span>Sửa chủ đề thành công!</span>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
					    <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<% } // End if error %>
				<p><a class="btn btn-success" href="ChuDe?Chon=Them" role="button"><i class="fas fa-plus"></i> Thêm</a></p>
				<table class="table table-bordered table-striped table-sm">
					<thead>
						<tr>
							<th width="5%">#</th>
							<th>Tên chủ đề</th>
							<th width="10%" colspan="2">Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<% lstChuDe = new ChuDeModel().getDSChude();
						int stt = 1;
						for(ChuDe cd : lstChuDe){ %>
						<tr>
								<td><%= stt %></td>
								<td><%= cd.getTenchude() %></td>
								<td class="text-center"><a href="ChuDe?Chon=CapNhat&Id=<%= cd.getId() %>" title="Cập nhật thông tin"><i class="fas fa-edit text-success"></i></a></td>
								<td class='text-center'><a href="ChuDe?Chon=Xoa&Id=<%= cd.getId() %>" title="Xóa chủ đề"><i class='fas fa-trash-alt text-danger'></i></a></td>
							</tr>
						<% stt++;
						} // End for %>
					</tbody>
				</table>
			</div>
		</div>
		<%@ include file="../layouts/footer.jsp" %>
	</div>
<%@ include file="../layouts/javascript.jsp" %>
<%@ include file="../layouts/viewend.jsp" %>