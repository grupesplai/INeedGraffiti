<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="parts/head.jsp"%>	
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
<%
	int id_img = (int) session.getAttribute("id_img");
	List<home> desc_ima = ImgController.getImage(id_img);
%>
<div class="row" align="center" style="display:grid">
<%
	for (home f : desc_ima) {
%>
<div class="elementoHome " style="position: relative; width:600px; height:450px">
	<img src="img/<%=f.getUrl()%>" width="600" height="450">
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
	<br><h5 class="text-portfolio-img" style="font-style:italic" >Le ha gustado a <b><span class="numlikes"><%=ImgController.getLikes(id_img)%></span></b> personas</h5>
</div>
<br>
<div class="panel-body panel-boxed pull-left" style="margin-bottom:20px;text-align:left;padding-left:311px">
			
			<h4 class="text-portfolio-img">Autor: <a href="perfil?id_autor=<%=f.getIdUsuario()%>&id_usu=<%=id_u%>" style="color:black;font-style:italic"> <%=f.getNomUsuario()%></a></h4>
			<h4 class="text-portfolio-img">Ubicación: <a href="search?Buscar=Barcelona" style="color:black;font-style:italic"> Barcelona</a></h4> 
		<h4 class="text-portfolio-img">Estilo: <a href="search?Buscar=<%=f.getEstilo()%>" style="color:black;font-style:italic"> <%=f.getEstilo()%></a></h4>
		<h4 class="text-portfolio-img">Fecha: <span style="color:black;font-style:italic"> <%=f.getFecha()%></span></h4>
		<h4 class="text-portfolio-img" style="width:300px">Descripción: <span style="color:black;font-style:italic;font-weight:normal"> <%=f.getDescripcion()%></span></h4>
		<%
	if (id_u != 0) {
%>
<br>
	<a href="pasaId?id_usu=<%=id_u%>&id_recep=<%=f.getIdUsuario()%>">	
	<img src="img//default/contactarboton.png" style="width:36%;padding-left:148px" alt="place" class="img-responsive"> </a>
	<br>
<%
		}
	}
	%>	
	</div>
</div>
<h1>Comentarios</h1>
<hr>
	<%
	List<Comentario> listaComentarios = ComentarioController.getComentario(id_img);
	if(listaComentarios.isEmpty()){
		%><span style="padding-left:100px">No existen comentarios para esta imagen.</span><%
	}
	for (Comentario c : listaComentarios) {
	%>
		<label>Usuario: </label><span> <%=c.getUsuario()%> </span>
		<textarea class="form-control" style="resize: none;width:30%;font-size:15px;height:auto"  disabled><%=c.getComentario()%> </textarea>
		<label style="padding-left:155px;font-style:italic">fecha: </label><span> <%=c.getFecha()%> </span>
		<br>
<%
	}
	if (id_u != 0) {
%>

<div style="padding-left:379px">
<br>
<h4>Nuevo Comentario</h4>
<form action="/iGrafitti/creaComentario" method="post">
	<div class="form-group">
		<input type="hidden" name="tipusComentari" value="coment_img"> 
		<input type="hidden" name="id_img" value="<%=id_img%>"> 
		<input type="hidden" name="id_usu" value="<%= id_u%>"> 
		<textarea style="resize: none;width:377px;height:122px;font-size:12px" name="comentario" placeholder="Deja tu comentario. (Max.250 caracteres)" class="form-control"></textarea>
	</div>
	<button type="submit" class="btn btn-primary" style="width:16%;font-size:12px">Comentar</button>
</form>
</div>
<%} %>
</div>
<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>