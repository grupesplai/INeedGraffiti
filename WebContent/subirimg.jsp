<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Subir imágenes</title>
</head>
<body>


<form enctype="multipart/form-data" action="subirimg" method="post" >
Seleciona una imagen:<input type="file" name="file">
<br>
<div class="form-group">
		<label for="comentario" >Descripción:</label> <input type="text"
			name="comentario">
	</div>

	<div class="form-group">
		<label for="estilo">Estilo:</label> <input type="text" name="estilo">
	</div>
	<div class="form-group">
		<label for="fecha">Fecha:</label> <input type="text" name="fecha">
	</div>
<input type="hidden" name="ussuario" value=<%=id_u %>>
	
<input type="submit" value="Publicar">
</form>

</body>
</html>