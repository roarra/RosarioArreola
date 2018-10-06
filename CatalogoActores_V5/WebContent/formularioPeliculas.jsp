<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>jQuery UI Accordion - Collapse content</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	function changeInsertarCamisetaDiv() {
		var divId = document.getElementById("desplegableInsertar");
		var currentClass = divId.className;
		if (currentClass == "noMostrar") { // si el elemento ya esta oculto
			divId.className = "mostrar"; // muestro el elemento
		} else {
			divId.className = "noMostrar"; // si el elemento NO esta ocutlo, lo oculto
		}
	}
	function changeModificarCamisetaDiv() {
		var divId = document.getElementById("desplegableModificar");
		var currentClass = divId.className;
		if (currentClass == "noMostrar") { // si el elemento ya esta oculto
			divId.className = "mostrar"; // muestro el elemento
		} else {
			divId.className = "noMostrar"; // si el elemento NO esta ocutlo, lo oculto
		}
	}
	function changeEliminarCamisetaDiv() {
		var divId = document.getElementById("desplegableEliminar");
		var currentClass = divId.className;
		if (currentClass == "noMostrar") { // si el elemento ya esta oculto
			divId.className = "mostrar"; // muestro el elemento
		} else {
			divId.className = "noMostrar"; // si el elemento NO esta ocutlo, lo oculto
		}
	}
	function changeConsultarCamisetaDiv() {
		var divId = document.getElementById("desplegableConsultar");
		var currentClass = divId.className;
		if (currentClass == "noMostrar") { // si el elemento ya esta oculto
			divId.className = "mostrar"; // muestro el elemento
		} else {
			divId.className = "noMostrar"; // si el elemento NO esta ocutlo, lo oculto
		}
	}

	$(function() {
		$("#accordion").accordion({
			collapsible : true
		});
	});
</script>
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>La Casa de las Camisetas</title>

<!-- Favicon  -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/menuAdmin.css">

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
										<li class="title"><a
											href="ServletPeliculas?operacion=actores">Actores</a></li>


									</ul>
									<ul class="single-mega cn-col-4">
										<li class="title"><a
											href="ServletPeliculas?operacion=peliculas">Peliculas</a></li>

									</ul>
									<ul class="single-mega cn-col-4">
										<li class="title"><a
											href="ServletPeliculas?operacion=directores">Directores</a></li>

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


	<!-- ##### Checkout Area Start ##### -->
	<div class="checkout_area section-padding-80">
		<div class="container">
			<div class="row">

				<div class="col-12 col-md-6">
					<div class="checkout_details_area mt-50 clearfix">
						<div class="order-details-confirmation">
							<div class="cart-page-heading mb-30">
								<h3>GESTION PELICULAS</h3>
							</div>


							<form action="ServletFormularioPelicula?operacion=alta"
								method="POST">
								<div class="row">
									<label><a href="#"
										onclick="changeInsertarCamisetaDiv();"><h6>Insertar
												Pelicula</h6></a></label>
									<div id="desplegableInsertar" class="noMostrar">

										<div class="col-md-12 mb-3">
											<label for="apellidos">Titulo</label> <input type="text"
												class="form-control" value="" name="titulo">
										</div>
										<div class="col-12 mb-3">
											<label for="Direccion">Director</label> <input type="text"
												class="form-control mb-3" value="" name="director">

										</div>
										<div class="col-12 mb-3">
											<label for="codigoPostal">Vista</label> <input type="text"
												class="form-control" value="" name="vista">
										</div>
										<!--<div class="col-12 mb-3">
                                    <label for="ciudad">Fecha Estreno</label>
                                    <input type="text" class="form-control"  value="" name="fecha">
                                </div> -->
										<div class="col-12 mb-3">
											<label for="codigoPostal">ID Actores</label> <input
												type="text" class="form-control" value="" name="idactores">
										</div>
										<!-- <div class="col-12 mb-3">
											<label for="provincia">IMG</label> <input type="text"
												class="form-control" value="" name="img">
										</div> -->
										<div class="col col-md-7 col-xl-8">
											<div class="custom-file custom-file-sm">
												<input type="file" name="img"
													data-max-file-size="1048576"
													data-file-error-1="El archivo que has añadido supera el límite máximo de 1 MB. Por favor, selecciona otro archivo."
													id="cardScanFile" class="form-control custom-file-input"><label
													for="cardScanFile" data-initial-value="Elegir archivo"
													class="custom-file-label text-truncate custom-file-label-sm mb-0"
													data-toggle="tooltip" data-placement="bottom"
													style="max-width: 225px;"
													data-original-title="Elegir archivo">Elegir IMAGEN</label>
											</div>
										</div>
										<div class="col-12 mb-3">
											<label for="numero">Sinopsis</label> <input type="text"
												class="form-control" value="" name="sinopsis"> <br>
											<button class="btn essence-btn">Alta</button>
											<br>
										</div>
									</div>
								</div>
							</form>

							<form action="ServletFormularioPelicula?operacion=modificar" method="POST">
								<div class="row">
									<label><a href="#"
										onclick="changeModificarCamisetaDiv();"><h6>Modificar
												Pelicula</h6></a></label>
									<div id="desplegableModificar" class="noMostrar">
										<div class="col-md-12 mb-3">
											<label for="apellidos">Titulo</label> <input type="text"
												class="form-control" value="" name="titulo">
										</div>
										<div class="col-12 mb-3">
											<label for="Direccion">Director</label> <input type="text"
												class="form-control mb-3" value="" name="director">

										</div>
										<div class="col-12 mb-3">
											<label for="codigoPostal">Vista</label> <input type="text"
												class="form-control" value="" name="vista">
										</div>
										<!--<div class="col-12 mb-3">
                                    <label for="ciudad">Fecha Estreno</label>
                                    <input type="text" class="form-control"  value="" name="fecha">
                                </div> -->
										<div class="col-12 mb-3">
											<label for="codigoPostal">ID Actores</label> <input
												type="text" class="form-control" value="" name="idactores">
										</div>
										<!-- <div class="col-12 mb-3">
											<label for="provincia">IMG</label> <input type="text"
												class="form-control" value="" name="img">
										</div> -->
										<div class="col col-md-7 col-xl-8">
											<div class="custom-file custom-file-sm">
												<input type="file" name="img"
													data-max-file-size="1048576"
													data-file-error-1="El archivo que has añadido supera el límite máximo de 1 MB. Por favor, selecciona otro archivo."
													id="cardScanFile" class="form-control custom-file-input"><label
													for="cardScanFile" data-initial-value="Elegir archivo"
													class="custom-file-label text-truncate custom-file-label-sm mb-0"
													data-toggle="tooltip" data-placement="bottom"
													style="max-width: 225px;"
													data-original-title="Elegir archivo">Elegir IMAGEN</label>
											</div>
										</div>
										<div class="col-12 mb-3">
											<label for="numero">Sinopsis</label> <input type="text"
												class="form-control" value="" name="sinopsis"> <br>
											<button class="btn essence-btn">MODIFICAR</button>
											<br>
										</div>
									</div>
								</div>
							</form>

							<form action="ServletFormularioPelicula?operacion=baja" method="POST">
								<div class="row">
									<label><a href="#"
										onclick="changeEliminarCamisetaDiv();"><h6>Eliminar
												Pelicula</h6></a></label>
									<div id="desplegableEliminar" class="noMostrar">
										<div class="col-md-12 mb-3">
											<label for="nombre">TITULO</label> <input type="text"
												class="form-control" value="" name="titulo"> <br>
											<button class="btn essence-btn">ELIMINAR</button>
										</div>
									</div>
								</div>
							</form>

							<form action="ServletFormularioPelicula?operacion=consulta" method="POST">
								<div class="row">
									<label><a href="#"
										onclick="changeConsultarCamisetaDiv();"><h6>Consultar
												Pelicula</h6></a></label>
									<div id="desplegableConsultar" class="noMostrar">
										<div class="col-md-12 mb-3">
											<label for="nombre">TITULO</label> <input type="text"
												class="form-control" value="" name="consulta"> <br>
											<button class="btn essence-btn">Consultar</button>
										</div>
									</div>
							</form>


							<!-- Espacio para la consulta de camisetas -->
							<c:forEach var="mi" items="${Pelicula}">

								<div class="single_product_desc clearfix">

									<div>
										<p>
											<span><b>TITULO: </b>${mi.titulo}</span>
										<p>
											<span><b>DIRECTOR: </b> ${mi.director}</span>
										<p>
											<span><b>VISTA: </b> ${mi.vista}</span>
										<p>
											<span><b>FECHA ESTRENO: </b> ${mi.fechaEstreno}</span>
										<p>
											<span><b>SINOPSIS: </b> ${mi.sinopsis}</span>
										
									</div>
								</div>
							</c:forEach>


						</div>
					</div>
				</div>
			</div>
		</div>
		<br> <br> <br> <br> <br>
	</div>




	<!-- <div class="row">
									<div class="catagories-menu">	
										<ul id="menu-content2" class="menu-content collapse show">
											Single Item
											<form action="ServletCamiseta" method="POST">
											<li data-target="#clothing"><a href="#"><font size=4>Insertar Producto</font></a>
												<ul id="clothing">
													<li><a href="#">Color</a></li>
													<input class="input100" type="text" name="color">
													<li><a href="#">Precio</a></li>
													<input class="input100" type="text" name="precio">
													<li><a href="#">Genero</a></li>
													<input class="input100" type="text" name="genero">
													<li><a href="#">Talla</a></li>
													<input class="input100" type="text" name="talla">
													<li><a href="#">Categoria</a></li>
													<input class="input100" type="text" name="categoria">
													<li><a href="#">Stock</a></li>
													<input class="input100" type="text" name="stock">
													<li><a href="#">Imagen</a></li>
													<input class="input100" type="text" name="url">
													<li><a href="#">Descripción</a></li>
													<input class="input100" type="text" name="descripcion">

												</ul>
											</li>
												<p></p>
												<input type="submit" class="btn essence-btn" value="Alta">
											</form>
											</ul>
											</div>
											</div>
											</div>
											</div>
											</div>
											</div>
											</div>
											</div>
											Single Item
											<form action="ServletCamiseta?operacion=baja" method="POST">
											<li data-target="#shoes"><a href="#"><font size=4>Modificar Producto</font></a>
														
												<ul id="shoes">
													<li><a href="#">Id</a></li>
													<input class="input100" type="text" name="id">
													<li><a href="#">Color</a></li>
													<input class="input100" type="text" name="color">
													<li><a href="#">Precio</a></li>
													<input class="input100" type="text" name="precio">
													<li><a href="#">Genero</a></li>
													<input class="input100" type="text" name="genero">
													<li><a href="#">Talla</a></li>
													<input class="input100" type="text" name="talla">
													<li><a href="#">Categoria</a></li>
													<input class="input100" type="text" name="categoria">
													<li><a href="#">Stock</a></li>
													<input class="input100" type="text" name="stock">
													<li><a href="#">Imagen</a></li>
													<input class="input100" type="text" name="url">
													<li><a href="#">Descripción</a></li>
													<input class="input100" type="text" name="descripcion">

												</ul></li>
												<p></p>
												<input type="submit" class="btn essence-btn" value="Baja">
												</form>  -->
	<!-- Single Item -->
	<!-- <form action="ServletCamiseta?operacion=modificar" method="POST">
											<li data-target="#shoes"><a href="#"><font size=4>Eliminar Producto</font></a>
												<ul id="shoes">
													<li><a href="#">Id</a></li>
													<input class="input100" type="text" name="id">
							
												</ul></li>
												<p></p>
												<input type="submit" class="btn essence-btn" value="Modificar"> -->
	<!-- Single Item -->
	<!-- <form action="ServletCamiseta?operacion=consulta" method="POST">
											<li data-target="#shoes"><a href="#"><font size=4>Consultar Producto</font></a>
														
												<ul id="shoes">
													<li><a href="#">Id</a></li>
													<input class="input100" type="text" name="id">
													
												</ul></li>
												<p></p>
												<input type="submit" class="btn essence-btn" value="Consultar"> -->



	<!--   <div class="col-12 col-md-6 col-lg-5 ml-lg-auto">
                    <div class="order-details-confirmation">

                        <div class="cart-page-heading">
                            <h5>Your Order</h5>
                            <p>The Details</p>
                        </div>

                        <ul class="order-details-form mb-4">
                            <li><span>Product</span> <span>Total</span></li>
                            <li><span>Cocktail Yellow dress</span> <span>$59.90</span></li>
                            <li><span>Subtotal</span> <span>$59.90</span></li>
                            <li><span>Shipping</span> <span>Free</span></li>
                            <li><span>Total</span> <span>$59.90</span></li>
                        </ul> 

                         <div id="accordion" role="tablist" class="mb-4">
                            <div class="card">
                                <div class="card-header" role="tab" id="headingOne">
                                    <h6 class="mb-0">
                                        <a data-toggle="collapse" href="#collapseOne" aria-expanded="false" aria-controls="collapseOne"><i class="fa fa-circle-o mr-3"></i>Paypal</a>
                                    </h6>
                                </div>

                                <div id="collapseOne" class="collapse" role="tabpanel" aria-labelledby="headingOne" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin pharetra tempor so dales. Phasellus sagittis auctor gravida. Integ er bibendum sodales arcu id te mpus. Ut consectetur lacus.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingTwo">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"><i class="fa fa-circle-o mr-3"></i>cash on delievery</a>
                                    </h6>
                                </div>
                                <div id="collapseTwo" class="collapse" role="tabpanel" aria-labelledby="headingTwo" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo quis in veritatis officia inventore, tempore provident dignissimos.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingThree">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree"><i class="fa fa-circle-o mr-3"></i>credit card</a>
                                    </h6>
                                </div>
                                <div id="collapseThree" class="collapse" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Esse quo sint repudiandae suscipit ab soluta delectus voluptate, vero vitae</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card">
                                <div class="card-header" role="tab" id="headingFour">
                                    <h6 class="mb-0">
                                        <a class="collapsed" data-toggle="collapse" href="#collapseFour" aria-expanded="true" aria-controls="collapseFour"><i class="fa fa-circle-o mr-3"></i>direct bank transfer</a>
                                    </h6>
                                </div>
                                <div id="collapseFour" class="collapse show" role="tabpanel" aria-labelledby="headingThree" data-parent="#accordion">
                                    <div class="card-body">
                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est cum autem eveniet saepe fugit, impedit magni.</p>
                                    </div>
                                </div>
                            </div>
                        </div> 

                        
                    </div>
                </div>-->
	<!-- ##### Checkout Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<!-- <footer class="footer_area clearfix">
        <div class="container">
            <div class="row">
                Single Widget Area
                <div class="col-12 col-md-6">
                    <div class="single_widget_area d-flex mb-30">
                        Logo
                        <div class="footer-logo mr-50">
                            <a href="#"><img src="img/core-img/logo2.png" alt=""></a>
                        </div>
                        Footer Menu
                        <div class="footer_menu">
                            <ul>
                                <li><a href="shop.html">Shop</a></li>
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="contact.html">Contact</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                Single Widget Area
                <div class="col-12 col-md-6">
                    <div class="single_widget_area mb-30">
                        <ul class="footer_widget_menu">
                            <li><a href="#">Order Status</a></li>
                            <li><a href="#">Payment Options</a></li>
                            <li><a href="#">Shipping and Delivery</a></li>
                            <li><a href="#">Guides</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Terms of Use</a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="row align-items-end">
                Single Widget Area
                <div class="col-12 col-md-6">
                    <div class="single_widget_area">
                        <div class="footer_heading mb-30">
                            <h6>Subscribe</h6>
                        </div>
                        <div class="subscribtion_form">
                            <form action="#" method="post">
                                <input type="email" name="mail" class="mail" placeholder="Your email here">
                                <button type="submit" class="submit"><i class="fa fa-long-arrow-right" aria-hidden="true"></i></button>
                            </form>
                        </div>
                    </div>
                </div>
                Single Widget Area
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
                    <p>
                        Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
    Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0.
                    </p>
                </div>
            </div>
            
        </div>


    </footer> -->

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
							<a href="#" data-toggle="tooltip" data-placement="top"
								title="Facebook"><i class="fa fa-facebook"
								aria-hidden="true"></i></a> <a href="#" data-toggle="tooltip"
								data-placement="top" title="Instagram"><i
								class="fa fa-instagram" aria-hidden="true"></i></a> <a href="#"
								data-toggle="tooltip" data-placement="top" title="Twitter"><i
								class="fa fa-twitter" aria-hidden="true"></i></a> <a href="#"
								data-toggle="tooltip" data-placement="top" title="Pinterest"><i
								class="fa fa-pinterest" aria-hidden="true"></i></a> <a href="#"
								data-toggle="tooltip" data-placement="top" title="Youtube"><i
								class="fa fa-youtube-play" aria-hidden="true"></i></a>
						</div>
					</div>
				</div>
			</div>

			<div class="row mt-5">
				<div class="col-md-12 text-center"></div>
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