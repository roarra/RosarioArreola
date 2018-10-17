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

	/* Funciones para desplegable de actores */
	
	function changeInsertarActorDiv() {
		var divId = document.getElementById("desplegableInsertarActor");
		var currentClass = divId.className;
		if (currentClass == "noMostrar") { // si el elemento ya esta oculto
			divId.className = "mostrar"; // muestro el elemento
		} else {
			divId.className = "noMostrar"; // si el elemento NO esta ocutlo, lo oculto
		}
	}
	function changeModificarActorDiv() {
		var divId = document.getElementById("desplegableModificarActor");
		var currentClass = divId.className;
		if (currentClass == "noMostrar") { // si el elemento ya esta oculto
			divId.className = "mostrar"; // muestro el elemento
		} else {
			divId.className = "noMostrar"; // si el elemento NO esta ocutlo, lo oculto
		}
	}
	function changeEliminarActorDiv() {
		var divId = document.getElementById("desplegableEliminarActor");
		var currentClass = divId.className;
		if (currentClass == "noMostrar") { // si el elemento ya esta oculto
			divId.className = "mostrar"; // muestro el elemento
		} else {
			divId.className = "noMostrar"; // si el elemento NO esta ocutlo, lo oculto
		}
	}
	function changeConsultarActorDiv() {
		var divId = document.getElementById("desplegableConsultarActor");
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
				<a class="nav-brand" href="index.jsp">INICIO</a>
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
										<li class="title"><a href="ServletActores?operacion=actores">Actores</a></li>


									</ul>
									<ul class="single-mega cn-col-4">
										<li class="title"><a
											href="ServletPeliculas?operacion=peliculas">Peliculas</a></li>

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
										<div class="col-12 mb-3">
											<label for="Direccion">Fecha de Estreno</label> <input type="text"
												class="form-control mb-3" value="" name="fecha">

										</div>
																				<div >
											<label>IMAGEN</label>
											<input for="cardScanFile" type="file" name="img" value="${mi.img}" class="form-control">
										</div>
										<div class="col-12 mb-3">
											<label for="numero">Sinopsis</label> <input type="text"
												class="form-control" value="" name="sinopsis"> <br>
											<!-- <button class="btn essence-btn">Alta</button> -->
										<div class="col-12 mb-3">
											<label for="codigoPostal">Actor Asociado</label> <input type="text"
												class="form-control" value="" name="actorA">
												<button class="btn essence-btn">Alta</button>
										</div>
											<br>
										</div>
									</div>
								</div>
							</form>
						<form action="ServletFormularioPelicula?operacion=consulta"
						method="POST">
						<div class="row">
							<label><a href="#"
								onclick="changeConsultarCamisetaDiv();"><h6>Modificar
										Pelicula</h6></a></label>
							<div id="desplegableConsultar" class="noMostrar">
								<div class="col-md-12 mb-3">
									<label for="nombre">TITULO</label> <input type="text"
										class="form-control" value="" name="titulo"> <br>
									<button class="btn essence-btn">Consultar</button>
								</div>
							</div>

						</div>
						</form>


					<!-- Espacio para la consulta de camisetas -->
					<c:forEach var="mi" items="${PeliculaUpdate}">
					<form action="ServletFormularioPelicula?operacion=modificar"
						method="POST">
						<div class="single_product_desc clearfix">

							<div>
								<p>
									<span><b>TITULO ACTUAL: </b><input type="text"
											class="form-control" value="${mi.titulo}" name="tbusqueda"></span>
								<p>
									<span><b>TITULO: </b><input type="text"
											class="form-control" value="${mi.titulo}" name="titulo"></span>
								<p>
									<span><b>DIRECTOR: </b> <input type="text"
											class="form-control" value="${mi.director}" name="director"></span>
								<p>
									<span><b>VISTA: </b> <input type="text"
											class="form-control" value="${mi.vista}" name="vista"></span>
								<p>
								<%-- 	<span><b>FECHA ESTRENO: </b> <input type="text"
											class="form-control" value="${mi.fechaEstreno}" name="fechaestreno"></span>
								<p> --%>
								<p>
									<span><b>IMAGEN: </b>
									<input for="cardScanFile" type="file" name="img" value="${mi.img}" class="form-control"></span>

								<p>
									<span><b>SINOPSIS: </b> <input type="text"
											class="form-control" value="${mi.sinopsis}" name="sinopsis"></span>
								<br>
								<button class="btn essence-btn">MODIFICAR</button>
							</div>
						</div>
						</form>
					</c:forEach>
							
					<form action="ServletFormularioPelicula?operacion=baja"
						method="POST">
						<div class="row">
							<label><a href="#" onclick="changeEliminarCamisetaDiv();"><h6>Eliminar
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

					

				</div>
			</div>
		</div>
	</div>
	</div>
	
	</div>

 <!-- Aqui empieza el administrador de actores -->
 <div class="checkout_area section-padding-80">
		<div class="container">
			<div class="row">

				<div class="col-12 col-md-6">
					<div class="checkout_details_area mt-50 clearfix">
						<div class="order-details-confirmation">
							<div class="cart-page-heading mb-30">
								<h3>GESTION ACTORES</h3>
							</div>


							<form action="ServletFormularioActor?operacion=alta"
								method="POST">
								<div class="row">
									<label><a href="#"
										onclick="changeInsertarActorDiv();"><h6>Insertar
												Actor</h6></a></label>
									<div id="desplegableInsertarActor" class="noMostrar">

										<div class="col-md-12 mb-3">
											<label for="apellidos">Nombre</label> <input type="text"
												class="form-control" value="" name="nombre">
										</div>
										<div class="col-12 mb-3">
											<label for="Direccion">Nacionalidad</label> <input type="text"
												class="form-control mb-3" value="" name="nacionalidad">

										</div>
										
											<div >
											<label>IMAGEN</label>
											<input for="cardScanFile" type="file" name="img" value="${mi.img}" class="form-control">
											<button class="btn essence-btn">Alta</button>
										</div>
										
									</div>
								</div>
							</form>
						<form action="ServletFormularioActor?operacion=consulta"
						method="POST">
						<div class="row">
							<label><a href="#"
								onclick="changeConsultarActorDiv();"><h6>Modificar
										Actor</h6></a></label>
							<div id="desplegableConsultarActor" class="noMostrar">
								<div class="col-md-12 mb-3">
									<label for="nombre">NOMBRE</label> <input type="text"
										class="form-control" value="" name="nombre"> <br>
									<button class="btn essence-btn">Consultar</button>
								</div>
							</div>

						</div>
						</form>


					<!-- Espacio para la consulta de camisetas -->
					<c:forEach var="mi" items="${ActorUpdate}">
					<form action="ServletFormularioActor?operacion=modificar"
						method="POST">
						<div class="single_product_desc clearfix">

							<div>
								<p>
									<span><b>NOMBRE ACTUAL: </b><input type="text"
											class="form-control" value="${mi.nombre}" name="nactor"></span>
								<p>
									<span><b>NOMBRE: </b><input type="text"
											class="form-control" value="${mi.nombre}" name="nombre"></span>
								<p>
									<span><b>NACIONALIDAD: </b> <input type="text"
											class="form-control" value="${mi.nacionalidad}" name="nacionalidad"></span>
								
								<p>
									<span><b>IMAGEN: </b>
									<input for="cardScanFile" type="file" name="img" value="${mi.img}" class="form-control"></span>

						
								<br>
								<button class="btn essence-btn">MODIFICAR</button>
							</div>
						</div>
						</form>
					</c:forEach>
							
					<form action="ServletFormularioActor?operacion=baja"
						method="POST">
						<div class="row">
							<label><a href="#" onclick="changeEliminarActorDiv();"><h6>Eliminar
										ACTOR</h6></a></label>
							<div id="desplegableEliminarActor" class="noMostrar">
								<div class="col-md-12 mb-3">
									<label for="nombre">NOMBRE</label> <input type="text"
										class="form-control" value="" name="nombre"> <br>
									<button class="btn essence-btn">ELIMINAR</button>
								</div>
							</div>
						</div>
					</form>

					

				</div>
			</div>
		</div>
	</div>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	</div>



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