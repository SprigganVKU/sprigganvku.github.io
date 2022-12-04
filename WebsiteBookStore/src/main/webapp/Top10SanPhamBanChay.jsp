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
						<strong>Top 10 sản phẩm bán chạy nhất</strong>
					</h1>



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
											<th class="d-none d-md-table-cell">Số lượng đã bán</th>
											<th class="d-none d-md-table-cell"></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${listTop10Product}" var="t">
											<c:forEach items="${listAllProduct}" var="o">
												<c:if test="${t.productID==o.id }">
													<tr>
														<td>${o.id}</td>
														<td class="d-none d-xl-table-cell">${o.name}</td>
														<td class="d-none d-xl-table-cell"><img
															src="${o.image}" width="89" height="127">
														</td>
														<td class="d-none d-md-table-cell">${o.price}$</td>
														<td class="d-none d-md-table-cell">${t.soLuongDaBan }</td>

													</tr>
												</c:if>
											</c:forEach>
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

	<script src="js/app.js"></script>

</body>
</html>