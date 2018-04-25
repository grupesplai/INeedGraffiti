<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="parts/head.jsp"%>
		<%List<Anuncios> anun = AnuncioController.allAnuncios();%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
	<div class="row">
	<%
		for (Anuncios g : anun) {
	%><div style="display: inline-block;"
		class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
		<a href="pasaId?id_anun=<%=g.getIdImagen()%>&id_usu=<%=id_u%>">
		<img src="img/<%=g.getUrl()%>" width="250" height="180"></a><br>
			<label>Autor: </label><a href="perfil" style="color:black"> <%=g.getNomUsuario()%><%=g.getIdImagen()%></a><br>
			<label>Fecha: </label><span style="color:black"> <%=g.getFecha()%> </span><br>
		<%
	if (id_u != 0) {
%>
	<a href="pasaId?id_usu=<%=id_u%>&id_recep=<%=g.getIdUsuario()%>">	
	<img src="img//default/contactarboton.png" width="160" alt="place" class="img-responsive"> </a>
	<br>
<%
		}else{
			%>
			<a href="registro.jsp">	
			<img src="img//default/contactarboton.png" width="160" alt="place" class="img-responsive"> </a>
			<br><%
		}
		%></div><%
		}
		%>
</div>
</div>
<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>