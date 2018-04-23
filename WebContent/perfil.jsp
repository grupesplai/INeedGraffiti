<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%><%@ page import="controladores.*"%>

<%
	int id_u;
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
%><%@ include file="parts/sesion.jsp"%>
<%
	} else {
		id_u = 0;
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u);
	}
	List<Usuario> profile = UsuarioController.getPerfil(id_u);
	List<Usuario> traer_ima = UsuarioController.getImagen(id_u);
	List<Anuncios> traer_anuncio = UsuarioController.getAnuncio(id_u);
%>
<%@ include file="parts/barraMenu.jsp"%>
<%
	if (id_u != 0) {

	}
%>
<div class="row">
	<%
		for (Usuario user : profile) {
	%><div style="display: inline-block;" col-lg-3 col-md-4 col-sm-6
		col-xs-12col-12text-centerfoto_home">
		<img class="img-fluid img-thumbnail" src="user/<%=user.getUrl()%>"
			width="100" height="70"><br> <label><%=user.getUsuario()%>
		</label><br> <label><%=user.getEmail()%></label><br> <label>
			<%=user.getMovil()%></label> <label> <%=user.getSumlikes()%></label>
	</div>
	<%
		}
	%>
</div>

<h2>${requestScope.message}</h2>

<h1 align="center">Portfolio</h1>
<form enctype="multipart/form-data" action="subirimg" method="post">

	<div class="form-group">
		<label for="imagen">imagen:</label> <input type="file" name="file">
	</div>
	<div class="form-group">
		<label for="comentario">Comentario:</label> <input type="text"
			name="comentario">
	</div>

	<div class="form-group">
		<label for="estilo">Estilo:</label> <input type="text" name="estilo">
	</div>
	<div class="form-group">
		<label for="fecha">Fecha:</label> <input type="text" name="fecha">
	</div>
	<input type="hidden" name="ussuario" value=<%=id_u%>> <br>
	<input type="submit" value="Subir">
</form>
<br>
<%
	for (Usuario f : traer_ima) {
%>
<div style="display: inline-block;" col-lg-3 col-md-4 col-sm-6 col-xs-12col-12text-centerfoto_home">
	<img src="img/<%=f.getUrl()%>" width="200" height="150"><br>
	<label>Likes:</label><span><%=f.getSumlikes()%> </span><br> <label>Estilo:</label>
	<span><%=f.getEstilo()%></span><br> <label>Fecha:</label><span><%=f.getFecha()%>
	</span><br>
	<div><%=f.getDescripcion()%>
	</div>
	<%
		}
	%>
</div>
<h1 align="center">Anuncios</h1>
<%
	//anuncios
	for (Anuncios a : traer_anuncio) {
%>
<div>
	<img src="img/<%=a.getUrl()%>" width="200" height="150"><br>
	<label>Descripcion:</label> <span><%=a.getDescripcion()%></span><br>
	<label>Fecha:</label> <span><%=a.getFecha()%> </span><br>
	<%
		}
	%>
</div>
</div>

</body>
</html>