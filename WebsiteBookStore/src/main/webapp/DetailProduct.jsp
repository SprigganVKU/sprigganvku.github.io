

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Detail Product</title>
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
<body class="js">
	<jsp:include page="Menu.jsp"></jsp:include>

	<!-- Product Details Section Begin -->
	<section class="product-details spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 col-md-6">
					<div class="product__details__pic">
						<div class="product__details__pic__item">
							<img class="product__details__pic__item--large"
								src="${detail.image}" alt="">
						</div>
						<div class="product__details__pic__slider owl-carousel"></div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="product__details__text">
						<h3>${detail.name}</h3>
						<!-- <div class="product__details__rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                            <span>(18 reviews)</span>
                        </div>  -->
						<div class="product__details__price">$50.00</div>
						<p>${detail.description}</p>
						<form action="addCart?pid=${detail.id }" method="post">
							<div class="product__details__quantity">
								<div class="quantity">
									<div class="pro-qty">
										<input min="0" name="quantity" type="number" value="1">
									</div>
								</div>
							</div>
							<button type="submit" class="primary-btn">ADD TO CARD</button>
						</form>





						<ul>
							<li><b>Availability</b> <span>In Stock</span></li>
							<li><b>Shipping</b> <span>01 day shipping. <samp>Free
										pickup today</samp></span></li>
							<li><b>Delivery</b> <span>${detail.delivery }</span></li>


						</ul>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="product__details__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#tabs-1" role="tab" aria-selected="true">Description</a>
							</li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-2" role="tab" aria-selected="false">Information</a>
							</li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#tabs-3" role="tab" aria-selected="false">Reviews <span>(${countAllReview })</span></a>
							</li>
						</ul>
						<div class="tab-content">
							<div class="tab-pane active" id="tabs-1" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Products Infomation</h6>
									<p>${detail.description}</p>

								</div>
							</div>
							<div class="tab-pane" id="tabs-2" role="tabpanel">
								<div class="product__details__tab__desc">
									<h6>Products Infomation</h6>
									<p>Vestibulum ac diam sit amet quam vehicula elementum sed
										sit amet dui. Pellentesque in ipsum id orci porta dapibus.
										Proin eget tortor risus. Vivamus suscipit tortor eget felis
										porttitor volutpat. Vestibulum ac diam sit amet quam vehicula
										elementum sed sit amet dui. Donec rutrum congue leo eget
										malesuada. Vivamus suscipit tortor eget felis porttitor
										volutpat. Curabitur arcu erat, accumsan id imperdiet et,
										porttitor at sem. Praesent sapien massa, convallis a
										pellentesque nec, egestas non nisi. Vestibulum ac diam sit
										amet quam vehicula elementum sed sit amet dui. Vestibulum ante
										ipsum primis in faucibus orci luctus et ultrices posuere
										cubilia Curae; Donec velit neque, auctor sit amet aliquam vel,
										ullamcorper sit amet ligula. Proin eget tortor risus.</p>
									<p>Praesent sapien massa, convallis a pellentesque nec,
										egestas non nisi. Lorem ipsum dolor sit amet, consectetur
										adipiscing elit. Mauris blandit aliquet elit, eget tincidunt
										nibh pulvinar a. Cras ultricies ligula sed magna dictum porta.
										Cras ultricies ligula sed magna dictum porta. Sed porttitor
										lectus nibh. Mauris blandit aliquet elit, eget tincidunt nibh
										pulvinar a.</p>
								</div>
							</div>
							<div class="tab-pane" id="tabs-3" role="tabpanel">
								<div class="product__details__tab__desc">

									<div class="row" >
										<div id="reviews" class="col-md-6">
											<h4 class="mb-4">${countAllReview} review for
												${detail.name }</h4>
											<c:forEach items="${listAllReview}" var="r">
												<c:forEach items="${listAllAcount}" var="a">
													<c:if test="${r.accountID == a.id }">
														<div class="media mb-4">
															<img src="img/user.jpg" alt="Image"
																class="img-fluid mr-3 mt-1" style="width: 45px;">
															<div class="media-body">
																<h6>
																	${a.user }<small> - <i>${r.dateReview }</i></small>
																</h6>

																<p>${r.contentReview }</p>
															</div>
														</div>
													</c:if>
												</c:forEach>
											</c:forEach>



										</div>


										<div class="col-md-6">
											<h4 class="mb-4">Leave a review</h4>

											<form>
												<div class="form-group">
													<label for="message">Your Review *</label>
													<textarea id="form76" cols="30" rows="5"
														class="form-control"></textarea>
												</div>

												
													<button type="button" class="btn"
														onclick="addReview(${detail.id})">Submit</button>

												
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Product Details Section End -->




	<jsp:include page="Footer.jsp"></jsp:include>
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

		function addReview(pID) {
			var cntReview = document.getElementById("form76").value;
			$.ajax({
				url : "/WebsiteBookStore/addReview",
				type : "get", //send it through get method
				data : {
					productID : pID,
					contentReview : cntReview
				},
				success : function(data) {
					var row = document.getElementById("reviews");
					row.innerHTML += data;
				},
				error : function(xhr) {
					//Do Something to handle error
				}
			});
		}
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
