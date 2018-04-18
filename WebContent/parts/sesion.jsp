<%@page import="servlets.login"%>
<h3>
	<%
		if ((int) session.getAttribute("id_usu") != 0 || (String) session.getAttribute("nick") == null
				|| (String) session.getAttribute("nick") == "" || session.getAttribute("id_usu")!= null ) {
			
			int id = (int) session.getAttribute("id_usu");
			String nick = (String) session.getAttribute("nick");

			out.println("Bienvenido " + nick + " con ID: " + id);
		}
	%>
</h3>
