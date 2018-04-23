<%@page import="servlets.login"%>
<h3>
	<%
		if ((int) session.getAttribute("id_usu") != 0 || (String) session.getAttribute("nick") == null
				|| (String) session.getAttribute("nick") == "" || session.getAttribute("id_usu")!= null ) {
			
			int id = (int) session.getAttribute("id_usu");
			String nick = (String) session.getAttribute("nick");

			out.println("Bienvenido <a href='perfil?id_usu="+id+"&id_autor="+id+"'>" + nick + "</a> con ID: " + id);
		}
	%>
</h3>
