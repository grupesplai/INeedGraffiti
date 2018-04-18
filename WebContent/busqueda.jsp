<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%><%@ page import="controladores.*"%>

<%
int id_u;
if(session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0){
	id_u = (int) session.getAttribute("id_usu");
	%><%@ include file="parts/sesion.jsp"%><%
}else{
	id_u = 0;
	out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u);
}
	List<Search> profile = SearchController.getSearch(busqueda);

%>
<%@ include file="parts/barraMenu.jsp"%>
<%
if(id_u!= 0){
	
}
%>			
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultados</title>
</head>
<body>
<div class="row">
			<%
				for (Search user : profile) {
			%><div  style="display:inline-block;
				class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
				<img class="img-fluid img-thumbnail" src="user/<%=user.getUrl()%>" width="100" height="70"><br>
				<label><%=user.getUsuario()%> </label><br>
				<label><%=user.getEmail()%></label><br>
				<label> <%=user.getMovil()%></label>
				<label> <%=user.getSumlikes()%></label>
			</div>
			<% } %>
		</div>

</body>
</html>