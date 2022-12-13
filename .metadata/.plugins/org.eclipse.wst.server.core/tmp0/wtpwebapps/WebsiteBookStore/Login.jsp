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
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap"
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

<title>Login Form</title>
</head>
<body>
	<jsp:include page="Menu.jsp"></jsp:include>

	<div class="d-lg-flex half">
		<div class="bg order-1 order-md-2"
			style="background-image: url('images/banner-login.png');"></div>
		<div class="contents order-2 order-md-1">

			<div class="container">
				<div class="row align-items-center justify-content-center">
					<div class="col-md-7">
						<c:if test="${error!=null }">
							<div class="alert alert-danger" role="alert">${error}</div>
						</c:if>
						<c:if test="${mess!=null }">
							<div class="alert alert-success" role="alert">${mess}</div>
						</c:if>
						<!-- Login -->
						<form class="form-signin" action="#" method="post" action="login">
							<h3 style="margin-bottom: 40px;">Login</h3>
							<div class="form-group first">
								<label for="username">Username</label> <input type="text"
									value="${username }" class="form-control"
									placeholder="username" id="username" name="user">
							</div>
							<div class="form-group last mb-3">
								<label for="password">Password</label> <input type="password"
									value="${password }" class="form-control"
									placeholder="password" id="password" name="pass">
							</div>

							<div class="d-flex mb-5 align-items-center">
								<label class="control control--checkbox mb-0"><span
									class="caption">Remember me</span> <input type="checkbox"
									checked="checked" />
									<div class="control__indicator"></div> </label> <span class="ml-auto"><a
									href="register.jsp" class="forgot-pass">Register</a> </span>
							</div>
							<input type="submit" value="Log In"
								class="btn btn-block btn-primary">
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/popper.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>