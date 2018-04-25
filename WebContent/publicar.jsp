<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="parts/head.jsp"%>

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
	<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>

<title>Publicar</title>
</head>
<body>
	
	-------------
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
	----------
	
	<div class="row">
		<div class="w-50 p-3" style="background-color: #eee; font-size: 20px">
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
				<button type="submit" class="btn btn-primary">Publicar</button>
			</form>
		</div>

		<div class="w-50 p-3" style="background-color: #eee; font-size: 20px">
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
					<label for="estilo">Estilo:</label> <input type="text"
						name="estilo" class="form-control">
				</div>
				<div class="form-group">
					<label for="fecha">Fecha:</label> <input type="text" name="fecha"
						class="form-control">
				</div>
				<input type="hidden" name="ussuario" value=<%=id_u%>>
				<button type="submit" class="btn btn-primary">Publicar</button>
			</form>
		</div>
	</div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"
	integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
	integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
	crossorigin="anonymous"></script>
	</html>