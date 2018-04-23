<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="parts/head.jsp"%>
	<%
	String busqueda = (String) session.getAttribute("Buscar");
	List<Search> profile = SearchController.getSearch(busqueda);
	%>
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

	<div class="row">
		<h1>Resultados:</h1>
		<%
			for (Search s: profile) {
		%><div style="display: inline-block;" class="col-lg-3 col-md-4 col-sm-6
			col-xs-12 col-12text-center foto_home">
			<a href="buscaImagen?id_img=<%=s.getImagenes()%>"><img
				src="img/<%=s.getImagenes()%>" width="200" height="150"> </a><br>
			<br> <label><%=s.getUsuario()%> </label><br> <label>
				<%=s.getEstilo()%></label><br> <label><%=s.getDescripcion()%></label><br>
		</div>
		<%
			}
		%>
		</div>
		</div>
		<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>