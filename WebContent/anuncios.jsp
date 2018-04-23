<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="parts/head.jsp"%>
		<%List<Anuncios> anun = AnuncioController.allAnuncios();%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
<%
	int id_u;
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
%><%@ include file="parts/sesion.jsp"%>
<div>
	<a href="login">LOG-OUT</a>
</div>
<%
	} else {
		id_u=0;
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u + "<br>");
	}	%>
	<div class="row">
	<%
		for (Anuncios g : anun) {
	%><div style="display: inline-block;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<a href="pasaId?id_anun=<%=g.getIdImagen()%>&id_usu=<%=id_u%>">
		<img src="img/<%=g.getUrl()%>" width="250" height="180"></a><br>
			<label>Autor:</label><a href="perfil"><%=g.getNomUsuario()%><%=g.getIdImagen()%></a><br>
			<label>Fecha:</label><span><%=g.getFecha()%> </span><br>
		<%if (id_u != 0) {%>
		<a href="pasaId?id_usu=<%=id_u%>&id_recep=<%=g.getIdUsuario()%>">Contactar</a><br>
		<%}
		%></div><%
		}
		%>
</div>
</div>
<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>