<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="parts/head.jsp"%>
<%
	List<home> tops = ImgController.imgTop();
%>
<body>
	<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">

		<%
			int id_autor = (int) session.getAttribute("id_aut");

			List<Usuario> profile = UsuarioController.getPerfil(id_autor);
			List<home> traer_ima = ImgController.getImage(id_autor);
			List<Anuncios> traer_anuncio = UsuarioController.getAnuncio(id_autor);
		%>
		<div class="row" align="center" style="display: grid">
			<%
				for (Usuario user : profile) {
			%><div class="col-xs-12 col-md-6 col-lg-4 item">
				<div class="timeline-block" width=100%>
					<img class="img-fluid img-thumbnail" src="user/<%=user.getUrl()%>"
						style="width: 130px; height: 130px"><br> <br>
					<h3>
						<label><%=user.getUsuario()%></label>
					</h3>
					<br> <label style="width: 50px">e-mail</label><span
						style="color: black"><%=user.getEmail()%></span><br> <label>Teléfono
						de contacto:</label><span style="color: black"><%=user.getMovil()%></span><br>
					<label> falta traer dato</label><span style="color: black">
						<%=user.getLikes()%></span><br> <br>
				</div>
			</div>
			<%
				}
			%>

		</div>

		<h1 style="padding-center: 200px">Muro del autor</h1>
		<hr />

		<div class="timeline row" style="position: relative; height: auto;">
			<%
				for (home g : traer_ima) {
			%>
			<div class="col-xs-12 col-md-6 col-lg-4 item">
				<div class="timeline-block elementoHome"
					style="position: relative; width: 330px; height: 254px">
					<a href="buscaImagen?id_img=<%=g.getIdImagen()%>&id_user=<%=id_u%>">
						<img src="img/<%=g.getUrl()%>" style="width: 330px; height: 250px"
						alt="place" class="img-responsive">
					</a>
					<%
						if (id_u != 0) {
								String clase = "";
								if (UsuarioController.bool(g.getIdImagen(), id_u)) {
									clase = "corazonLleno";
								} else {
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
					<div class="panel-body panel-boxed pull-left"
						style="padding-left: 20px; margin-bottom: 20px">
						<h5 class="text-portfolio-img" style="font-style: italic">
							Le ha gustado a <b><span class="numlikes"><%=ImgController.getLikes(g.getIdImagen())%></span></b>
							personas
						</h5>
						<h4 class="text-portfolio-img">
							Autor: <a
								href="perfil?id_autor=<%=g.getIdUsuario()%>&id_usu=<%=id_u%>"
								style="color: black; font-style: italic"><%=g.getNomUsuario()%></a>
						</h4>
						<h4 class="text-portfolio-img">
							Ubicación: <a href="#" style="color: black; font-style: italic">
								Barcelona</a>
						</h4>
						<h4 class="text-portfolio-img">Estilo:</h4>
						<span> <%=g.getEstilo()%></span><br>
						<h4 class="text-portfolio-img">Fecha:</h4>
						<span> <%=g.getFecha()%></span><br>
						<h4 class="text-portfolio-img">Descripción:</h4>
						<span> <%=g.getDescripcion()%></span>
					</div>
				</div>
			</div>
			<%
				}
			%></div>
			<%
			if(id_autor == id_u){
				if (traer_ima.isEmpty()) {
			%><div align="center">
				<span style="color: black; font-size: 12px; padding-center: 50px">Aún
					no has publicado ninguna imagen. ¿Quieres <a href="subirimg.jsp">publicar</a>
					ahora?
				</span>
			</div>
			<%
				}
			}
			%>
		

		<h1 style="padding-center: 200px">Anuncios</h1>
		<hr />
		<%
			for (Anuncios a : traer_anuncio) {
		%>

		<div style="display: inline-block;"
			class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
			<img src="img/<%=a.getUrl()%>" width="200" height="150"><br>
			<label>Descripcion:</label> <span><%=a.getDescripcion()%></span><br>
			<label>Fecha:</label> <span><%=a.getFecha()%> </span><br>
		</div>
		<%
			}
		if(id_autor == id_u){
			if (traer_anuncio.isEmpty()) {
		%><div align="center">
			<span style="color: black; font-size: 12px; padding-center: 50px">Aún
				no has publicado ninguna imagen. ¿Quieres <a href="subiranuncio.jsp">publicar</a>
				ahora?
			</span>
		</div>
		<%
			}
		}
		%>
	</div>
	</div>
	<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>