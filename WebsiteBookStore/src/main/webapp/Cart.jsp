

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cart</title>
<!-- Favicon -->
<link rel="icon" type="image/png" href="images/favicon.png">
<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">


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

<body class="js" onload="loadTotalMoney()">
	<jsp:include page="Menu.jsp"></jsp:include>




	<!-- Shopping Cart -->
	<div class="shopping-cart section">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<!-- Shopping Summery -->
					<table class="table shopping-summery">
						<thead>
							<tr class="main-hading">
								<th>PRODUCT</th>
								<th>NAME</th>

								<th class="text-center">QUANTITY</th>
								<th class="text-center">TOTAL</th>
								<th class="text-center"><i class="ti-trash remove-icon"></i></th>
							</tr>
						</thead>
						<tbody>

							<c:forEach items="${listCart}" var="o">
								<c:forEach items="${listProduct}" var="p">
									<c:if test="${o.productID == p.id}">
										<tr>
											<td class="image" data-title="No"><img src="${p.image}"
												alt="#"></td>
											<td class="product-des" data-title="Description">
												<p class="product-name">
													<a href="#">${p.name}</a>
												</p>
												<p class="product-des">${p.description}</p>
											</td>

											<td class="qty" data-title="Qty">
												<div class="buttons_added">
													<a
														href="subAmountCart?productID=${o.productID}&amount=${o.amount}">
														<input class="minus is-form" type="button" value="-">
													</a> <a
														href="addAmountCart?productID=${o.productID}&amount=${o.amount}">
														<input aria-label="quantity" class="input-qty"
														max="Số tối đa" min="Số tối thiểu" name="" type="number"
														value="${o.amount}"> <input class="plus is-form"
														type="button" value="+">
													</a>
												</div>
											</td>
											<td class="total-amount" data-title="Total"><span>${p.price}$</span></td>
											<td class="action" data-title="Remove"><a
												href="deleteCart?productID=${o.productID }"><i
													class="ti-trash remove-icon"></i></a></td>
										</tr>
									</c:if>
								</c:forEach>
							</c:forEach>


						</tbody>
					</table>
					<!--/ End Shopping Summery -->
				</div>
			</div>
			<div class="row">
				<div class="col-12">
					<!-- Total Amount -->
					<div class="total-amount">
						<div class="row">
							<div class="col-lg-8 col-md-5 col-12"></div>
							<div class="col-lg-4 col-md-7 col-12">
								<div class="right">
									<ul id="contentTotalMoney">

									</ul>
									<div class="button5">
										<a href="order" class="btn">Checkout</a> <a href="shop"
											class="btn">Continue shopping</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--/ End Total Amount -->
				</div>
			</div>
		</div>
	</div>


	<jsp:include page="Footer.jsp"></jsp:include>
	<!--/ End Shopping Cart -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		function loadTotalMoney() {
			$
					.ajax({
						url : "/WebsiteBookStore/totalMoneyCart",
						type : "get", //send it through get method
						data : {

						},
						success : function(responseData) {
							document.getElementById("contentTotalMoney").innerHTML = responseData;
						}
					});
		}

		window
				.addEventListener(
						"load",
						function loadAmountCart() {
							$
									.ajax({
										url : "/WebsiteBookStore/loadAllAmountCart",
										type : "get", //send it through get method
										data : {

										},
										success : function(responseData) {
											document
													.getElementById("amountCart").innerHTML = responseData;
										}
									});
						}, false);
	</script>

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

