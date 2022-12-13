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
						<strong>Doanh thu theo tháng</strong>
					</h1>



					<div class="row">
						<div class="col-12 col-lg-12 col-xxl-12 d-flex">
							<div class="card flex-fill w-100">
								<div class="card-header">

									<h5 class="card-title mb-0"></h5>
								</div>
								<div class="card-body d-flex w-100">
									<div class="align-self-center chart chart-lg">
										<canvas id="chartjs-dashboard-bar"></canvas>
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
	<script>
        document.addEventListener("DOMContentLoaded", function () {
            // Bar chart
            new Chart(document.getElementById("chartjs-dashboard-bar"), {
                type: "bar",
                data: {
                    labels: ["Tháng 12", "Tháng 11", "Tháng 10", "Tháng 9", "Tháng 8", "Tháng 7", "Tháng 6", "Tháng 5", "Tháng 4", "Tháng 3", "Tháng 2", "Tháng 1"],
                    datasets: [{
                        label: "Doanh thu $",
                        backgroundColor: ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)",
                            "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(54, 162, 235, 0.2)",
                            "rgba(153, 102, 255, 0.2)", "rgba(255,0,255,0.3)", "#99FF99", "#FFFF99", "#FFC1C1", "#FFB5C5", "#DDC488"
                        ],
                        borderColor: ["rgb(255, 99, 132)", "rgb(255, 159, 64)", "rgb(255, 205, 86)",
                            "rgb(75, 192, 192)", "rgb(54, 162, 235)", "rgb(153, 102, 255)", "rgb(255,0,255)", "	#66FF99", "#FFFF66", "#EEB4B4", "#EEA9B8", "#ECAB53"
                        ],
                        hoverBackgroundColor: ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)",
                            "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(54, 162, 235, 0.2)",
                            "rgba(153, 102, 255, 0.2)", "rgba(255,0,255,0.3)", "#99FF99", "#FFFF99", "#FFC1C1", "#FFB5C5", "#DDC488"
                        ],
                        hoverBorderColor: ["rgba(255, 99, 132, 0.2)", "rgba(255, 159, 64, 0.2)",
                            "rgba(255, 205, 86, 0.2)", "rgba(75, 192, 192, 0.2)", "rgba(54, 162, 235, 0.2)",
                            "rgba(153, 102, 255, 0.2)", "rgba(255,0,255,0.3)", "#99FF99", "#FFFF99", "#FFC1C1", "#FFB5C5", "#DDC488"
                        ],
                        data: [${totalMoneyMonth12}, ${totalMoneyMonth11}, ${totalMoneyMonth10}, ${totalMoneyMonth9}, ${totalMoneyMonth8}, ${totalMoneyMonth7}, ${totalMoneyMonth6}, ${totalMoneyMonth5}, ${totalMoneyMonth4}, ${totalMoneyMonth3}, ${totalMoneyMonth2}, ${totalMoneyMonth1}],
                        barPercentage: .75,
                        categoryPercentage: .5
                    }]
                },
                options: {
                    maintainAspectRatio: false,
                    legend: {
                        display: false
                    },
                    scales: {
                        yAxes: [{
                            gridLines: {
                                display: false
                            },
                            stacked: false,
                            ticks: {
                                stepSize: 20
                            }
                        }],
                        xAxes: [{
                            stacked: false,
                            gridLines: {
                                color: "transparent"
                            }
                        }]
                    }
                }
            });
        });
    </script>
</body>
</html>