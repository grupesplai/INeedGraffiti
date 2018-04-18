<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>
<% 
int id_u = (Integer) session.getAttribute("id_usu");
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
</body>
</html>