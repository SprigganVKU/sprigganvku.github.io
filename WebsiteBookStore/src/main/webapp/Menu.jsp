<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!-- Header -->
<header class="header shop">
	<!-- Topbar -->
	<div class="topbar">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-12 col-12">
					<!-- Top Left -->
					<div class="top-left">
						<ul class="list-main">
							<li><i class="ti-headphone-alt"></i> +0123 456 789</li>
							<li><i class="ti-email"></i> ebookstore.final@gmail.com</li>
						</ul>
					</div>
					<!--/ End Top Left -->
				</div>
				<div class="col-lg-8 col-md-12 col-12">
					<!-- Top Right -->
					<div class="right-content">
						<ul class="list-main">
							<li><i class="ti-location-pin"></i> Store location</li>
							<li><i class="ti-alarm-clock"></i> <a href="#">Daily
									deal</a></li>

							<c:if test="${sessionScope.acc != null}">
								<li><i class="ti-user"></i> <a href="#">${sessionScope.acc.user}</a></li>
								<li><i class="ti-power-off"></i><a href="logout">Logout</a></li>
							</c:if>
							<c:if test="${sessionScope.acc == null}">
								<li><i class="ti-user"></i> <a href="#">My Account</a></li>
								<li><i class="ti-power-off"></i><a href="login">Login</a></li>
							</c:if>
						</ul>
					</div>
					<!-- End Top Right -->
				</div>
			</div>
		</div>
	</div>
	<!-- End Topbar -->
	<div class="middle-inner">
		<div class="container">
			<div class="row">
				<div class="col-lg-2 col-md-2 col-12">
					<!-- Logo -->
					<div class="logo">
						<a href="index.html"><img src="images/logo.png" alt="logo"></a>
					</div>
					<!--/ End Logo -->
					<!-- Search Form -->
					<div class="search-top">
						<div class="top-search">
							<a href="#0"><i class="ti-search"></i></a>
						</div>
						<!-- Search Form -->
						<div class="search-top">
							<form class="search-form">
								<input type="text" placeholder="Search here..." name="search">
								<button value="search" type="submit">
									<i class="ti-search"></i>
								</button>
							</form>
						</div>
						<!--/ End Search Form -->
					</div>
					<!--/ End Search Form -->
					<div class="mobile-nav"></div>
				</div>
				<div class="col-lg-8 col-md-7 col-12"></div>
				<div class="col-lg-2 col-md-3 col-12">
					<div class="right-bar">
						<!-- Search Form -->
						<div class="sinlge-bar shopping">
							<a href="managerCart" class="single-icon"><i class="ti-bag"></i> <id="amountCart" span
								class="total-count">2</span></a>

						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Header Inner -->
	<div class="header-inner">
		<div class="container">
			<div class="cat-nav-head">
				<div class="row">
					<div class="col-lg-3"></div>
					<div class="col-lg-9 col-12">
						<div class="menu-area">
							<!-- Main Menu -->
							<nav class="navbar navbar-expand-lg">
								<div class="navbar-collapse">
									<div class="nav-inner">
										<ul class="nav main-menu menu navbar-nav">
											<li><a href="home">Home</a></li>
											<li><a href="shop">Shop</a></li>
											<li><a href="home#newbooks">New Book</a></li>
											<li><a href="home#service">Service</a></li>
											<li><a href="contact.html">Contact Us</a></li>
											<c:if test="${sessionScope.acc == null}">
												<li><a href="forgotPassword">Forgot Password</a></li>
											</c:if>
											<c:if test="${sessionScope.acc != null}">
												<li><a href="EditProfile.jsp">Edit Profile</a></li>
											</c:if>
										</ul>
									</div>
								</div>
							</nav>
							<!--/ End Main Menu -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ End Header Inner -->
</header>
<!--/ End Header -->
