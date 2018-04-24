<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@ include file="parts/head.jsp"%>
		<%List<Anuncios> anun = AnuncioController.allAnuncios();%>
<body>
<%@ include file="parts/barraMenu.jsp"%>
	<div class="container" style="padding-top: 60px">
<%
	int id_recep;
	if (session.getAttribute("id_em") != null && (int) session.getAttribute("id_em") != 0) {
		id_u = (Integer) session.getAttribute("id_em");
		id_recep = (Integer) session.getAttribute("id_re");
	} else {
		id_u= 0;
		id_recep=0;
	}	%>
<%
	List<Chat> chatList = ChatController.getChat(id_u, id_recep);/**en la base de datos están cambiados nombre emisor y receptor CUIDADO!*/
%>

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
		<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>