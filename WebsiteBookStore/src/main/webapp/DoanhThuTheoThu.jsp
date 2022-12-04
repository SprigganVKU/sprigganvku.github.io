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
						<strong>Doanh thu theo thứ</strong>
					</h1>



					<div class="row">
						<div class="col-12 col-md-12 col-xxl-12 d-flex">
							<div class="card flex-fill w-100">
								<div class="card-header">

									<h5 class="card-title mb-0"></h5>
								</div>
								<div class="card-body d-flex">
									<div class="align-self-center w-100">
										<div class="py-3">
											<div class="chart chart-xs">
												<canvas id="chartjs-dashboard-pie"></canvas>
											</div>
										</div>

										<table class="table mb-0">
											<tbody>
												<tr>
													<td>Thứ hai</td>
													<td class="text-end">$${totalMoney2}</td>
												</tr>
												<tr>
													<td>Thứ ba</td>
													<td class="text-end">$${totalMoney3}</td>
												</tr>
												<tr>
													<td>Thứ tư</td>
													<td class="text-end">$${totalMoney4}</td>
												</tr>
												<tr>
													<td>Thứ năm</td>
													<td class="text-end">$${totalMoney5}</td>
												</tr>
												<tr>
													<td>Thứ sáu</td>
													<td class="text-end">$${totalMoney6}</td>
												</tr>
												<tr>
													<td>Thứ bảy</td>
													<td class="text-end">$${totalMoney7}</td>
												</tr>
												<tr>
													<td>Chủ nhật</td>
													<td class="text-end">$${totalMoney1}</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</main>

		</div>
	</div>











	<script src="js/app.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
        document.addEventListener("DOMContentLoaded", function () {
            // Pie chart
            new Chart(document.getElementById("chartjs-dashboard-pie"), {
                type: "pie",
                data: {
                    labels: ["Chủ nhật", "Thứ bảy", "Thứ sáu", "Thứ năm", "Thứ tư", "Thứ ba", "Thứ hai"],
                    datasets: [{
                    	data: [${totalMoney1}, ${totalMoney7}, ${totalMoney6}, ${totalMoney5}, ${totalMoney4}, ${totalMoney3}, ${totalMoney2}],
                        backgroundColor: ["#F7464A", "#46BFBD", "#FDB45C", "#949FB1", "#4D5360", "#1874CD", "#CDB5CD"],
                        borderWidth: 5
                    }]
                },
                options: {
                    responsive: !window.MSInputMethodContext,
                    maintainAspectRatio: false,
                    legend: {
                        display: false
                    },
                    cutoutPercentage: 75
                }
            });
        });
    </script>
</body>
</html>