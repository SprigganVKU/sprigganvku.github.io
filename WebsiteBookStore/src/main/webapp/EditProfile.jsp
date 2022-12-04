<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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

<title>Edit Profile</title>

<!-- Favicon -->
<link rel="icon" type="image/png" href="images/favicon.png">
<!-- Web Font -->
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap"
	rel="stylesheet">

<!-- StyleSheet -->
<!-- Style -->
<link href="css/login.css" rel="stylesheet" type="text/css" />
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
<body>
	<jsp:include page="Menu.jsp"></jsp:include>
	<!-- Start Checkout -->
	<section class="shop checkout section">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 col-12">
					<p class="text-success">${mess}</p>
					<p class="text-danger">${error}</p>
					<div class="checkout-form">
						<h2 style="">Edit Profile</h2>
						<p>Please fill in the correct information</p>
						<!-- Form -->
						<form class="form" action="editProfile" method="post">
							<div class="row">
								<div class="col-lg-12 col-md-12 col-12">
									<div class="form-group">
										<label>Username</label> <input value="${sessionScope.acc.user }" type="text" name="username"
											placeholder="" required="required">
									</div>
								</div>

								<div class="col-lg-12 col-md-12 col-12">
									<div class="form-group">
										<label>Password</label> <input value="${sessionScope.acc.pass }" type="text" name="password"
											placeholder="" required="required">
									</div>
								</div>

								<div class="col-lg-12 col-md-12 col-12">
									<div class="form-group">
										<label>Email</label> <input value="${sessionScope.acc.email }" type="email" name="email"
											placeholder="" required="required">
									</div>
								</div>


							</div>
							<!-- Button Widget -->

							<!-- Button Widget -->
							<div class="single-widget get-button">
								<div class="content" style="padding: 3rem 0">
									<div class="button" ">
										<button style="width: 40%" type="submit" class="btn">Edit</button>
									</div>
								</div>
							</div>
							<!--/ End Button Widget -->

							<!--/ End Button Widget -->
						</form>
						<!--/ End Form -->
					</div>
				</div>

			</div>
		</div>
	</section>
	<!--/ End Checkout -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>


	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

	<script>
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
</body>
</html>