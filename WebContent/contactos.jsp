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
<h1>Mensajes</h1>
<hr>
	<%
	if(chatList.isEmpty()){
		%><span style="padding-left:100px">No existen mensajes con este usuario.</span><%
	}
		for (Chat c : chatList) {
			out.println("<textarea type='text' style='resize: none;width:30%;font-size:15px;height:auto' class='form-control' disabled>"
					+c.getMensaje()+"</textarea>");
	%><label style="padding-left:155px;font-style:italic">fecha: </label><span style="color:black"> <%=c.getFecha()%> </span>
	<%
		}
		%><div style="padding-left:379px"><%
		out.println("<br>Mensaje para: <b id='curs'\"" + UsuarioController.buscaAutor(id_recep) + "\"</b>");
	%>
		<form action="pasaId" method="post">
			<input type='hidden' name='id_emisor' value='<%=id_u%>'>
			<input type='hidden' name='id_recep' value='<%=id_recep%>'>
			<textarea style="resize: none;width:377px;height:auto;font-size:12px" name="mensaje" class="form-control"
				required></textarea><br>
			<button type="submit" class="btn btn-primary" style="width:16%;font-size:12px">ENVIAR</button>
		</form>
	</div>
	</div>
		<%@ include file="parts/footerAjax.jsp"%>
</body>
</html>