<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Order</title>

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

	<!-- Start Checkout -->
	<section class="shop checkout section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-12">
					<c:if test="${error!=null }">
						<div class="alert alert-danger" role="alert">${error}</div>
					</c:if>
					<c:if test="${mess!=null }">
						<div class="alert alert-success" role="alert">${mess}</div>
					</c:if>
					<div class="checkout-form">
						<h2>Make Your Checkout Here</h2>
						<p>Please fill in the correct contact information</p>
						<!-- Form -->
						<form class="form" action="order" method="post">
							<div class="row">
								<div class="col-lg-12 col-md-12 col-12">
									<div class="form-group">
										<label>Full Name<span>*</span></label> <input type="text"
											name="name" placeholder="" required="required">
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-12">
									<div class="form-group">
										<label>Email Address<span>*</span></label> <input type="email"
											name="email" placeholder="" required="required">
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-12">
									<div class="form-group">
										<label>Phone Number<span>*</span></label> <input type="number"
											name="phoneNumber" placeholder="" required="required">
									</div>
								</div>
								<div class="col-lg-12 col-md-12 col-12">
									<div class="form-group">
										<label>Address<span>*</span></label> <input type="text"
											name="deliveryAddress" placeholder="" required="required">
									</div>
								</div>
							</div>
							<!-- Button Widget -->

							<!-- Button Widget -->
							<div style="margin-top: 40px;" class="single-widget get-button">
								<div class="content">
									<div class="button">
										<button type="submit" class="btn">proceed to checkout</button>
									</div>
								</div>
							</div>
							<!--/ End Button Widget -->

							<!--/ End Button Widget -->
						</form>
						<!--/ End Form -->
					</div>
				</div>
				<div class="col-lg-4 col-12">
					<div class="order-details">
						<!-- Order Widget -->
						<div class="single-widget">
							<h2>CART TOTALS</h2>
							<div class="content">
								<ul id="contentTotalMoney">
								</ul>
							</div>
						</div>
						<!--/ End Order Widget -->
						<!-- Order Widget -->
						<div class="single-widget">
							<h2>Payments</h2>
							<div class="content">
								<div class="checkbox"></div>
							</div>
						</div>
						<!--/ End Order Widget -->
						<!-- Payment Method Widget -->
						<div class="single-widget payement">
							<div class="content">
								<img src="images/payment-method.png" alt="#">
							</div>
						</div>
						<!--/ End Payment Method Widget -->

					</div>
				</div>
			</div>
		</div>
	</section>
	<!--/ End Checkout -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

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


	<jsp:include page="Footer.jsp"></jsp:include>
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