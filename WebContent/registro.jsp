<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="parts/head.jsp"%>

<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
	
		<h1>Nuevo Usuario</h1>
		<hr>
		<form action="registro" method="post">
		<div class="place" style="padding-left:150px">
			<div class="form-group">
				<label for="nombreUsuario" >Nombre</label>
				<input type="text" name="nombreUsuario" style="width:30%;height:34px"
					 class="form-control" id="nombreUsuario" placeholder="Nombre" required>
			</div>
			
			<div class="form-group">
				<label for="apellidosUsuario" >Apellido</label>
				<input type="text" name="apellidosUsuario"  style="width:30%;height:34px"
					class="form-control" id="apellidosUsuario" placeholder="Apellidos">
			</div>
			<div class="form-group">
				<label for="mailUsuario" >e-mail</label>
				<input type="text" name="mailUsuario" style="width:30%;height:34px"
					class="form-control" id="mailUsuario" placeholder="e-mail" required>
			</div>
			<div class="form-group">
				<label for="movilUsuario" >Móvil</label>
				<input type="text" name="movilUsuario" style="width:30%;height:34px"
					class="form-control" id="movilUsuario"  placeholder="Móvil" pattern="[0-9]{9}">
			</div>
			
			<div class="form-group">
				<label for="nickUsuario" >Nombre de usuario</label>
				<input type="text" name="nickUsuario" style="width:30%;height:34px"
					class="form-control" id="nickUsuario" placeholder="Nombre de usuario" required>
			</div>
			
			
			<div class="form-group">
				<label for="passwordUsuario" >Contraseña</label>
				<input type="password" name="passwordUsuario" style="width:30%;height:34px"
					class="form-control" id="passwordUsuario" placeholder="Contraseña" required>
			</div>
			<div class="form-group">
				<label for="confirmPassword" >Repite la Contraseña</label>
				<input type="password" name="confirmPassword" style="width:30%;height:34px"
					class="form-control" id="confirmPassword" placeholder="Repite la Contraseña" required>
			</div>
			<button type="submit" class="btn btn-primary" style="width:16%;font-size:12px">Registrarse</button>
		</div>
		</form>
	</div>
	<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>