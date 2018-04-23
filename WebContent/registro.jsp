<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="parts/head.jsp"%>

<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
<%
	int id_u;
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
%><%@ include file="parts/sesion.jsp"%>
<div><a href="login">LOG-OUT</a>
</div>
<%
	} else {
		id_u = 0;
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u + "<br>");
	}	%>

<%@ include file="parts/barraMenu.jsp"%>
		<h1>Nuevo Usuario</h1>
		<hr>
		<form action="registro" method="post">
		<div style="padding-left:150px">
			<div class="form-group">
				<label for="nombreUsuario" >Nombre</label>
				<input type="text" name="nombreUsuario" style="width:30%;height:34px"
					class="form-control" id="nombreUsuario" placeholder="Nombre">
			</div>
			
			<div class="form-group">
				<label for="apellidosUsuario" >Apellido</label>
				<input type="text" name="apellidosUsuario"  style="width:30%;height:34px"
					class="form-control" id="apellidosUsuario" placeholder="Apellidos">
			</div>
			<div class="form-group">
				<label for="mailUsuario" >Mail</label>
				<input type="text" name="mailUsuario" style="width:30%;height:34px"
					class="form-control" id="mailUsuario" placeholder="e-mail">
			</div>
			<div class="form-group">
				<label for="movilUsuario" >movil</label>
				<input type="text" name="movilUsuario" style="width:30%;height:34px"
					class="form-control" id="movilUsuario" placeholder="Teléfono">
			</div>
			
			<div class="form-group">
				<label for="nickUsuario" >Nombre de usuario</label>
				<input type="text" name="nickUsuario" style="width:30%;height:34px"
					class="form-control" id="nickUsuario" placeholder="nombre de usuario">
			</div>
			
			
			<div class="form-group">
				<label for="passwordUsuario" >Contraseña</label>
				<input type="password" name="passwordUsuario" style="width:30%;height:34px"
					class="form-control" id="passwordUsuario" placeholder="Contraseña">
			</div>
			<div class="form-group">
				<label for="confirmPassword" >Repite la Contraseña</label>
				<input type="password" name="confirmPassword" style="width:30%;height:34px"
					class="form-control" id="confirmPassword" placeholder="Repite la Contraseña">
			</div>
			
			
			<button type="submit" class="btn btn-primary" id="registrar">Enviar</button>
		</div>
		</form>
	</div>
	<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>