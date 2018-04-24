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
<div class="elementoHome " style="position: relative; width:200px; height:150px">
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
	<br><h5 class="text-portfolio-img" style="font-style:italic" >Le ha gustado a <b><span class="numlikes"><%=ImgController.getLikes(id_img)%></span></b> personas</h5>
</div>
<br>
<div class="panel-body panel-boxed pull-left" style="padding-left:20px; margin-bottom:20px;text-align:left;padding-left:200px">
			
			<h4 class="text-portfolio-img">Autor: <a href="perfil?id_autor=<%=f.getIdUsuario()%>&id_usu=<%=id_u%>" style="color:black;font-style:italic"><%=f.getNomUsuario()%></a></h4>
			<h4 class="text-portfolio-img">Ubicación: <a href="#" style="color:black;font-style:italic">Barcelona</a></h4> 
		<h4 class="text-portfolio-img">Estilo:<a href="search?Buscar=<%=f.getEstilo()%>" style="color:black;font-style:italic"><%=f.getEstilo()%></a></h4>
		<h4 class="text-portfolio-img">Fecha:</h4><span style="color:black;font-style:italic"><%=f.getFecha()%></span><br>
		<h4 class="text-portfolio-img">Descripción:</h4><span style="color:black;font-style:italic"><%=f.getDescripcion()%></span>
		<%
	if (id_u != 0) {
%>
<br>
	<a href="pasaId?id_usu=<%=id_u%>&id_recep=<%=f.getIdUsuario()%>">	
	<img src="img//default/contactarboton.png" style="width:17S%" alt="place" class="img-responsive"> </a>
	<br>
<%
		}
	}
	%>	
	</div>
</div><br>
	<%
	List<Comentario> listaComentarios = ComentarioController.getComentario(id_img);
	for (Comentario c : listaComentarios) {
	%>
		<br>
		<textarea class="form-control" style="resize: none;width:30%;font-size:15px"  disabled><%=c.getComentario()%> </textarea>
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
<%
	}
	if (id_u != 0) {
%>
<h1>Nuevo Comentario</h1>
<hr>
<form action="/iGrafitti/creaComentario" method="post">
	<div class="form-group">
		<label for="comentario">Comenta:</label> 
		<input type="hidden" name="tipusComentari" value="coment_img"> 
		<input type="hidden" name="id_img" value="<%=id_img%>"> 
		<input type="hidden" name="id_usu" value="<%=id_u%>"> 
		<textarea style="resize: none;width:377px;height:122px;font-size:12px" name="comentario" placeholder="Deja un comentario" class="form-control"></textarea>
	</div>
	<button type="submit" class="btn btn-primary">Comentar</button>
</form>

<h1>Nuevo Comentario Muro</h1>
<hr>

<form action="/iGrafitti/creaComentario" method="post">
	<div class="form-group">
		<label for="comentario">Comenta el muro:</label> 
		<input type="hidden" name="tipusComentari" value="coment_muro"> 
		<input type="hidden" name="id_img" value="<%=id_img%>"> 
		<input type="hidden" name="id_usu" value="<%=id_u%>"> 
		<textarea style="resize: none;width:377px;height:122px;font-size:12px" name="comentario" placeholder="Deja un comentario" class="form-control"></textarea>
	</div>
	<button type="submit" class="btn btn-primary" id="comentarMuro" >Comentar</button>
</form>
<hr>
<%
	}
%>
</div>
<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>