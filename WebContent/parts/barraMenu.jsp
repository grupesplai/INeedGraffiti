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
			<a class="logo" href="Home.jsp">INeedGraffiti</a>
 		</div>

		<ul class="nav navbar-nav navbar-right">
			<li><form class="navbar-form navbar-left text-center"
					action="search" method="post">
					<div class="form-group">
						<input type="text" class="form-control" name="Buscar"
							placeholder="BuscarGraffiti">
					</div>
					<button type="submit" class="btn btn-default">Buscar</button>
				</form><%
				if(id_u != 0){
					%><li style="color:white;padding-top:15px;padding-bottom:15px"><span class="glyphicon glyphicon-user"></span> Bienvenido: <b><%=UsuarioController.traeNick(id_u) %></b> 
							</li>
							<%
				}else{
					%><li><a href="registro.jsp"><span class="glyphicon glyphicon-user"></span> Registrar
							</a></li>
							<%
				}
				%>
			<li><a href="#"> <span class="glyphicon glyphicon-log-in"></span>Iniciar
					Sessión
			</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#"
				id="navbarDropdownMenuLink" data-toggle="dropdown"
				aria-haspopup="true" aria-expanded="false"> Dropdown link </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a> <a
						class="dropdown-item" href="#">Something else here</a>
				</div></li>
		</ul>
	</div>
</nav>
			<%
			if(id_u != 0){
				%>
			<div>
				<a href="login">LOG-OUT</a>
			</div>
			<%
			} %>