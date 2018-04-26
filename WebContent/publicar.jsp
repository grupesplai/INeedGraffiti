<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="parts/head.jsp"%>
		<%List<home> tops = ImgController.imgTop();%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container">
	<br><br>
				<div class="row">
					<div class="w-50 p-3" style="background-color: #eee">
					<br><br>
					<h1>Publicar anuncio</h1>
						<form enctype="multipart/form-data" action="subiranuncio"
							method="post">
							<div class="form-group">
								<label for="file">Inserte imagen:</label> <input
									type="file" name="file" class="form-control-file" id="file">
							</div>
							<div class="form-group">
								<label for="descripcion">Descripción:</label>
								<textarea name="descripcion" class="form-control"
									id="descripcion" rows="3" style="font-size: 15px"></textarea>
							</div>
							<div class="form-group">
								<label for="fecha">Fecha:</label>
								<script type="text/javascript">
									var dt = new Date();
			
									// Display the month, day, and year. getMonth() returns a 0-based number.
									var month = dt.getMonth() + 1;
									var day = dt.getDate();
									var year = dt.getFullYear();
			
									document.write(day + '-' + month + '-' + year);
								</script>
							</div>
							<input type="hidden" name="ussuario" value=<%=id_u%>>
							<button type="submit" class="btn btn-primary" style="width:16%;font-size:12px">Publicar</button>
						</form>
					</div>
			
					<div class="w-50 p-3" style="background-color: #eee">
					<br><br>
					<h1>Publicar imagen</h1>
						<form enctype="multipart/form-data" action="subirimg"
							method="post">
							<div class="form-group">
								<label for="file">Inserte imagen:</label> <input
									type="file" name="file" class="form-control-file" id="file">
							</div>
							<div class="form-group">
								<label for="comentario">Descripción:</label> <input type="text"
									name="comentario" class="form-control">
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
								<label for="fecha">Fecha:</label>
									<script type="text/javascript">
										var dt = new Date();
				
										// Display the month, day, and year. getMonth() returns a 0-based number.
										var month = dt.getMonth() + 1;
										var day = dt.getDate();
										var year = dt.getFullYear();
				
										document.write(day + '-' + month + '-' + year);
									</script>
							</div>
							<input type="hidden" name="ussuario" value=<%=id_u%>>
							<button type="submit" class="btn btn-primary" style="width:16%;font-size:12px">Publicar</button>
						</form>
					</div>
				</div>
	</div>
<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>