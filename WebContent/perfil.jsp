<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%><%@ page import="controladores.*"%>

<%
	int id_au = (Integer) session.getAttribute("id_autor");
	List<Usuario> profile = UsuarioController.getPerfil(id_au);
%>
<%@ include file="parts/barraMenu.jsp"%>
		<div class="row">
			<%
				for (Usuario user : profile) {
			%><div  style="display:inline-block;
				class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center foto_home">
				<img class="img-fluid img-thumbnail" src="user/<%=user.getUrl()%>" width="100" height="70"><br>
				<label><%=user.getUsuario()%> </label><br>
				<label><%=user.getEmail()%></label><br>
				<label> <%=user.getMovil()%></label>
			</div>
			<% } %>
		</div>
	</div>
</body>
</html>