

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Responsive Admin &amp; Dashboard Template based on Bootstrap 5">
<meta name="author" content="AdminKit">
<meta name="keywords"
	content="adminkit, bootstrap, bootstrap 5, admin, dashboard, template, responsive, css, sass, html, theme, front-end, ui kit, web">

<link rel="preconnect" href="https://fonts.gstatic.com">
<link rel="shortcut icon" href="img/icons/icon-48x48.png" />

<link rel="canonical" href="https://demo-basic.adminkit.io/" />

<title>AdminKit Demo - Bootstrap 5 Admin Template</title>

<link href="css/app.css" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap"
	rel="stylesheet">
<body>

	<div class="wrapper">
		<jsp:include page="LeftAdmin.jsp"></jsp:include>
	</div>

	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-6">
						<h2>
							Edit <b>Product</b>
						</h2>
					</div>
					<div class="col-sm-6"></div>
				</div>
			</div>
		</div>
		<div id="editEmployeeModal">
			<div class="modal-dialog">
				<div class="modal-content">
					<form action="edit" method="post">
						<div class="modal-header">
							<h4 class="modal-title">Edit Product</h4>
							<button type="button" class="close" data-dismiss="modal"
								aria-hidden="true">&times;</button>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<!--                          <label>ID</label> -->
								<input value="${detail.id}" name="id" type="hidden"
									class="form-control" readonly required>
							</div>
							<div class="form-group">
								<label>Name</label> <input value="${detail.name}" name="name"
									type="text" class="form-control" required>
							</div>
							<div class="form-group">
								<label>Image</label> <input value="${detail.image}" name="image"
									type="text" class="form-control">
							</div>
							<div class="form-group">
								<label>Image 2</label> <input value="${detail.image2}"
									name="image2" type="text" class="form-control">
							</div>
							<div class="form-group">
								<label>Image 3</label> <input value="${detail.image3}"
									name="image3" type="text" class="form-control">
							</div>
							<div class="form-group">
								<label>Image 4</label> <input value="${detail.image4}"
									name="image4" type="text" class="form-control">
							</div>
							<div class="form-group">
								<label>Price</label> <input value="${detail.price}" name="price"
									type="text" class="form-control">
							</div>
							<div class="form-group">
								<label>Title</label>
								<textarea name="title" class="form-control" required>${detail.title}</textarea>
							</div>

							<div class="form-group">
								<label>Delivery</label>
								<textarea name="delivery" class="form-control" required>${detail.delivery}</textarea>
							</div>
							<div class="form-group">
								<label>Description</label>
								<textarea name="description" class="form-control">${detail.description}</textarea>
							</div>
							<div class="form-group">
								<label>Category</label> <select name="category"
									class="form-select" aria-label="Default select example">
									<c:forEach items="${listCC}" var="o">
										<option value="${o.cid}">${o.cname}</option>
									</c:forEach>
								</select>
							</div>

						</div>
						<div class="modal-footer">
							<input type="submit" class="btn btn-success" value="Edit">
						</div>
					</form>
				</div>
			</div>
		</div>

	</div>


	<script src="js/manager.js" type="text/javascript"></script>
</body>
</html>