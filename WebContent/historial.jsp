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
			<%
				for (Chat h: hist) {
			%><li><a href="pasaId?id_usu=<%=id_u%>&id_recep=<%=h.getId_recept()%>"><%=h.getId_recept()%> - <%=ChatController.getNomUsu(h.getId_recept())%></a></li>
			<% } %>
		</ul>
		</div>
	</div>
		<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>