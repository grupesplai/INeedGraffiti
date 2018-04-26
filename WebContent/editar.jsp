<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="parts/head.jsp"%>
		<%List<home> tops = ImgController.imgTop();%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
<% 
		List<Usuario> profile = UsuarioController.getPerfil(id_u);
%>
<div align="center">
<img class="img-fluid img-thumbnail" src="user/<%=ImgController.unaImagenP(id_u)%>"
					width="200" height="200">
</div>
		
			<%
				for (Usuario user : profile) {
			%>
			<div class="place" style="padding-left:150px">
			<form action="registro" method="post">
					<input type="file" name="file" class="form-control-file" id="file" style="color:black">
					<br><br>
		<h1>Editar Usuario</h1>
		<hr>
				
					<div class="form-group">
						<label for="nombreUsuario">Nombre</label> 
						<input type="text" name="nombreUsuario" class="form-control" style="width:30%;height:34px" id="nombreUsuario"
							value="<%=user.getUsuario()%>" required>
					</div>

					<div class="form-group">
						<label for="apellidosUsuario">Apellidos</label> <input type="text"
							name="apellidosUsuario" class="form-control" style="width:30%;height:34px"
							id="apellidosUsuario" value="<%=user.getApellido()%>" placeholder="Apellidos">
					</div>
					<div class="form-group">
						<label for="mailUsuario">e-mail</label> <input type="text"
							name="mailUsuario" class="form-control" id="mailUsuario" style="width:30%;height:34px"
							value="<%=user.getEmail()%>" required>
					</div>
					<div class="form-group">
						<label for="movilUsuario">Móvil</label> <input type="text"
							name="movilUsuario" class="form-control" id="movilUsuario" style="width:30%;height:34px"
							value="<%=user.getMovil()%>" placeholder="Móvil" pattern="[0-9]{9}">
					</div>

					<div class="form-group">
						<label for="nickUsuario">Nombre de usuario</label> <input
							type="text" name="nickUsuario" class="form-control" style="width:30%;height:34px"
							id="nickUsuario" value="<%=user.getUsuario()%>" required>
					</div>

					<div class="form-group">
						<label for="passwordUsuario">Contraseña</label> <input
							type="password" name="passwordUsuario" class="form-control" style="width:30%;height:34px"
							id="passwordUsuario" value="<%=user.getContraseña()%>" required>
					</div>
					<div class="form-group">
						<label for="confirmPassword">Repite la Contraseña</label> <input
							type="password" name="confirmPassword" class="form-control" style="width:30%;height:34px"
							id="confirmPassword" value="<%=user.getContraseña()%>" required>
					</div>

					<input type="hidden" name="modificar" value="<%=id_u%>">
					<button type="submit" class="btn btn-primary" style="width:16%;font-size:12px">Modificar</button>
				</form>	
				</div>		
			<%
				}
			%>
		</div>
	<%@ include file="parts/footerAjax.jsp"%>
</body>
</html> 