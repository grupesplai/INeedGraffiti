<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="parts/head.jsp"%>
		<%List<home> tops = ImgController.imgTop();%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">

<%
	int id_u;
int id_autor = (int) session.getAttribute("id_aut");
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
%><%@ include file="parts/sesion.jsp"%>
<%
	} else {
		id_u = 0;
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u);
	}
	
	
	
	List<Usuario> profile = UsuarioController.getPerfil(id_autor);
	List<home> traer_ima = ImgController.getImage(id_autor);
	List<Anuncios> traer_anuncio = UsuarioController.getAnuncio(id_autor);
%>
<br>

<div class="row" >
<div align="center">
	<%
		for (Usuario user : profile) {
	%><div style="display: inline-block;text-align:center;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<img class="img-fluid img-thumbnail" src="user/<%=user.getUrl()%>"
			width="100" height="70"><br> <h3><label><%=user.getUsuario()%>
		</label></h3><br> <label><%=user.getEmail()%></label><br> <label>
			<%=user.getMovil()%></label><br> <label> <%=user.getLikes()%></label>
	</div>
	<%
		}
	%>
</div>
</div>

<h1 align="center">Portfolio</h1><a  class="btn btn-secondary btn-sm" href="subiranuncio.jsp" role="buttom">Publicar</a>

<div class="timeline row" style="position: relative; height: 1000px;">
                <%
		for (home g : traer_ima) {
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
			<h5 class="text-portfolio-img" style="font-style:italic" >Le ha gustado a <b><span class="numlikes"><%=ImgController.getLikes(g.getIdImagen())%></span></b> personas</h5>
			<h4 class="text-portfolio-img">Autor: <a href="perfil?id_autor=<%=g.getIdUsuario()%>&id_usu=<%=id_u%>" style="color:black;font-style:italic"><%=g.getNomUsuario()%></a></h4>
			<h4 class="text-portfolio-img">Ubicación: <a href="#" style="color:black;font-style:italic">Barcelona</a></h4> 
		<label>Estilo:</label><span><%=g.getEstilo()%></span><br> 
		<label>Fecha:</label><span><%=g.getFecha()%></span><br>
		<label>Descripción:</label><div><%=g.getDescripcion()%></div>
		</div></div>
	</div>
	<%
		}
	%>

</div>





<div class="row">
<%
if(traer_anuncio.isEmpty() == false){
	%>
	
	<h1 align="center">Anuncios</h1><a  class="btn btn-secondary btn-sm" href="subiranuncio.jsp" role="buttom">Publicar</a>
	<%
}
		for (Anuncios a : traer_anuncio) {
	%>
	
	<div style="display: inline-block;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<img src="img/<%=a.getUrl()%>" width="200" height="150"><br>
		<label>Descripcion:</label> <span><%=a.getDescripcion()%></span><br>
		<label>Fecha:</label> <span><%=a.getFechas()%> </span><br>
	</div>
	<%
		}
	%>
</div>
</div>
<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>