<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Shop</title>
<!-- Favicon -->
<link rel="icon" type="image/png" href="images/favicon.png">
<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" href="css/owl.carousel.min.css">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">

<!-- Style -->
<link href="css/login.css" rel="stylesheet" type="text/css" />

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

<body class="js" onload="loadAmountCart()">
	<jsp:include page="Menu.jsp"></jsp:include>

	<!-- Product Style -->
	<section class="product-area shop-sidebar shop section">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-4 col-12">
					<div class="shop-sidebar">
						<!-- Single Widget -->
						<div class="single-widget category">
							<h3 class="title">Categories</h3>
							<ul class="categor-list">
								<c:forEach items="${listCC}" var="o">
									<li><a onclick="load(${o.cid})">${o.cname}</a></li>
								</c:forEach>
							</ul>
						</div>
						<!--/ End Single Widget -->

						<!-- Shop by filter -->
						<div class="single-widget category">
							<h3 class="title">
								<i class="ti-search"></i> Filters
							</h3>
							<!-- Search Form -->

							<div class="input-group flex-nowrap">

								<input oninput="searchByName(this)" name="txt" value="${txtS}"
									type="text" class="form-control" placeholder="Search..."
									aria-label="Username" aria-describedby="addon-wrapping">
							</div>
							<!--/ End Search Form -->

						</div>
						<!--/Shop by filter -->

						<!-- Shop By Price -->
						<div class="single-widget range">
							<h3 class="title">Shop by Price</h3>
							<div class="price-filter">
								<div class="price-filter-inner">
									<div class="input-group mb-3">
										<input oninput="searchByPriceMinToMax()" id="priceMin"
											type="text" class="form-control" placeholder="Min"
											for="priceMin"> <span class="input-group-text">
											- </span> <input oninput="searchByPriceMinToMax()" id="priceMax"
											type="text" class="form-control" placeholder="Max"
											for="priceMin">
									</div>
								</div>
							</div>
							<ul class="check-box-list">
								<li><label class="checkbox-inline" for="1"><input
										onchange="searchByPriceUnder100()" name="news" id="1"
										type="checkbox" for="under100">Under - 100</label></li>
								<li><label class="checkbox-inline" for="2"><input
										onchange="searchByPrice100To200()" name="news" id="2"
										type="checkbox" for="100200">100 - 200</label></li>
								<li><label class="checkbox-inline" for="3"><input
										onchange="searchByPriceAbove200()" name="news" id="3"
										type="checkbox" for="200above">200 - Above</label></li>
							</ul>
						</div>
						<!--/ End Shop By Price -->
					</div>
				</div>
				<div class="col-lg-9 col-md-8 col-12">
					<div class="row">
						<div class="col-12">
							<!-- Shop Top -->
							<div class="shop-top">
								<div class="shop-shorter">
									<div class="single-shorter">
										
									</div>
								</div>
								<ul class="view-mode">
									<li class="active"><a href="shop-grid.html"><i
											class="fa fa-th-large"></i></a></li>
									<li><a href="shop-list.html"><i class="fa fa-th-list"></i></a></li>
								</ul>
							</div>
							<!--/ End Shop Top -->
						</div>
					</div>
					<div class="row" id="content">
						<c:forEach items="${listP}" var="o">
							<!-- product -->
							<div class="col-lg-4 col-md-6 col-12">
								<div class="single-product">
									<div class="product-img">
										<a href="detail?pid=${o.id}"> <img class="default-img"
											src="${o.image }" alt="#">
										</a>
										<div class="button-head">
											<div class="product-action-2">
												<a title="Add to cart" href="#">Add to cart</a>
											</div>
										</div>
									</div>
									<div class="product-content">
										<h3>
											<a href="detail?pid=${o.id}">${o.name }</a>
										</h3>
										<div class="product-price">
											<span>${o.price }$</span>
										</div>
									</div>
								</div>
							</div>
							<!-- product -->
						</c:forEach>
					</div>
					<div class="container">

						<div class="pagination p1">
							<ul>
								<c:if test="${tag != 1}">
									<a href="shop?index=${tag-1 }"><li><</li></a>
								</c:if>

								<c:forEach begin="1" end="${endPage }" var="i">
									<a class="${tag==i?" is-active":""}" href="shop?index=${i }"><li>${i }</li></a>
								</c:forEach>

								<c:if test="${tag != endPage}">
									<a href="shop?index=${tag+1 }"><li>></li></a>
								</c:if>

							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ End Product Style 1  -->


	<jsp:include page="Footer.jsp"></jsp:include>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

	<script>
		function load(cateid){
			 $.ajax({
		        url: "/WebsiteBookStore/categoryShop",
		        type: "get", //send it through get method
		        data: {
		            cid: cateid
		        },
		        success: function (responseData) {
		            document.getElementById("content").innerHTML = responseData;
		        }
		    });
		}  
		function searchByName(param){
		   var txtSearch = param.value;
		   $.ajax({
		       url: "/WebsiteBookStore/searchAjaxShop",
		       type: "get", //send it through get method
		       data: {
		           txt: txtSearch
		       },
		       success: function (data) {
		           var row = document.getElementById("content");
		           row.innerHTML = data;
		       },
		       error: function (xhr) {
		           //Do Something to handle error
		       }
		   });
		}
		function searchByPriceMinToMax(){
		   var numMin = document.getElementById("priceMin").value;
		   var numMax = document.getElementById("priceMax").value;
		   $.ajax({
		       url: "/WebsiteBookStore/searchAjaxPriceMinToMax",
		       type: "get", //send it through get method
		       data: {
		           priceMin: numMin,
		           priceMax: numMax
		       },
		       success: function (data) {
		           var row = document.getElementById("content");
		           row.innerHTML = data;
		       },
		       error: function (xhr) {
		           //Do Something to handle error
		       }
		   });
		}
		function searchByPriceUnder100(){
		   $.ajax({
		       url: "/WebsiteBookStore/searchAjaxPriceUnder100Shop",
		       type: "get", //send it through get method
		       data: {
		          
		       },
		       success: function (data) {
		           var row = document.getElementById("content");
		           row.innerHTML = data;
		       },
		       error: function (xhr) {
		           //Do Something to handle error
		       }
		   });
		}
		function searchByPrice100To200(){
		   $.ajax({
		       url: "/WebsiteBookStore/searchAjaxPrice100To200Shop",
		       type: "get", //send it through get method
		       data: {
		          
		       },
		       success: function (data) {
		           var row = document.getElementById("content");
		           row.innerHTML = data;
		       },
		       error: function (xhr) {
		           //Do Something to handle error
		       }
		   });
		}
		function searchByPriceAbove200(){
		   $.ajax({
		       url: "/WebsiteBookStore/searchAjaxPriceAbove200Shop",
		       type: "get", //send it through get method
		       data: {
		          
		       },
		       success: function (data) {
		           var row = document.getElementById("content");
		           row.innerHTML = data;
		       },
		       error: function (xhr) {
		           //Do Something to handle error
		       }
		   });
		}
		
		function loadAmountCart(){
			 $.ajax({
		        url: "/WebsiteBookStore/loadAllAmountCart",
		        type: "get", //send it through get method
		        data: {
		            
		        },
		        success: function (responseData) {
		            document.getElementById("amountCart").innerHTML = responseData;
		        }
		    });
		}      
		
	</script>



	<!-- Footer -->



	<!-- Jquery -->
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
	<!-- Fancybox JS -->
	<script src="js/facnybox.min.js"></script>
	<!-- Waypoints JS -->
	<script src="js/waypoints.min.js"></script>
	<!-- Countdown JS -->
	<script src="js/finalcountdown.min.js"></script>
	<!-- Nice Select JS -->
	<script src="js/nicesellect.js"></script>
	<!-- Ytplayer JS -->
	<script src="js/ytplayer.min.js"></script>
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