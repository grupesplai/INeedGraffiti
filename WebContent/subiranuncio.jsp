<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%><%@ page import="controladores.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	int id_u;
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
%><%@ include file="parts/sesion.jsp"%>
<%
	} else {
		id_u = 0;
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOGIN</a> con ID: " + id_u);
	}
%>
<%@ include file="parts/barraMenu.jsp"%>
<%
	if (id_u != 0) {

	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>

<title>Anuncio</title>
</head>
<body>
<h1>Publicar anuncio</h1>
<form enctype="multipart/form-data" action="subiranuncio" method="post" >
Imagen anuncio:<input type="file" name="file">
<br>
<div class="form-group">
		<label for="comentario" >Descripción:</label> <input type="text"
			name="descripcion">
	</div>
	<div class="form-group">
		<label for="fecha">Fecha:</label> 
		<script type="text/javascript">
		var dt = new Date();

		// Display the month, day, and year. getMonth() returns a 0-based number.
		var month = dt.getMonth()+1;
		var day = dt.getDate();
		var year = dt.getFullYear();
        
		document.write(day + '-' + month + '-' + year);
		</script>
	</div>
	<input type="hidden" name="ussuario" value=<%=id_u %>>
	
<input type="submit" value="Publicar">
</form>
</body>
</html>