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
								<td class='text-center'><a data-toggle='modal' data-target='#deleteModal' href='#Xoa' onclick="doDelete(<%= cd.getId() %>)" title="Xóa chủ đề"><i class='fas fa-trash-alt text-danger'></i></a></td>
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