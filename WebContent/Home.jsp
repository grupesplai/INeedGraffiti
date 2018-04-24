<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="parts/head.jsp"%>
		<%List<home> tops = ImgController.imgTop();%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
			<form action="login" method="post">
			<input name="usuario"> <input name="password"> <input
				type="submit" value="Entrar">
			</form>
	<div class="timeline row" style="position: relative; height:auto;">
    <%
			for (home g : tops) {
	%> <div class="col-xs-12 col-md-6 col-lg-4 item">
			<div class="timeline-block elementoHome" style="position: relative; width:330px; height:254px">
				<a href="buscaImagen?id_img=<%=g.getIdImagen()%>&id_user=<%=id_u%>">	
				<img src="img/<%=g.getUrl()%>" style="width:330px; height:250px" alt="place" class="img-responsive"> </a>
			<%
			if (id_u != 0) {
					String clase = "";
					if (UsuarioController.bool(g.getIdImagen(), id_u)) {
						clase = "corazonLleno";
					}else{
						clase = "fondo";
					}
			%>
			<div class="posAbs">
				<i class="fas fa-heart botonlike btn-xs btn-alert <%=clase%>"
					style="font-size: 30px" data-idimagen="<%=g.getIdImagen()%>"
					data-idu="<%=id_u%>"></i>
			</div>
			<%
			}
			%>
	<div class="panel-body panel-boxed pull-left" style="padding-left:20px; margin-bottom:20px">
		<h5 class="text-portfolio-img" style="font-style:italic" >Le ha gustado a <b><span class="numlikes"><%=g.getLikes()%></span></b> personas</h5>
		<h4 class="text-portfolio-img">Autor: <a href="perfil?id_autor=<%=g.getIdUsuario()%>&id_usu=<%=id_u%>" style="color:black;font-style:italic"><%=g.getNomUsuario()%></a></h4>
		<h4 class="text-portfolio-img">Ubicación: <a href="#" style="color:black;font-style:italic">Barcelona</a></h4>
	</div></div>
	</div>
	<%
	}
	%></div>
	</div>
		<br> <a href="anuncios.jsp">anuncios</a><br> 
		<a href="pasaId?id_usu=<%=id_u%>&id_usua=<%=id_u%>">historial de mensajes</a><br> 
		<a href="addImage?id_usu=<%= id_u%>">Añadir imagenes</a><br> 
		<a href="registro.jsp">Registrarse</a>
<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>