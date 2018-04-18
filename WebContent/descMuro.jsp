<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>
<%
	int id_anun = (int) session.getAttribute("id_anun");
	List<Anuncios> anun = AnuncioController.getAnuncio(id_anun);
%>
<%@ include file="parts/barraMenu.jsp"%>

	<%
		int id_u = 0;
		if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
			id_u = (int) session.getAttribute("id_usu");
	%><%@ include file="parts/sesion.jsp"%>
	<%
		} else {
			out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u + "<br>");
		}
		%>
		<div class="row">
			<%
		for (Anuncios g : anun) {
	%><div style="display: inline-block;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<img src="img/<%=g.getUrl()%>" width="250" height="180"><br>
		<label>Autor:</label><a href="perfil"><%=g.getNomUsuario()%><%=g.getIdUsuario()%></a><br>
		<label>Fecha:</label><span><%=g.getFecha()%> </span><br> <label>Fecha:</label><span><%=g.getIdImagen()%>
		</span><br>
		<%
			if (id_u != 0) {
		%>
		<a href="pasaId?id_usu=<%=id_u%>&id_recep=<%=g.getIdUsuario()%>">Contactar</a><br>
		<%
			}
		%>
		<textarea><%=g.getDescripcion()%> 	</textarea>
		<br>
		<%
			}
		%>
	</div>
</div>
</div>
</body>
</html>