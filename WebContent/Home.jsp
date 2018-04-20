<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>
<%
	List<home> tops = ImgController.imgTop();
%><%@ include file="parts/barraMenu.jsp"%>
<form action="login" method="post">
	<input name="usuario"> <input name="password"> <input
		type="submit" value="Entrar">
</form>
<%
	int id_u = 0;
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
%><%@ include file="parts/sesion.jsp"%>
<div>
	<a href="login">LOG-OUT</a>
</div>
<%
	} else {
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u + "<br>");
	}
%>
<div class="row">
	<%
		for (home g : tops) {
	%><div style="display: inline-block;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home elementoHome">
		<%
			
		%>
		<div style="position: relative">
			<a href="buscaImagen?id_img=<%=g.getIdImagen()%>&id_user=<%=id_u%>"><img
				src="img/<%=g.getUrl()%>" width="200" height="150"> </a>

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
		</div>
		<br> <a
			href="perfil?id_autor=<%=g.getIdUsuario()%>&id_usu=<%=id_u%>"><%=g.getNomUsuario()%></a>
		<label>Likes: <span class="numlikes"><%=g.getLikes()%></span></label>
	</div>
	<%
		}
	%><br> <a href="anuncios.jsp">anuncios</a><br> <a
		href="pasaId?id_usu=<%=id_u%>&id_usua=<%=id_u%>">historial de
		mensajes</a><br> <a href="addImage?id_usu=<%=id_u%>">Añadir
		imagenes</a><br> <a href="registro.jsp">Registrarse</a>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>

<style>
.corazonLleno {
	color: red;
}
.posAbs{
	position: absolute;
	top: 8px;
	right:33px;
}
.fondo{
color:white;
}
</style>

<script>
	$(document).ready(	function() {
		$(document).on(	"click",".botonlike",function(e) {
				var idimagen = $(this).data("idimagen");
				var idu = $(this).data("idu");
				var botonClicado = $(this);

				$(this).toggleClass("corazonLleno");
				$(this).toggleClass("fondo");

				$.get({
					url : "likes",
					dataType : "json",
					data : {
					imglike : idimagen,
					usid : idu
						}, success : function(data) {//callback
							if (data.result == "ok") {
								console.log("nuevos likes: ",data.likes);
								botonClicado.closest("div.elementoHome").find("span.numlikes").text(data.likes);
							} else {
								console.log("se ha producido un error");
							}
				}
	});
});
});
</script>
</body>
</html>