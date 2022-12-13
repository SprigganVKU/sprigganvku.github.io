<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home Page</title>

<!-- Favicon -->
<link rel="icon" type="image/png" href="images/favicon.png">
<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">

<!-- StyleSheet -->

<!-- Bootstrap -->
<link rel="stylesheet" href="css/bootstrap.css">
<!-- Magnific Popup -->
<link rel="stylesheet" href="css/magnific-popup.min.css">
<!-- Font Awesome -->
<link rel="stylesheet" href="css/font-awesome.css">
<!-- Fancybox -->
<link rel="stylesheet" href="css/jquery.fancybox.min.css">
<!-- Themify Icons -->
<link rel="stylesheet" href="css/themify-icons.css">
<!-- Nice Select CSS -->
<link rel="stylesheet" href="css/niceselect.css">
<!-- Animate CSS -->
<link rel="stylesheet" href="css/animate.css">
<!-- Flex Slider CSS -->
<link rel="stylesheet" href="css/flex-slider.min.css">
<!-- Owl Carousel -->
<link rel="stylesheet" href="css/owl-carousel.css">
<!-- Slicknav -->
<link rel="stylesheet" href="css/slicknav.min.css">

<!-- Eshop StyleSheet -->
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/responsive.css">

</head>
<body class="js	" onload="loadAmountCart()">
	<jsp:include page="Menu.jsp"></jsp:include>

	<jsp:include page="banner.jsp"></jsp:include>

	<!-- New Book -->
	<div id="newbooks" class="product-area most-popular section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<h2>Recent Products</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="owl-carousel popular-slider">
						<c:forEach items="${list8Last}" var="o">
							<!-- Start Single Product -->
							<div class="single-product">
								<div class="product-img">
									<a href="detail?pid=${o.id}"> <img class="default-img"
										src="${o.image}" alt="#"> <span class="out-of-stock">New</span>
									</a>
									<div class="button-head">
										<div class="product-action-2">
											<a title="Add to cart" href="#">Add to cart</a>
										</div>
									</div>
								</div>
								<div class="product-content">
									<h3>
										<a href="detail?pid=${o.id}">${o.name}</a>
									</h3>
									<div class="product-price">
										<span class="old"></span> <span>${o.price}</span>
									</div>
								</div>
							</div>
							<!-- End Single Product -->
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End New Book -->


	<!-- Novel Latest -->
	<div class="product-area section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<h2>Latest novels</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="product-info">
						<div class="tab-content" id="myTabContent">
							<!-- Start Single Tab -->
							<div class="tab-pane fade show active" id="man" role="tabpanel">
								<div class="tab-single">
									<div id="contentNovel" class="row">
										<c:forEach items="${list4NovelLast}" var="o">
											<div class="productNovel col-xl-3 col-lg-4 col-md-4 col-12">
												<div class="single-product">
													<div class="product-img">
														<a href="detail?pid=${o.id}"> <img class="default-img"
															src="${o.image}" alt="#">
														</a>
														<div class="button-head">
															<div class="product-action-2">
																<a title="Add to cart" href="#">Add to cart</a>
															</div>
														</div>
														<p
															style="text-align: center; font-size: 14px; font-weight: 500; padding: 4px"
															id="novel">${o.name}</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>

							</div>
							<!--/ End Single Tab -->


						</div>
					</div>
				</div>
			</div>

		</div>
		<button onclick="loadMoreNovel()" class="btn btn-primary btn-lg"
			style="margin: 40px auto; display: flex;">Load More</button>
	</div>
	<!-- End Novel Latest -->


	<!-- Comic Latest -->
	<div class="product-area section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section-title">
						<h2>Latest Comic</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<div class="product-info">
						<div class="tab-content" id="myTabContent">
							<!-- Start Single Tab -->
							<div class="tab-pane fade show active" id="man" role="tabpanel">
								<div class="tab-single">
									<div id="contentComic" class="row">
										<c:forEach items="${list4ComicLast}" var="o">
											<div class="productComic col-xl-3 col-lg-4 col-md-4 col-12">
												<div class="single-product">
													<div class="product-img">
														<a href="detail?pid=${o.id}"> <img class="default-img"
															src="${o.image}" alt="#">
														</a>
														<div class="button-head">
															<div class="product-action-2">
																<a title="Add to cart" href="#">Add to cart</a>
															</div>
														</div>
														<p
															style="text-align: center; font-size: 14px; font-weight: 500; padding: 4px"
															id="comic">${o.name}</p>
													</div>
												</div>
											</div>
										</c:forEach>
									</div>
								</div>

							</div>
							<!--/ End Single Tab -->


						</div>
					</div>
				</div>
			</div>

		</div>
		<button onclick="loadMoreComic()" class="btn btn-primary btn-lg"
			style="margin: 40px auto; display: flex;">Load More</button>
	</div>
	<!-- End Comic Latest -->



	<jsp:include page="other.jsp"></jsp:include>
	<jsp:include page="Footer.jsp"></jsp:include>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		function loadMore() {
			var amount = document.getElementsByClassName("product").length;
			$.ajax({
				url : "/WebsiteBookStore/load",
				type : "get", //send it through get method
				data : {
					exits : amount
				},
				success : function(data) {
					var row = document.getElementById("content");
					row.innerHTML += data;
				},
				error : function(xhr) {
					//Do Something to handle error
				}
			});
		}
		function loadMoreNovel() {
			var amountNovel = document.getElementsByClassName("productNovel").length;
			$
					.ajax({
						url : "/WebsiteBookStore/loadNovel",
						type : "get", //send it through get method
						data : {
							exitsNovel : amountNovel
						},

						success : function(dataNovel) {
							document.getElementById("contentNovel").innerHTML += dataNovel;
						},
						error : function(xhr) {
							//Do Something to handle error
						}
					});
		}
		function loadMoreComic() {
			var amountComic = document.getElementsByClassName("productComic").length;
			$
					.ajax({
						url : "/WebsiteBookStore/loadComic",
						type : "get", //send it through get method
						data : {
							exitsComic : amountComic
						},
						success : function(dataComic) {
							document.getElementById("contentComic").innerHTML += dataComic;
						},
						error : function(xhr) {
							//Do Something to handle error
						}
					});
		}
		function searchByName(param) {
			var txtSearch = param.value;
			$.ajax({
				url : "/WebsiteBookStore/searchAjax",
				type : "get", //send it through get method
				data : {
					txt : txtSearch
				},
				success : function(data) {
					var row = document.getElementById("content");
					row.innerHTML = data;
				},
				error : function(xhr) {
					//Do Something to handle error
				}
			});
		}
		function load(cateid) {
			$
					.ajax({
						url : "/WebsiteBookStore/category",
						type : "get", //send it through get method
						data : {
							cid : cateid
						},
						success : function(responseData) {
							document.getElementById("content").innerHTML = responseData;
						}
					});
		}
		function loadAmountCart() {
			$
					.ajax({
						url : "/WebsiteBookStore/loadAllAmountCart",
						type : "get", //send it through get method
						data : {

						},
						success : function(responseData) {
							document.getElementById("amountCart").innerHTML = responseData;
						}
					});
		}
	</script>



	<!-- Custom scripts -->
	<script type="text/javascript" src="js/script.js"></script>

	<!-- Jquery -->
	<script
		src="https://mdbootstrap.com/previews/ecommerce-demo/js/jquery-3.4.1.min.js"></script>
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery-migrate-3.0.0.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<!-- Popper JS -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap JS -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Color JS -->
	<script src="js/colors.js"></script>
	<!-- Slicknav JS -->
	<script src="js/slicknav.min.js"></script>
	<!-- Owl Carousel JS -->
	<script src="js/owl-carousel.js"></script>
	<!-- Magnific Popup JS -->
	<script src="js/magnific-popup.js"></script>
	<!-- Waypoints JS -->
	<script src="js/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script src="js/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="js/nicesellect.js"></script>
	<!-- Flex Slider JS -->
	<script src="js/flex-slider.js"></script>
	<!-- ScrollUp JS -->
	<script src="js/scrollup.js"></script>
	<!-- Onepage Nav JS -->
	<script src="js/onepage-nav.min.js"></script>
	<!-- Easing JS -->
	<script src="js/easing.js"></script>
	<!-- Active JS -->
	<script src="js/active.js"></script>
</body>
</html>

