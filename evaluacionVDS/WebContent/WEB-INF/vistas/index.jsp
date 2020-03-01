<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Index</title>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
		<link rel="stylesheet" href="content/css/style.css">
	</head>
	
	<body>
	
	<nav class="navbar navbar-expand-lg navbar-dark">
		<div class="container">
			<div class="navbarNav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><c:url var="home" value="/"></c:url>
						<a class="nav-link" href="${home}">Inicio</a></li>
					<li class="nav-item"><c:url var="libro" value="/libros"></c:url>
						<a class="nav-link" href="${libro}">Libros</a></li>
					<li class="nav-item"><c:url var="nuevo" value="/nuevoLibro"></c:url>
						<a class="nav-link" href="${nuevo}">Nuevo</a></li>
				</ul>
			</div>
		</div>
	</nav>
		
		<header class = "main-header">
			<div class="background-overlay">
				<div class="container">
					<div class = "row">
						<div class = "col-md-2">
						</div>
						<div class = "col-md-8">
							<div>
								<h1 class = "text-center encabezado">Evaluacion VDS</h1>
							</div>
							<div class="jumbotron">
							  <p class="lead">Cristian Gerardo Cisneros Carlon</p>
							  <hr class="my-4">
							  <p>Crear una página web que realice el ABC (Altas, bajas y consultas).</p>
							  <p>El uso de base de datos es abierta así que puedes usar la que gustes.</p>
							  <p>La arquitectura o estructura está abierta así puedes usar la que mejor manejes.</p>
							  <p>De preferencia sube el codigo a tu repositorio favorito y compartenos el acceso.</p>
							</div>
						</div>
						<div class = "col-md-2">
						</div>
						
						<div class = "col-md-2">
						</div>
						<div class = "col-md-4">
							<c:url var="libro" value="/libros">
							</c:url>
							<a href = "${libro}" type="button" class="btn btn-danger btn-lg btn-block">Consultar Libros</a>
						</div>
						<div class = "col-md-4">
							<c:url var="nuevo" value="/nuevoLibro">
							</c:url>
							<a href = "${nuevo }" type="button" class="btn btn-danger btn-lg btn-block">Nuevo Libro</a>
							<br><br>
						</div>
						<div class = "col-md-2">
						</div>
					</div>
					
				</div>
			</div>
		</header>
		<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
	</body>
</html>