<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="parts/head.jsp"%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">

	<h1>Publicar imagen</h1>
	<br>
	<div>
	<form enctype="multipart/form-data" action="subirimg" method="post" >
	<div class="form-group">
	<label for="imagen">Seleciona una imagen:</label><input type="file" name="file" class="form-control-file">
	</div>
	<div class="form-group">
			<label for="comentario" >Descripción:</label> <textarea type="text"  class="form-control" rows="3"
				name="comentario"></textarea>
		</div>
	
		<div class="form-group">
			<label class="separacion">Estilo: </label>
			<%
	                    List<home> listEstilos = ImgController.getEstilos();
	                    %>
			<select name="estilo" class="form-group-control" required>
				<option value="" disabled selected>Seleccionar un estilo</option>
				<%
						for (home g : listEstilos) {
	                           
							%>
				<option value="<%=g.getId_estilo()%>"><%= g.getEstilo() %></option>
				<% }     %>
			</select>
		</div>
		<div class="form-group">
			<label for="fecha">Fecha:</label>
		</div>
	<input type="hidden" name="ussuario" value=<%=id_u %>>
		<label>id_usu = as: <%=id_u %></label>
	<input type="submit" value="Publicar" class="btn btn-primary">
	</form>
</div>
</div>
	<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>