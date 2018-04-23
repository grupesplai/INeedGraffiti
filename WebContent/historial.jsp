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
	}
	
	List<Chat> hist = ChatController.getHistorial(id_u);
%>
<%@ include file="parts/barraMenu.jsp"%>
		<div class="row">
		<ul>
			<%
				for (Chat h: hist) {
			%><li><a href="pasaId?id_emi=<%=id_u%>&id_recep=<%=h.getId_recept()%>"><%=h.getId_recept()%> - <%=ChatController.getNomUsu(h.getId_recept())%></a></li>
			<% } %>
		</ul>
		</div>
	</div>
		<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>