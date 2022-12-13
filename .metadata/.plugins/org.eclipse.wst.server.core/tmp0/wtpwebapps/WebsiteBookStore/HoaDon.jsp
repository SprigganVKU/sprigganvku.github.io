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
						<strong>Hóa đơn</strong>
					</h1>

					<form action="xuatExcelControl" method="get">
						<button type="submit" class="text-center btn btn-primary mb-2">Xuất
							file Excel</button>
							
 					<c:if test="${error!=null }">
						<p class="mt-2 text-danger">${error}</p>
					</c:if>
					<c:if test="${mess!=null }">
						<p class="mt-2 text-success">${mess}</p>
					</c:if>
					
						<input oninput="searchByDate(this)" type="date" id="dateHoaDon"
							name="dateHoaDon" class="form-control mt-2 mb-0"
							style="width: 30%">
					</form>

					<div class="row">
						<div class="col-12 col-lg-12 col-xxl-12 d-flex">
							<div class="card flex-fill">
								<div class="card-header"></div>
								<table class="table table-hover my-0">
									<thead>
										<tr>
											<th>Mã hóa đơn</th>
											<th class="d-none d-xl-table-cell">Tên tài khoản</th>
											<th class="d-none d-xl-table-cell">Tổng Giá($)</th>
											<th class="d-none d-md-table-cell">Ngày Xuất</th>
										</tr>
									</thead>
									<tbody id="content">

										<c:forEach items="${listAllInvoice}" var="i">
											<tr>
												<td>${i.maHD }</td>
												<c:forEach items="${listAllAccount}" var="a">
													<c:if test="${i.accountID==a.id }">
														<td class="d-none d-xl-table-cell">${a.user }</td>
													</c:if>
												</c:forEach>
												<td class="d-none d-xl-table-cell">${String.format("%.02f",i.tongGia) }</td>
												<td class="d-none d-md-table-cell">${i.ngayXuat }</td>
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

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
    function searchByDate(param){
        var txtSearchDate = param.value;
        $.ajax({
            url: "/WebsiteBanGiay/searchAjaxHoaDon",
            type: "get", //send it through get method
            data: {
                ngayXuat: txtSearchDate
            },
            success: function (responseData) {
                document.getElementById("content").innerHTML = responseData;
            }
            
        });
    }
    </script>

	<script src="js/app.js"></script>
</body>
</html>