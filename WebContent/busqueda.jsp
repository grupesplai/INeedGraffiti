<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%><%@ page import="controladores.*"%>

<%
	String busqueda = (String) session.getAttribute("Buscar");
	List<Search> profile = SearchController.getSearch(busqueda);
%>
<%@ include file="parts/barraMenu.jsp"%>
<%
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultados</title>
</head>
<body>
	<div class="row">
		<h1>Resultados:</h1>
		<%
			for (Search user : profile) {
		%><div style="display: inline-block;" col-lg-3 col-md-4 col-sm-6
			col-xs-12 col-12text-centerfoto_home">
			<a href="buscaImagen?id_img=<%=user.getImagenes()%>"><img
				src="img/<%=user.getImagenes()%>" width="200" height="150"> </a><br>
			<br> <label><%=user.getUsuario()%> </label><br> <label>
				<%=user.getEstilo()%></label><br> <label><%=user.getDescripcion()%></label><br>
		</div>
		<%
			}
		%>
</body>
</html>