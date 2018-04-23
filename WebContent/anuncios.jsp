<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>
<%
	List<Anuncios> anun = AnuncioController.allAnuncios();
%>
<%@ include file="parts/barraMenu.jsp"%>
	<%
	int id_u = 0;
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
%><%@ include file="parts/sesion.jsp"%>
<%
	} else {
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u+"<br>");
	}	%>
	<div class="row">
	<%
		for (Anuncios g : anun) {
	%><div style="display: inline-block;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<a href="pasaId?id_anun=<%=g.getIdImagen()%>&id_usu=<%=id_u%>">
		<img src="img/<%=g.getUrl()%>" width="250" height="180"></a><br>
			<label>Autor:</label><a href="perfil"><%=g.getNomUsuario()%><%=g.getIdImagen()%></a><br>
			<label>Fecha:</label><span><%=g.getFecha()%> </span><br>
		
		<% 
if (g.getIdUsuario() == id_u){%>
	
	<form action="delete" method="get">
	<input type="hidden" name="id_img" value=<%=g.getIdImagen() %>>
	<button type="submit" class="btn btn-primary" id="delete">Eliminar</button>
		</form>
<%}
%>

		<%if (id_u != 0) {%>
		<a href="pasaId?id_usu=<%=id_u%>&id_recep=<%=g.getIdUsuario()%>">Contactar</a><br>
		<%}
		%></div><%
		}
		%>
</div>

</body>
</html>