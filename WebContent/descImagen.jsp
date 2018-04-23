<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="controladores.*"%>
<%@ page import="modelos.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>

<%
	int id_u = 0;
	int id_img = (Integer) session.getAttribute("id_img");
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
%><%@ include file="parts/sesion.jsp"%>
<%
	} else {
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u);
	}
	List<home> desc_ima = ImgController.getImage(id_img);
%><%@ include file="parts/barraMenu.jsp"%>
<%
	for (home f : desc_ima) {
%>
<div class="elementoHome" style="position: relative; width:200px; height:150px">
	<img src="img/<%=f.getUrl()%>" width="200" height="150">
	<%
		if (id_u != 0) {
				String clase = "";
				if (UsuarioController.bool(f.getIdImagen(), id_u)) {
					clase = "corazonLleno";
				} else {
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
	<br><label>Likes: <span class="numlikes"><%=ImgController.getLikes(id_img)%></span></label>
</div>

<br>
<label>Autor:</label>
<a href="perfil?id_autor=<%=f.getIdUsuario()%>&id_usu=<%=id_u%>"><%=f.getNomUsuario()%></a>
<br>
<label>Estilo:</label>
<span><%=f.getEstilo()%></span>
<br>
<label>Fecha:</label>
<span><%=f.getFecha()%></span>
<br>
<%
	if (id_u != 0) {
%>
<a href="pasaId?id_usu=<%=id_u%>&id_recep=<%=f.getIdUsuario()%>">Contactar</a>
<br>
<%
	}
%>
<textarea><%=f.getDescripcion()%> 	</textarea>
<%
	}
	List<Comentario> listaComentarios = ComentarioController.getComentario(id_img);
	for (Comentario c : listaComentarios) {
%>
<br>
<label>idImagen:</label>
<span><%=c.getIdOrigen()%> </span>
<br>
<label> idComentario: </label>
<span><%=c.getIdComentario()%> </span>
<br>
<label>Nombre del usuario:</label>
<span><%=c.getUsuario()%> </span>
<br>
<textarea><%=c.getComentario()%> </textarea>
<%
	}
	if (id_u != 0) {
%>
<h1>Nuevo Comentario</h1>
<hr>
<form action="/iGrafitti/creaComentario" method="post">
	<div class="form-group">
		<label for="comentarioImagen">Comenta:</label> <input type="hidden"
			name="tipusComentari" value="coment_img"> <input
			type="hidden" name="id_img" value="<%=id_img%>"> <input
			type="hidden" name="id_usu" value="<%=id_u%>"> <input
			type="text" name="comentario" class="form-control">
	</div>
	<button type="submit" class="btn btn-primary">Comentar</button>
</form>

<h1>Nuevo Comentario Muro</h1>
<hr>

<form action="/iGrafitti/creaComentario" method="post">
	<div class="form-group">
		<label for="comentarioMuro">Comenta el muro:</label> <input
			type="hidden" name="tipusComentari" value="coment_muro"> <input
			type="hidden" name="id_img" value="<%=id_img%>"> <input
			type="hidden" name="id_usu" value="<%=id_u%>"> <input
			type="text" name="comentario" class="form-control">
	</div>
	<button type="submit" class="btn btn-primary" id="comentarMuro">Comentar</button>
</form>
<hr>
<%
	}
%>
</div>
<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>