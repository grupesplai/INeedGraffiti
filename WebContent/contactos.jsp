<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>

<%
	int id_u = (Integer) session.getAttribute("id_em");
	int id_recep = (Integer) session.getAttribute("id_re");

	List<Chat> chatList = ChatController.getChat(id_u, id_recep);/**en la base de datos están cambiados nombre emisor y receptor CUIDADO!*/
%>
<%@ include file="parts/barraMenu.jsp"%>
	<h4>
		<%
			out.println("Conversa con <b>" + id_recep + "</b>");
		%>
	</h4>
	<%
		for (Chat c : chatList) {
			out.println("<input type='text' style='width:350px; height:42px' class='form-control' disabled value='"
					+c.getMensaje()+"'>"+ c.getFecha());
	%><br>
	<%
		}
		out.println("<br>Conversa entre " + id_u + " y " + id_recep);
	%>
	<div>
		<form action="pasaId" method="post">
			<input type='hidden' name='id_emisor' value='<%=id_u%>'>
			<input type='hidden' name='id_recep' value='<%=id_recep%>'>
			<textarea cols="50" rows="4" name="mensaje" class="form-control"
				required></textarea>
			<input type="submit" value="ENVIAR">
		</form>
	</div>
	</div>
</body>
</html>