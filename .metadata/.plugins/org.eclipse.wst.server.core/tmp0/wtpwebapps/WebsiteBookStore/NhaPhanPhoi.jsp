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
						<strong>Quản lý nhà cung cấp</strong>
					</h1>
					<button
						onclick="document.getElementById('id01').style.display='block'"
						type="submit" class="text-center btn btn-success">Thêm
						nhà cung cấp</button>

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
											<th class="d-none d-xl-table-cell">Tên nhà cung cấp</th>
											<th class="d-none d-xl-table-cell">Số điện thoại</th>
											<th class="d-none d-md-table-cell">Email</th>
											<th class="d-none d-md-table-cell">Địa chỉ</th>
											<th class="d-none d-md-table-cell">Phân phối cho</th>
											<th class="d-none d-md-table-cell">Actions</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${listAllSupplier}" var="o">
											<tr>
												<td>${o.idSupplier}</td>
												<td class="d-none d-xl-table-cell">${o.nameSupplier}</td>
												<td class="d-none d-xl-table-cell">${o.phoneSupplier}</td>
												<td class="d-none d-md-table-cell">${o.emailSupplier}</td>
												<td class="d-none d-md-table-cell">${o.addressSupplier}</td>
												<c:forEach items="${listAllCategory}" var="t">
													<c:if test="${o.cateID==t.cid }">
														<td>${t.cname }</td>
													</c:if>
												</c:forEach>

												<td class="d-none d-md-table-cell"><a
													href="deleteSupplier?id=${o.idSupplier}">
														<button class="text-center btn btn-danger">Delete</button>
												</a></td>
											</tr>
										</c:forEach>


									</tbody>
								</table>
							</div>
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
		<form class="modal-content" action="addSupplier" method="post">
			<div class="container">
				<h2 class="h3">
					<strong>Thêm nhà cung cấp</strong>
				</h2>
				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Tên nhà cung cấp</h5>
					</label> <input name="nameSupplier" type="text" class="form-control"
						required>
				</div>

				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Số điện thoại</h5>
					</label> <input name="phoneSupplier" type="number" class="form-control"
						required>
				</div>

				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Email</h5>
					</label> <input name="emailSupplier" type="email" class="form-control"
						required>
				</div>

				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Địa chỉ</h5>
					</label> <input name="addressSupplier" type="text" class="form-control"
						required>
				</div>

				<div class="form-group">
					<label>
						<h5 class="card-title mb-1">Cung cấp cho</h5>
					</label> <select name="cateID" class="form-select mb-3">
						<c:forEach items="${listAllCategory}" var="t">
							<option value="${t.cid}">${t.cname}</option>
						</c:forEach>
					</select>
				</div>

				<div class="clearfix">
					<button type="submit"
						onclick="document.getElementById('id01').style.display='none'"
						class="btn btn-secondary">Hủy</button>
					<input type="submit" class="btn btn-success" value="Thếm">
				</div>
			</div>
		</form>
	</div>

	<script src="js/app.js"></script>
</body>
</html>