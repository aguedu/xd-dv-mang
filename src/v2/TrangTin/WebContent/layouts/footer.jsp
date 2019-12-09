<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<div class="container">
<footer>Bản quyền &copy; 2019 bởi Báo Lá Cải.</footer>

<script src="public/js/jquery-3.3.1.slim.min.js"></script>
<script src="public/js/popper.min.js"></script>
<script src="public/js/bootstrap.min.js"></script>
<script src="public/ckeditor/ckeditor.js"></script>

<script type="text/javascript">
	function BrowseServer()
	{
		var finder = new CKFinder();
		finder.basePath = '../';
		finder.selectActionFunction = function(fileUrl) {
			document.getElementById('HinhAnh').value = fileUrl.substring(fileUrl.lastIndexOf('/') + 1);
		};
		finder.popup();
	}
</script>

</div>
</body>
</html>