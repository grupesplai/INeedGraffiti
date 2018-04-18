<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="es">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="graffitiScript.js"></script>
<title>Nuevo Usuario</title>
</head>
<body>
	<div class="container">
		<h1>Nuevo Usuario</h1>
		<hr>
		<form action="registro" method="post">
			<div class="form-group">
				<label for="nombreUsuario" >Nombre</label>
				<input type="text" name="nombreUsuario"
					class="form-control" id="nombreUsuario" placeholder="nombre">
			</div>
			
			<div class="form-group">
				<label for="apellidosUsuario" >Apellido</label>
				<input type="text" name="apellidosUsuario"
					class="form-control" id="apellidosUsuario" placeholder="Apellido">
			</div>
			<div class="form-group">
				<label for="mailUsuario" >Mail</label>
				<input type="text" name="mailUsuario"
					class="form-control" id="mailUsuario" placeholder="mail">
			</div>
			<div class="form-group">
				<label for="movilUsuario" >movil</label>
				<input type="text" name="movilUsuario"
					class="form-control" id="movilUsuario" placeholder="movil">
			</div>
			
			<div class="form-group">
				<label for="nickUsuario" >Nombre de usuario</label>
				<input type="text" name="nickUsuario"
					class="form-control" id="nickUsuario" placeholder="nombre de usuario">
			</div>
			
			
			<div class="form-group">
				<label for="passwordUsuario" >Contraseña</label>
				<input type="password" name="passwordUsuario"
					class="form-control" id="passwordUsuario" placeholder="Contraseña">
			</div>
			<div class="form-group">
				<label for="confirmPassword" >Repite la Contraseña</label>
				<input type="password" name="confirmPassword"
					class="form-control" id="confirmPassword" placeholder="Repite la Contraseña">
			</div>
			
			
			<button type="submit" class="btn btn-primary" id="registrar">Enviar</button>
		</form>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
</body>
</html>