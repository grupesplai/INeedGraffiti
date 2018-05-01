<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="parts/head.jsp"%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
		<h1>Publicar anuncio</h1>
		<br>
		<div>
		<form enctype="multipart/form-data" action="subiranuncio" method="post" >
		<div class="form-group">
		<label for="imagen" >Imagen anuncio:</label><input type="file" class="form-control-file" name="file">
		</div>
		<div class="form-group">
				<label for="comentario" >Descripción:</label> <textarea class="form-control"
					name="descripcion" ></textarea>
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
		</div>
	</div>
<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>