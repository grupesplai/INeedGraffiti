<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="parts/head.jsp"%>
		<%List<Anuncios> anun = AnuncioController.allAnuncios();%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
<%
	List<Chat> hist = ChatController.getHistorial(id_u);
%>

		<div class="row">
		<ul>
		<h3><span>Listado de conversaciones guardadas:</span></h3>
			<%
				for (Chat h: hist) {
			%><li style="padding-left:100px"><a href="pasaId?id_usu=<%=id_u%>&id_recep=<%=h.getId_recept()%>"><h2 style="font-family:'Pacifico',cursive"><%=ChatController.getNomUsu(h.getId_recept())%></h2></a></li>
			<% } %>
		</ul>
		</div>
	</div>
		<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>