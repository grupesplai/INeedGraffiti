
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<%@ page import="controladores.UsuarioController"%>
<%
	int id_u;
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
%>
<%
	} else {
		
		if(request.getParameter("id_usu") != null){
			id_u = Integer.valueOf(request.getParameter("id_usu"));
		}else{
			id_u = 0;
		}
	}
%>
<nav class="navbar navbar-inverse navbar-expand-lg navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header" style="padding-top: 10px; font-size: 22px">
			<a class="logo" href="Home.jsp" style="font-family:'Pacifico',cursive;font-size:30px">INeedGraffiti</a>
 		</div>
 		<div style="display:flex;padding-left:200px">
			<form class="navbar-form navbar-left text-center"
					action="search" method="post">
					<div class="form-group">
						<input type="text" class="form-control" name="Buscar" style="width:300px;font-size:12px;font-style:italic"
							placeholder="BuscarGraffiti">
					</div>
					<button type="submit" class="btn btn-default" style="font-size:12px;color:white;background:#212529">Buscar</button>
				</form></div>
		<ul class="nav navbar-nav navbar-right">
			<%
				if(id_u != 0){
					%><li style="color:white;padding-top:15px;padding-bottom:15px;display:inline-block"><span class="glyphicon glyphicon-user"></span> Bienvenido:<b> <a href="perfil?id_autor=<%=id_u%>&id_usu=<%=id_u%>"><%=UsuarioController.traeNick(id_u) %></a> </b> 
							</li>
					<li style="color:white;display:inline-block"> &nbsp;&nbsp; <span class="glyphicon glyphicon-user"></span><a href="registro?id_usu=<%=id_u%>" style="display:inline-block"> Editar perfil</a>
							</li>
							<%
							if(id_u != 0){
								%>
								<li style="color:white;display:inline-block"> <span class="glyphicon glyphicon-user"></span><a href="login" style="display:inline-block">Salir</a></li>
							<%
							}
							
				}else{
					%>
					<li>
			<form class="navbar-form navbar-left text-center" action="login" method="post" style="color:black">
			<div class="form-group" style="display:inline-block;padding-top:5px">
				<input name="usuario" placeholder="Nombre de usuario" class="form-control" style="width:200px;height:26px;display:inline-block;font-size:12px;font-style:italic"> 
				<input type="password" name="password" placeholder="Contraseña" class="form-control" style="width:200px;height:26px;display:inline-block;font-size:12px;font-style:italic"> 
			<input
				type="submit" value="Entrar" class="btn btn-default" style="display:inline-block;font-size:12px"></div>
			</form><li><a href="registro.jsp"><span class="glyphicon glyphicon-user"></span> Registrar
							</a></li>
							<%
				}
				%>
			
		</ul>
	</div>
</nav>
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
