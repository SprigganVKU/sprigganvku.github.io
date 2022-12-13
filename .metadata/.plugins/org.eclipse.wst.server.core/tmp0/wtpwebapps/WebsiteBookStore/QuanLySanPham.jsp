<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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

<style>
/* Add padding and center-align text to the container */
.container {
	padding: 16px;
}

/* The Modal (background) */
.modal {
	display: none;
	/* Hidden by default */
	position: fixed;
	/* Stay in place */
	z-index: 1;
	/* Sit on top */
	left: 0;
	top: 0;
	width: 100%;
	/* Full width */
	height: 100%;
	/* Full height */
	overflow: auto;
	/* Enable scroll if needed */
	background-color: rgba(0, 0, 0, 0.5);
	padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 494px;
	/* Could be more or less, depending on screen size */
	border-radius: 0.5rem;
}

/* Style the horizontal ruler */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* The Modal Close Button (x) */
.close {
	position: absolute;
	right: 35px;
	top: 15px;
	font-size: 40px;
	font-weight: bold;
	color: #f1f1f1;
}

.close:hover, .close:focus {
	color: #181616;
	cursor: pointer;
}

.pagination {
	display: flex;
	justify-content: center;
}

.pagination a {
	color: black;
	float: left;
	padding: 8px 16px;
	text-decoration: none;
}

.pagination a.active {
	background-color: #fcb92c;
	color: white;
	border-radius: 5px;
}

.pagination a:hover:not(.active) {
	background-color: #ddd;
	border-radius: 5px;
}

/* Clear floats */
.clearfix {
	text-align: right;
	margin-top: 2rem;
	margin-bottom: 1rem;
	margin-right: 1rem;
}

.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

.form-group {
	margin: 1rem;
}

h2 {
	text-align: center;
}

.h3 {
	margin-top: 1rem;
	margin-bottom: 2rem;
}

.btn {
	margin-right: 1rem;
}

/* Change styles for cancel button and delete button on extra small screens */
@media screen and (max-width: 300px) {
	.cancelbtn, .deletebtn {
		width: 100%;
	}
}
</style>
</head>
<body>

	<div class="wrapper">
		<jsp:include page="LeftAdmin.jsp"></jsp:include>

		<div class="main">
			<nav class="navbar navbar-expand navbar-light navbar-bg">
				<a class="sidebar-toggle js-sidebar-toggle"> <i
					class="hamburger align-self-center"></i>
				</a>
			</nav>


			<main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3">
						<strong>Quản lý sản phẩm</strong>
					</h1>
					<button
						onclick="document.getElementById('id01').style.display='block'"
						type="submit" class="text-center btn btn-success">Thêm
						sản phẩm</button>

					<c:if test="${error!=null }">
						<p class="mt-2 text-danger">${error}</p>
					</c:if>
					<c:if test="${mess!=null }">
						<p class="mt-2 text-success">${mess}</p>
					</c:if>
					<div class="row">




						<div class="col-12 col-lg-12 col-xxl-12 d-flex">
							<div class="card flex-fill">
								<div class="card-header">

									<h5 class="card-title mb-0"></h5>

								</div>
								<table class="table table-hover my-0">
									<thead>
										<tr>
											<th>ID</th>
											<th class="d-none d-xl-table-cell">Tên sách</th>
											<th class="d-none d-xl-table-cell">Ảnh minh họa</th>
											<th class="d-none d-md-table-cell">Giá</th>
											<th class="d-none d-md-table-cell">Sửa/Xóa</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${listP}" var="o">
											<tr>
												<td>${o.id}</td>
												<td class="d-none d-xl-table-cell">${o.name}</td>
												<td class="d-none d-xl-table-cell"><img
													src="${o.image}" width="89" height="127"></td>
												<td class="d-none d-md-table-cell">${o.price}$</td>
												<td class="d-none d-md-table-cell"><a
													href="loadProduct?pid=${o.id}">
														<button type="button" class="text-center btn btn-warning">Sửa</button>
												</a> <a href="delete?pid=${o.id}">
														<button type="button" class="text-center btn btn-danger">Xóa</button>
												</a></td>
											</tr>
										</c:forEach>


									</tbody>
								</table>
							</div>
						</div>
						<div class="pagination">
							<c:if test="${tag != 1}">
								<a href="manager?index=${tag-1 }">&laquo;</a>
							</c:if>
							<c:forEach begin="1" end="${endPage }" var="i">
								<a class="${tag==i?" page-item
									active":"" }" href="manager?index=${i }">${i }</a>
							</c:forEach>
							<c:if test="${tag != endPage}">
								<a href="manager?index=${tag+1 }">&raquo;</a>
							</c:if>

						</div>
					</div>

				</div>



			</main>

		</div>
	</div>

	<!-- modal -->
	<div id="id01" class="modal">
		<span onclick="document.getElementById('id01').style.display='none'"
			class="close" title="Close Modal">×</span>
		<form class="modal-content" action="add" method="post">
			<div class="container">
				<h2 class="h3">
					<strong>Thêm sản phẩm</strong>
				</h2>
				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Tên sản phẩm</h5>
					</label> <input name="name" type="text" class="form-control" required>
				</div>

				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Ảnh minh họa</h5>
					</label> <input name="image" type="text" class="form-control" required>
				</div>

				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Ảnh minh họa 2</h5>
					</label> <input name="image2" type="text" class="form-control" required>
				</div>
				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Ảnh minh họa 3</h5>
					</label> <input name="image3" type="text" class="form-control" required>
				</div>
				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Ảnh minh họa 4</h5>
					</label> <input name="image4" type="text" class="form-control" required>
				</div>

				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Giá</h5>
					</label> <input name="price" type="number" class="form-control" required>
				</div>

				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Tiêu đề</h5>
					</label>
					<textarea name="title" class="form-control" rows="2" placeholder=""></textarea>
				</div>

				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Mô tả</h5>
					</label>
					<textarea name="description" class="form-control" rows="2"
						placeholder=""></textarea>
				</div>

				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Nguồn gốc</h5>
					</label> <input name="delivery" type="text" class="form-control" required>
				</div>

				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Thể loại</h5>
					</label> <select name="category" class="form-select mb-3">
						<c:forEach items="${listCC}" var="o">
							<option value="${o.cid}">${o.cname}</option>
						</c:forEach>
					</select>
				</div>



				<div class="clearfix">
					<button
						onclick="document.getElementById('id01').style.display='none'"
						class="btn btn-secondary">Hủy</button>
					<input type="submit" class="btn btn-success" value="Thêm">
				</div>
			</div>
		</form>
	</div>



	<script src="js/app.js"></script>
</body>
</html>