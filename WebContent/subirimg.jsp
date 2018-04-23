<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="parts/head.jsp"%>
		<%List<home> tops = ImgController.imgTop();%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
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
</div>
	<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>