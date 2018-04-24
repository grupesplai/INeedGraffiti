<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="parts/head.jsp"%>
	<%
	String busqueda = (String) session.getAttribute("Buscar");
	List<Search> profile = SearchController.getSearch(busqueda);
	%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
	
		<h1>Resultados:</h1><hr>
	<div class="row">
		
		<%
			for (Search s: profile) {
		%><div class="col-xs-12 col-md-6 col-lg-4 item">
			<a href="buscaImagen?id_img=<%=s.getImagenes()%>"><img
				src="img/<%=s.getImagenes()%>" width="200" height="150"> </a><br>
			<br> <label><%=s.getUsuario()%> </label><br> <label>
				<%=s.getEstilo()%></label><br> <label><%=s.getDescripcion()%></label><br>
		</div>
		<%
		}
		if(profile.isEmpty()){
			%><span style="color:black;font-size:12px;padding-left:50px">No hay coincidencias. </span><%
			}
		%></div>
		</div>
		<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>