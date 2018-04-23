<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%><%@ page import="controladores.*"%>

<%
	int id_u;
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
%><%@ include file="parts/sesion.jsp"%>
<%
	} else {
		id_u = 0;
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u);
	}
	List<Usuario> profile = UsuarioController.getPerfil(id_u);
	List<home> traer_ima = ImgController.getImage(id_u);
	List<Anuncios> traer_anuncio = UsuarioController.getAnuncio(id_u);
%>
<%@ include file="parts/barraMenu.jsp"%>
<div class="row">
	<%
		for (Usuario user : profile) {
	%><div style="display: inline-block;text-align:center;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<img class="img-fluid img-thumbnail" src="user/<%=user.getUrl()%>"
			width="100" height="70"><br> <label><%=user.getUsuario()%>
		</label><br> <label><%=user.getEmail()%></label><br> <label>
			<%=user.getMovil()%></label><br> <label> <%=user.getLikes()%></label>
	</div>
	<%
		}
	%>
</div>
<div class="row">
	<h1 align="center">Portfolio</h1>
	<%
		for (home f : traer_ima) {
	%>
	<div style="display: inline-block;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<div class="elementoHome" style="position: relative; width:200px; height:150px">
			<a href="buscaImagen?id_img=<%=f.getIdImagen()%>&id_user=<%=id_u%>"><img
				src="img/<%=f.getUrl()%>" width="200" height="150"> </a>
			<%
				if (id_u != 0) {
						String clase = "";
						if (UsuarioController.bool(f.getIdImagen(), id_u)) {
							clase = "corazonLleno";
						}else{
							clase = "fondo";
						}
			%>
			<div class="posAbs">
				<i class="fas fa-heart botonlike btn-xs btn-alert <%=clase%>"
					style="font-size: 30px" data-idimagen="<%=f.getIdImagen()%>"
					data-idu="<%=id_u%>"></i>
			</div>
			<%
				}
			%>
		</div>
	<br><label>Likes: <span class="numlikes"><%=ImgController.getLikes(f.getIdImagen())%></span></label>
		<br> <label>Estilo:</label>
		<span><%=f.getEstilo()%></span><br> <label>Fecha:</label><span><%=f.getFecha()%>
		</span><br>
		<div><%=f.getDescripcion()%>
		</div>
	</div>
	<%
		}
	%>
</div>
<div class="row">
<%
if(traer_anuncio.isEmpty() == false){
	%>
	<h1 align="center">Anuncios</h1>
	<%
}
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
	%>
</div>
</div>
<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>