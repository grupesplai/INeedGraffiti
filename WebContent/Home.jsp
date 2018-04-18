<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>
<%
	List<home> tops = ImgController.imgTop();
%><%@ include file="parts/barraMenu.jsp"%>
<form action="login" method="post">
	<input name="usuario"> <input name="password"> <input
		type="submit" value="Entrar">
</form>
<%
	int id_u = 0;
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
%><%@ include file="parts/sesion.jsp"%>
<div>
	<a href="login">LOG-OUT</a>
</div>
<%
	} else {
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u + "<br>");
	}
%>
<div class="row">
	<%
		for (home g : tops) {
	%><div style="display: inline-block;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<a href="buscaImagen?id_img=<%=g.getIdImagen()%>&id_user=<%=id_u%>"><img
			src="img/<%=g.getUrl()%>" width="200" height="150"> </a> <br>
		<a href="perfil?id_autor=<%=g.getIdUsuario()%>&id_usu=<%=id_u%>"><%=g.getNomUsuario()%></a>
		<label>Likes: <%=g.getLikes()%></label>

		<%
			if (id_u != 0) {
		%>
		<a href="likes?imglike=<%=g.getIdImagen()%>&usid=<%=id_u%>">Like</a><br>
		
		<%
			}%></div><%
			}
		%><br> <a href="anuncios.jsp">anuncios</a><br> <a
			href="pasaId?id_usu=<%=id_u%>&id_usua=<%=id_u%>">historial de
			mensajes</a><br> <a href="addImage?id_usu=<%=id_u%>">Añadir
			imagenes</a><br> <a href="registro.jsp">Registrarse</a>
	</div>
</div>
</body>
</html>