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
		<ul class="nav navbar-nav navbar-right">
			<%
				if(id_u != 0){
					%><li style="color:white;padding-top:15px;padding-bottom:15px;display:inline-block"><span class="glyphicon glyphicon-user"></span> Bienvenido: <b><%=UsuarioController.traeNick(id_u) %> </b> 
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
				<input name="password" placeholder="Contraseña" class="form-control" style="width:200px;height:26px;display:inline-block;font-size:12px;font-style:italic"> 
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
	<% 
	if(id_u != 0){
	%>
			<div style="padding-left:200px;padding-top:10px">
				<a class="btn btn-secondary btn-sm" href="anuncios.jsp" role="buttom" style="font-size:15px;font-family:'Pacifico',cursive;font-weight:normal">Anuncios</a>
				<a class="btn btn-secondary btn-sm" href="pasaId?id_usu=<%=id_u%>&id_usua=<%=id_u%>" role="buttom" style="font-size:15px;font-family:'Pacifico',cursive;font-weight:normal">Historial de mensajes</a>
				<a class="btn btn-secondary btn-sm" href="perfil?id_autor=<%=id_u%>&id_usu=<%=id_u%>" role="buttom" style="font-size:15px;font-family:'Pacifico',cursive;font-weight:normal">Mi Muro</a>
				<a class="btn btn-secondary btn-sm" href="publicar.jsp" role="buttom" style="font-size:15px;font-family:'Pacifico',cursive;font-weight:normal">Publicar</a>

				<br>
			</div>
	<%}else{
		%>
		<div style="padding-left:200px;padding-top:10px">
			<a class="btn btn-secondary btn-sm" href="anuncios.jsp" role="buttom" style="font-size:15px;font-family:'Pacifico',cursive;font-weight:normal">Anuncios</a>
			<br>
		</div>
<%
	}
		%>