<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Classes.*" %>
<%@ page import="Models.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file="../layouts/viewbegin.jsp" %>
	<div class="container">
		<%@ include file="../layouts/navbar.jsp" %>
		
		<div class="card mt-3 shadow-sm">
			<h5 class="card-header alert-warning">Danh sách người dùng</h5>
			<div class="card-body">
				<p><a class="btn btn-success" href="DangKy" role="button"><i class="fas fa-plus"></i> Thêm</a></p>
				<table class="table table-bordered table-striped table-sm">
					<thead>
						<tr>
							<th width="5%">#</th>
							<th>Họ và tên</th>
							<th>Tên đăng nhập</th>
							<th>Quyền hạn</th>
							<th>Trạng thái</th>
							<th width="10%" colspan="2">Thao tác</th>
						</tr>
					</thead>
					<tbody>
						<% ArrayList<NguoiDung> lstNguoiDung = new NguoiDungModel().getDSNguoidung();
						int stt = 1;
						for(NguoiDung nd : lstNguoiDung){ %>
						<tr>
								<td><%= stt %></td>
								<td><%= nd.getHovaten() %></td>
								<td><%= nd.getTendangnhap() %></td>
								<td>
									<% if(nd.getQuyenhan() == 1){ %>
										<span class="badge badge-success">Quản trị</span>
									<% }else{ %>
										<span class="badge badge-secondary">Thành viên</span>
									<% } // End else if %>
								</td>
								<td class="text-center">
									<a href="NguoiDung?Chon=Khoa&Id=<%= nd.getId() %>" title="<%= (nd.getKhoa() == 0) ? "Khóa người dùng" : "Kích hoạt người dùng" %>">
										<i class="fas <%= (nd.getKhoa() == 0) ? "fa-check text-success" : "fa-ban text-danger" %>"></i>
									</a>
								</td>
								<td class="text-center"><a href="NguoiDung?Chon=CapNhat&Id=<%= nd.getId() %>" title="Cập nhật thông tin"><i class="fas fa-edit text-success"></i></a></td>
								<td class='text-center'><a data-toggle='modal' data-target='#deleteModal' href='#Xoa' onclick="doDelete(<%= nd.getId() %>)" title="Xóa người dùng"><i class='fas fa-trash-alt text-danger'></i></a></td>
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
<script type="text/javascript">
	function doDelete(id){
		Swal.fire('Any fool can use a computer');
	}
</script>
<%@ include file="../layouts/viewend.jsp" %>