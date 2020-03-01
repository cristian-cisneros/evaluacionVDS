<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
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

	<header class="main-header">
		<div class="background-overlay">
			<div class="container">
				<div class="row">
					<div class="col-md-2"></div>
					<div class="col-md-8">
						<div>
							<h1 class = " encabezado text-center">Guardar Libro</h1>
						</div>
						<div class="jumbotron">
							<form:form method="post" modelAttribute="libros">
								
								<div class="form-group">
									<form:input type="text" path="titulo" placeholder="Titulo"
										autocomplete="off" class="form-control"></form:input>
								</div>
								<div class="form-group">
									<form:input type="text" path="nombreAutor"
										placeholder="Nombre del autor" autocomplete="off"
										class="form-control"></form:input>
								</div>
								<div class="form-group">
									<form:input type="text" path="apellidosAutor"
										placeholder="Apellidos del Autor" autocomplete="off"
										class="form-control"></form:input>
								</div>
								<div class="form-group">
									<form:input type="number" path="numeroPaginas"
										placeholder="Numero de Paginas" autocomplete="off"
										class="form-control"></form:input>
								</div>
								<div class="form-group">
									<form:input type="text" path="imgUrl"
										placeholder="Url de la imagen" autocomplete="off"
										class="form-control"></form:input>
								</div>
								<div class="row">
									<div class="col-sm-12 pl-0">
										<p class="text-right">
											<button type="submit" value="l"
												class="btn btn-space btn-danger">Guardar</button>
										</p>
									</div>
								</div>
							</form:form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div class="col-lg-6 col-md-6 col-sm-9 col-xs-12"></div>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

</body>
</html>