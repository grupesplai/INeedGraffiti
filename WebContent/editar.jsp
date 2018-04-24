<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="parts/sesion.jsp"%>
<%@page import="modelos.Usuario"%>
<%@ page import="controladores.UsuarioController"%>
<%@ page import="java.util.List"%>
<!doctype html>
<html lang="es">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="graffitiScript.js"></script>
<title>Editar Usuario</title>
</head>
<body>
	<div class="container">
		<h1>Editar Usuario</h1>
		<hr>
		<%
			int id = (int) session.getAttribute("id_usuario");
			List<Usuario> profile = UsuarioController.getPerfil(id);
		%><div class="row">

			<%
				for (Usuario user : profile) {
			%>
			<div style="display: inline-block">
				<img class="img-fluid img-thumbnail" src="user/<%=user.getUrl()%>"
					width="100" height="70"><br> <label><%=user.getUsuario()%>
				</label><br> <label><%=user.getEmail()%></label><br> <label>
					<%=user.getMovil()%></label> <label> <%=user.getnombre()%></label> <label>
					<%=user.getContraseña()%></label> <label> <%=user.getApellido()%></label>

				<form action="registro" method="post">
					<div class="form-group">
						<label for="nombreUsuario">Nombre</label> <input type="text"
							name="nombreUsuario" class="form-control" id="nombreUsuario"
							value="<%=user.getnombre()%>">
					</div>

					<div class="form-group">
						<label for="apellidosUsuario">Apellido</label> <input type="text"
							name="apellidosUsuario" class="form-control"
							id="apellidosUsuario" value="<%=user.getApellido()%>">
					</div>
					<div class="form-group">
						<label for="mailUsuario">Mail</label> <input type="text"
							name="mailUsuario" class="form-control" id="mailUsuario"
							value="<%=user.getEmail()%>">
					</div>
					<div class="form-group">
						<label for="movilUsuario">movil</label> <input type="text"
							name="movilUsuario" class="form-control" id="movilUsuario"
							value="<%=user.getMovil()%>">
					</div>

					<div class="form-group">
						<label for="nickUsuario">Nombre de usuario</label> <input
							type="text" name="nickUsuario" class="form-control"
							id="nickUsuario" value="<%=user.getUsuario()%>">
					</div>


					<div class="form-group">
						<label for="passwordUsuario">Contraseña</label> <input
							type="password" name="passwordUsuario" class="form-control"
							id="passwordUsuario" value="<%=user.getContraseña()%>">
					</div>
					<div class="form-group">
						<label for="confirmPassword">Repite la Contraseña</label> <input
							type="password" name="confirmPassword" class="form-control"
							id="confirmPassword" value="<%=user.getUsuario()%>">
					</div>

					<input type="hidden" name="modificar" value="<%=id%>">
					<button type="submit" class="btn btn-primary" id="registrar">Enviar</button>
				</form>

			</div>
			<%
				}
			%>
		</div>


	</div>
</body>
</html>