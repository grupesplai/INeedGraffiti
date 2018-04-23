<%@page import="controladores.ImgController"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>
<%@ include file="parts/barraMenu.jsp"%>
<h1>Nuevo Usuario</h1>
<hr>
<form action="addImage" method="post">
	<div class="form-group">
		<label for="titu_img">T�tulo de la imagen</label> <input type="text"
			name="titu_img" class="form-control"
			placeholder="T�tulo de la imagen">
	</div>

	<div class="form-group">
		<label for="fech_cre">A�o de creaci�n</label> <input type="text"
			name="fech_cre" class="form-control" placeholder="A�o de creaci�n">
	</div>
	<div class="form-group">
		<label for="estilo">Estilo</label> <input type="text" name="estilo"
			class="form-control" placeholder="estilo">
	</div>
	<div class="form-group">
		<label for="movilUsuario">movil</label> <input type="text"
			name="movilUsuario" class="form-control" id="movilUsuario"
			placeholder="movil">
	</div>
	<div class="form-group">
		<label for="carga_img">Selecciona la imagen</label> <input type="text"
			name="carga_img" class="form-control"
			placeholder="Selecciona la imagen">

	</div>
	<div class="form-group">
		<label class="separacion">Estilo: </label>
		<%
                    List<home> listEstilos = ImgController.getEstilos();
                    %>
		<select name="poblacion" class="form-group" required>
			<option value="" disabled selected>Seleccionar un estilo</option>
			<%
					for (home g : listEstilos) {
                            %>
			<option value="<%= g.getId_estilo() %>"><%= g.getEstilo() %></option>
			<% }     %>
		</select>
	</div>
	<div class="form-group">
		<label for="desc_img">Descripci�n</label> <input type="text"
			name="desc_img" class="form-control" placeholder="Descripci�n">

	</div>
	<button type="submit" class="btn btn-primary" id="registrar">Enviar</button>
</form>
</div>
</body>
</html>