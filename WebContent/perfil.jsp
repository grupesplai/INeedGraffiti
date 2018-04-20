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
<div class="row">
	<%
		for (Usuario user : profile) {
	%><div style="display: inline-block;text-align:center;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<img class="img-fluid img-thumbnail" src="user/<%=user.getUrl()%>"
			width="100" height="70"><br> <label><%=user.getUsuario()%>
		</label><br> <label><%=user.getEmail()%></label><br> <label>
			<%=user.getMovil()%></label><br> <label> <%=user.getLikes()%></label>
	</div>
	<%
		}
	%>
</div>
<div class="row">
	<h1 align="center">Portfolio</h1>
	<%
		for (Usuario f : traer_ima) {
	%>
	<div style="display: inline-block;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<img src="img/<%=f.getUrl()%>" width="200" height="150"><br>
		<label>Likes:</label><span><%=f.getLikes()%> </span>
		<%
			if (id_u != 0) {
		%>
		<a href="likes?imglike=<%=f.getIdimg()%>&usid=<%=id_u%>&perf=<%=id_u%>">Like</a>
		<%
			}
		%>
		<br> <label>Estilo:</label>
		<span><%=f.getEstilo()%></span><br> <label>Fecha:</label><span><%=f.getFecha()%>
		</span><br>
		<div><%=f.getDescripcion()%>
		</div>
	</div>
	<%
		}
	%>
</div>
<div class="row">
<%
if(traer_anuncio.isEmpty() == false){
	%>
	<h1 align="center">Anuncios</h1>
	<%
}
		for (Anuncios a : traer_anuncio) {
	%>
	
	<div style="display: inline-block;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<img src="img/<%=a.getUrl()%>" width="200" height="150"><br>
		<label>Descripcion:</label> <span><%=a.getDescripcion()%></span><br>
		<label>Fecha:</label> <span><%=a.getFecha()%> </span><br>
	</div>
	<%
		}
	%>
</div>
</div>
<a href="editarperfil?id_usuario=<%=id_u%>">Editar perfil</a><br>
</body>
</html>