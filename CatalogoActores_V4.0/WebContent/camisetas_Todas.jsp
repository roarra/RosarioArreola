<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>La Casa de las Camisetas</title>

<!-- Favicon  -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css">
<link rel="stylesheet" href="style.css">

</head>

<body>
	<!-- ##### Header Area Start ##### -->
	<header class="header_area">
		<div
			class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
			<!-- Classy Menu -->
			<nav class="classy-navbar" id="essenceNav">
				<!-- Logo -->
				<a class="nav-brand" href="index.html">INICIO</a>
				<!-- Navbar Toggler -->
				<div class="classy-navbar-toggler">
					<span class="navbarToggler"><span></span><span></span><span></span></span>
				</div>
				<!-- Menu -->
				<div class="classy-menu">
					<!-- close btn -->
					<div class="classycloseIcon">
						<div class="cross-wrap">
							<span class="top"></span><span class="bottom"></span>
						</div>
					</div>
					<!-- Nav Start -->
					<div class="classynav">
						<ul>
							<li><a href="#">Categoria</a>
								<div class="megamenu">
									<ul class="single-mega cn-col-4">
										<li class="title"><a href="ServletListado?operacion=3&genero=HOMBRE">HOMBRE</a></li>
										<li><a href="ServletListado?operacion=4&genero=HOMBRE&categoria=MANGA_CORTA">Manga corta</a></li>
                                    	<li><a href="ServletListado?operacion=4&genero=HOMBRE&categoria=TIRANTES">Tirantes</a></li>
                                    	<li><a href="ServletListado?operacion=4&genero=HOMBRE&categoria=MANGA_LARGA">Manga larga</a></li>
									</ul>
									<ul class="single-mega cn-col-4">
										<li class="title"><a href="ServletListado?operacion=3&genero=MUJER">MUJER</a></li>
                                    	<li><a href="ServletListado?operacion=4&genero=MUJER&categoria=MANGA_CORTA">Manga corta</a></li>
                                    	<li><a href="ServletListado?operacion=4&genero=MUJER&categoria=TIRANTES">Tirantes</a></li>
                                    	<li><a href="ServletListado?operacion=4&genero=MUJER&categoria=MANGA_LARGA">Manga larga</a></li>
									</ul>
									<div class="single-mega cn-col-4">
										<img src="img/camisetas/patopeque.jpg" alt="">
									</div>
								</div>
						</ul>
					</div>
					<!-- Nav End -->
				</div>
			</nav>

			<!-- Header Meta Data -->
			<div class="header-meta d-flex clearfix justify-content-end">
				<!-- Search Area -->
				<div class="search-area">
					<form action="ServletBarraBusqueda" method="POST">
						<input type="search" name="search" id="headerSearch"
							placeholder="Type for search">
						<button type="submit">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</form>
				</div>
				<!-- Favourite Area -->
				<!--<div class="favourite-area">
					<a href="#"><img src="img/core-img/heart.svg" alt=""></a>
				</div>
				-->
				<!-- User Login Info -->
				<div class="user-login-info">
					<a href="login.jsp"><img src="img/core-img/user.svg" alt=""></a>
				</div>
				<!-- Cart Area -->
				<!--<div class="cart-area">
					<a href="#" id="essenceCartBtn"><img src="img/core-img/bag.svg"
						alt=""> <span>3</span></a>
				</div>-->
			</div>

		</div>
	</header>
	<!-- ##### Header Area End ##### -->

	<!-- ##### Right Side Cart Area ##### -->
	<div class="cart-bg-overlay"></div>

	<div class="right-side-cart-area">

		<!-- Cart Button -->
		<div class="cart-button">
			<a href="#" id="rightSideCart"><img src="img/core-img/bag.svg"
				alt=""> <span>3</span></a>
		</div>

		<div class="cart-content d-flex">

			<!-- Cart List Area -->
			<div class="cart-list">
				<!-- Single Cart Item -->
				<div class="single-cart-item">
					<a href="#" class="product-image"> <img
						src="img/product-img/product-1.jpg" class="cart-thumb" alt="">
						<!-- Cart Item Desc -->
						<div class="cart-item-desc">
							<span class="product-remove"><i class="fa fa-close"
								aria-hidden="true"></i></span> <span class="badge">Mango</span>
							<h6>Button Through Strap Mini Dress</h6>
							<p class="size">Size: S</p>
							<p class="color">Color: Red</p>
							<p class="price">$45.00</p>
						</div>
					</a>
				</div>

				<!-- Single Cart Item -->
				<div class="single-cart-item">
					<a href="#" class="product-image"> <img
						src="img/product-img/product-2.jpg" class="cart-thumb" alt="">
						<!-- Cart Item Desc -->
						<div class="cart-item-desc">
							<span class="product-remove"><i class="fa fa-close"
								aria-hidden="true"></i></span> <span class="badge">Mango</span>
							<h6>Button Through Strap Mini Dress</h6>
							<p class="size">Size: S</p>
							<p class="color">Color: Red</p>
							<p class="price">$45.00</p>
						</div>
					</a>
				</div>

				<!-- Single Cart Item -->
				<div class="single-cart-item">
					<a href="#" class="product-image"> <img
						src="img/product-img/product-3.jpg" class="cart-thumb" alt="">
						<!-- Cart Item Desc -->
						<div class="cart-item-desc">
							<span class="product-remove"><i class="fa fa-close"
								aria-hidden="true"></i></span> <span class="badge">Mango</span>
							<h6>Button Through Strap Mini Dress</h6>
							<p class="size">Size: S</p>
							<p class="color">Color: Red</p>
							<p class="price">$45.00</p>
						</div>
					</a>
				</div>
			</div>

			<!-- Cart Summary -->
			<div class="cart-amount-summary">

				<h2>Summary</h2>
				<ul class="summary-table">
					<li><span>subtotal:</span> <span>$274.00</span></li>
					<li><span>delivery:</span> <span>Free</span></li>
					<li><span>discount:</span> <span>-15%</span></li>
					<li><span>total:</span> <span>$232.00</span></li>
				</ul>
				<div class="checkout-btn mt-100">
					<a href="checkout.html" class="btn essence-btn">check out</a>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Right Side Cart End ##### -->

	<!-- ##### Breadcumb Area Start ##### -->
	<div class="breadcumb_area bg-img"
		style="background-image: url(img/bg-img/breadcumb.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="page-title text-center">
						<h2>TODAS LAS QUACKMISETAS</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### Breadcumb Area End ##### -->

	<!-- ##### Shop Grid Area Start ##### -->
	<section class="shop_grid_area section-padding-80">
		<div class="container">
			<div class="row">
				<div class="col-12 col-md-4 col-lg-3">
					<div class="shop_sidebar_area">

						<!-- ##### Single Widget ##### -->
						<div class="widget catagory mb-50">
							<!-- Widget Title -->
							<h6 class="widget-title mb-30">CATEGORIA</h6>

							<!--  Catagories  -->
							<div class="catagories-menu">
								<ul id="menu-content2" class="menu-content collapse show">
									<!-- Single Item -->
									<li><a href="ServletListado?operacion=3&genero=HOMBRE">Hombre</a>
										<ul class="sub-menu collapse show" id="clothing">
											<li><a href="ServletListado?operacion=4&genero=HOMBRE&categoria=MANGA_CORTA">Camiseta Maga Corta</a></li>
												<ul>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=MANGA_CORTA&talla=S">Talla S</a></li>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=MANGA_CORTA&talla=M">Talla M</a></li>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=MANGA_CORTA&talla=L">Talla L</a></li>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=MANGA_CORTA&talla=XL">Talla XL</a></li>
													<br>
												</ul>
											<li><a href="ServletListado?operacion=4&genero=HOMBRE&categoria=TIRANTES">Camiseta Tirantes</a></li>
												<ul>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=TIRANTES&talla=S">Talla S</a></li>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=TIRANTES&talla=M">Talla M</a></li>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=TIRANTES&talla=L">Talla L</a></li>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=TIRANTES&talla=XL">Talla XL</a></li>
													<br>
												</ul>
											<li><a href="ServletListado?operacion=4&genero=HOMBRE&categoria=MANGA_LARGA">Camiseta Manga Larga</a></li>
												<ul>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=MANGA_LARGA&talla=S">Talla S</a></li>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=MANGA_LARGA&talla=M">Talla M</a></li>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=MANGA_LARGA&talla=L">Talla L</a></li>
													<li><a href="ServletListado?operacion=5&genero=HOMBRE&categoria=MANGA_LARGA&talla=XL">Talla XL</a></li>
													<br>
												</ul>
										</ul>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>

				<div class="col-12 col-md-8 col-lg-9">
					<div class="shop_grid_product_area">
						<div class="row">
							<div class="col-12">
								<div
									class="product-topbar d-flex align-items-center justify-content-between">
									<!-- Total Products -->
									<div class="total-products">
										<p>
											<span>${fn:length(Lista)}</span> productos encontrados
										</p>
									</div>
								</div>
							</div>
						</div>



						<div class="row">
							<c:forEach var="mi" items="${Lista}">
								<!-- Single Product -->
								<div class="col-12 col-sm-6 col-lg-4">
									<div class="single-product-wrapper">
										<!-- Product Image -->
										<div class="product-img">
											<%-- <img src="${mi.url}" alt=""> --%>
											<!-- Hover Thumb -->
											<img class="hover-img" src="${mi.img}" alt="">
<!-- 											Product Badge
											<div class="product-badge offer-badge">
												<span>-30%</span>
											</div> -->
<!-- 											Favourite
											<div class="product-favourite">
												<a href="#" class="favme fa fa-heart"></a>
											</div> -->
										</div>

										<!-- Product Description -->
										<div class="product-description">
											<%-- <span>${mi.categoria}</span> --%>
											<p class="product-price">Titulo ${mi.titulo}  -  ${mi.director}</p>
												<h6><a href="ServletListado?operacion=1&id=${mi.idActores}" class="btn essence-btn">FICHA TÉCNICA</a></h6>
											<!-- Hover Content -->
											<div class="hover-content">
												<!-- Add to Cart -->
<!-- 												<div class="add-to-cart-btn">
													<a href="#" class="btn essence-btn">Add to Cart</a>
												</div> -->
											</div>
										</div>
									</div>
								</div>

							</c:forEach>




						</div>
					</div>
					<!-- Pagination -->
					<!-- <nav aria-label="navigation">
						<ul class="pagination mt-50 mb-70">
							<li class="page-item"><a class="page-link" href="#"><i
									class="fa fa-angle-left"></i></a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">...</a></li>
							<li class="page-item"><a class="page-link" href="#">21</a></li>
							<li class="page-item"><a class="page-link" href="#"><i
									class="fa fa-angle-right"></i></a></li>
						</ul>
					</nav> -->
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Shop Grid Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer_area clearfix">
        <div class="container">
            <div class="row">
                <!-- Single Widget Area -->
                <div class="col-12 col-md-6">
                    <div class="single_widget_area d-flex mb-30">
                        <!-- Logo -->
                        <div class="footer-logo mr-50">
                            <a href="#"></a>
                        </div>
                        <!-- Footer Menu -->
                        <div class="footer_menu">
                            <ul>
                   
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                
                <!-- Single Widget Area -->
                <div class="col-12 col-md-6">
                    <div class="single_widget_area">
                        <div class="footer_social_area">
                            <a href="#" data-toggle="tooltip" data-placement="top" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="Instagram"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="Twitter"><i class="fa fa-twitter" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="Pinterest"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                            <a href="#" data-toggle="tooltip" data-placement="top" title="Youtube"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                        </div>
                    </div>
                </div>
            </div>

			<div class="row mt-5">
                <div class="col-md-12 text-center">
                    
                </div>
            </div>

        </div>
    </footer>
	<!-- ##### Footer Area End ##### -->

	<!-- jQuery (Necessary for All JavaScript Plugins) -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Classy Nav js -->
	<script src="js/classy-nav.min.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>

</body>

</html>