	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Titlee  -->
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
							<li><a href="#">CINE</a>
								<div class="megamenu">
									<ul class="single-mega cn-col-4">
										<li class="title"><a href="ServletPeliculas?operacion=actores">Actores</a></li>
										
										
									</ul>
									<ul class="single-mega cn-col-4">
										<li class="title"><a href="ServletPeliculas?operacion=peliculas">Peliculas</a></li>
                                    	
									</ul>
									<ul class="single-mega cn-col-4">
										<li class="title"><a href="ServletPeliculas?operacion=directores">Directores</a></li>
									
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
					<a href="formularioPeliculas.jsp">Admin</a>
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

   

    <!-- ##### Single Product Details Area Start ##### -->
    <section class="single_product_details_area d-flex align-items-center">

        <!-- Single Product Thumb -->
        <div class="single_product_thumb clearfix">
            
                <img src="${Pelicula.img}" alt="">
                
            </div>
        </div>
        
         <!-- Form -->
           <!--  <form class="cart-form clearfix" method="post">
                Select Box
                <div class="select-box d-flex mt-50 mb-30">
                    <select name="select" id="productSize" class="mr-5">
                        <option value="value">Size: XL</option>
                        <option value="value">Size: X</option>
                        <option value="value">Size: M</option>
                        <option value="value">Size: S</option>
                    </select>
                    <select name="select" id="productColor">
                        <option value="value">Color: Black</option>
                        <option value="value">Color: White</option>
                        <option value="value">Color: Red</option>
                        <option value="value">Color: Purple</option>
                    </select>
                </div>
            </form> -->
          

        <!-- Single Product Description -->
        <div class="single_product_desc clearfix">
            <span>${Pelicula.director}</span>
            <!-- <a href="cart.html"> -->
                <h2>${Pelicula.titulo}</h2>
            </a>
            
           

            
                <div >
                    <span><b>VISTA:</b>&nbsp ${Pelicula.vista}</span>
                    <span><b>ESTRENO:</b>&nbsp ${Pelicula.fechaEstreno}</span>
                    <span><b>SINOPSIS:</b>&nbsp ${Pelicula.sinopsis}</span>
                </div>

                <!-- Cart & Favourite Box -->
                <div class="cart-fav-box d-flex align-items-center">
                    <!-- Cart -->
                    <!-- <button type="submit" name="addtocart" value="5" class="btn essence-btn">Add to cart</button> -->
                    <!-- Favourite -->
                   <!--  <div class="product-favourite ml-4">
                        <a href="#" class="favme fa fa-heart"></a>
                    </div> -->
                </div>
        </div>
    </section>
    <!-- ##### Single Product Details Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer_area clearfix">
        <div class="container">
            <div class="row">
                <!-- Single Widget Area -->
                <div class="col-12 col-md-6">
                    <div class="single_widget_area d-flex mb-30">
                        <!-- Logo -->
                        <div class="footer-logo mr-50">
                            <a href="#"><img src="img/core-img/logo2.png" alt=""></a>
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