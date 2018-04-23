<%@ include file="parts/head.jsp"%>
<body class="breakpoint-1024">
  <div class="st-container">
<%@ include file="parts/barraNav.jsp"%>
<%
	int id_u;
	int id_autor = (int) session.getAttribute("id_aut");
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
		%>
		<div>
	<a href="login">LOG-OUT</a>
</div>
<%
} else {
		id_u = 0;
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u);
	}
	
	List<Anuncios> traer_anuncio = UsuarioController.getAnuncio(id_autor);
	
%>
    <div class="sidebar sidebar-chat right sidebar-size-2 sidebar-offset-0 chat-skin-dark sidebar-visible-mobile" id="sidebar-chat">
      <div class="split-vertical">
        <div class="chat-search">
          <input type="text" class="form-control" placeholder="Search">
        </div>

        <ul class="chat-filter nav nav-pills ">
          <li class="active">
            <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#" data-target="li">All</a>
          </li>
          <li>
            <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#" data-target=".online">Online</a>
          </li>
          <li>
            <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#" data-target=".offline">Offline</a>
          </li>
        </ul>
        <div class="split-vertical-body">
          <div class="split-vertical-cell">
            <div data-scrollable="" style="overflow-y: hidden; outline: none;" tabindex="0">
              <ul class="chat-contacts">
                <li class="online" data-user-id="1">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">
                    <div class="media">
                      <div class="pull-left">
                        <span class="status"></span>
                        <img src="./Profile_files/guy-6.jpg" width="40" class="img-circle">
                      </div>
                      <div class="media-body">

                        <div class="contact-name">Jonathan S.</div>
                        <small>"Free Today"</small>
                      </div>
                    </div>
                  </a>
                </li>

                <li class="online away" data-user-id="2">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">

                    <div class="media">
                      <div class="pull-left">
                        <span class="status"></span>
                        <img src="./Profile_files/woman-5.jpg" width="40" class="img-circle">
                      </div>
                      <div class="media-body">
                        <div class="contact-name">Mary A.</div>
                        <small>"Feeling Groovy"</small>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="online" data-user-id="3">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">
                    <div class="media">
                      <div class="pull-left ">
                        <span class="status"></span>
                        <img src="./Profile_files/guy-3.jpg" width="40" class="img-circle">
                      </div>
                      <div class="media-body">
                        <div class="contact-name">Adrian D.</div>
                        <small>Busy</small>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="offline" data-user-id="4">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">
                    <div class="media">
                      <div class="pull-left">
                        <img src="./Profile_files/woman-6.jpg" width="40" class="img-circle">
                      </div>
                      <div class="media-body">
                        <div class="contact-name">Michelle S.</div>
                        <small>Offline</small>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="offline" data-user-id="5">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">
                    <div class="media">
                      <div class="pull-left">
                        <img src="./Profile_files/woman-7.jpg" width="40" class="img-circle">
                      </div>
                      <div class="media-body">
                        <div class="contact-name">Daniele A.</div>
                        <small>Offline</small>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="online" data-user-id="6">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">
                    <div class="media">
                      <div class="pull-left">
                        <span class="status"></span>
                        <img src="./Profile_files/guy-4.jpg" width="40" class="img-circle">
                      </div>
                      <div class="media-body">
                        <div class="contact-name">Jake F.</div>
                        <small>Busy</small>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="online away" data-user-id="7">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">
                    <div class="media">
                      <div class="pull-left">
                        <span class="status"></span>
                        <img src="./Profile_files/woman-6.jpg" width="40" class="img-circle">
                      </div>
                      <div class="media-body">
                        <div class="contact-name">Jane A.</div>
                        <small>"Custom Status"</small>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="offline" data-user-id="8">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">
                    <div class="media">
                      <div class="pull-left">
                        <span class="status"></span>
                        <img src="./Profile_files/woman-8.jpg" width="40" class="img-circle">
                      </div>
                      <div class="media-body">
                        <div class="contact-name">Sabine J.</div>
                        <small>"Offline right now"</small>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="online away" data-user-id="9">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">
                    <div class="media">
                      <div class="pull-left">
                        <span class="status"></span>
                        <img src="./Profile_files/woman-9.jpg" width="40" class="img-circle">
                      </div>
                      <div class="media-body">
                        <div class="contact-name">Danny B.</div>
                        <small>Be Right Back</small>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="online" data-user-id="10">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">
                    <div class="media">
                      <div class="pull-left">
                        <span class="status"></span>
                        <img src="./Profile_files/woman-8.jpg" width="40" class="img-circle">
                      </div>
                      <div class="media-body">
                        <div class="contact-name">Elise J.</div>
                        <small>My Status</small>
                      </div>
                    </div>
                  </a>
                </li>
                <li class="online" data-user-id="11">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">
                    <div class="media">
                      <div class="pull-left">
                        <span class="status"></span>
                        <img src="./Profile_files/guy-3.jpg" width="40" class="img-circle">
                      </div>
                      <div class="media-body">
                        <div class="contact-name">John J.</div>
                        <small>My Status #1</small>
                      </div>
                    </div>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div id="ascrail2000" class="nicescroll-rails" style="width: 5px; z-index: 2; cursor: default; position: absolute; top: 0px; left: -5px; height: 0px; display: none;">
        <div style="position: relative; top: 0px; float: right; width: 5px; height: 0px; background-color: rgb(22, 174, 159); border: 0px; background-clip: padding-box; border-radius: 5px;"></div>
      </div>
    </div>
    
    <div class="chat-window-container"></div>
    <div class="st-pusher" id="content">
      <div class="st-content">
        <div class="st-content-inner">
          <div class="container">
            <div class="cover profile">
              <div class="wrapper">
                <div class="image">
                  <img src="./Profile_files/imagenes/image-portada-2.jpg" alt="people">
                </div>
              </div>
              <div class="cover-info">
                <div class="avatar">
                  <img src="./Profile_files/guy-5.jpg" alt="people">
                </div>
                <div class="name">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#">Helio Bray</a>
                </div>
                <ul class="cover-nav">
                  <li>
                    <a href="perfil.jsp">
                      <i class="fas fa-briefcase"></i> Portfolio</a>
                  </li>
                  <li>
                    <a href="about.jsp">
                      <i class="fas fa-user"></i> Sobre mi</a>
                  </li>
                  <li class="active">
                    <a href="anuncios2.jsp">
                      <i class="fas fa-warehouse"></i> Muros</a>
                  </li>
                </ul>
              </div>
            </div>

<div class="timeline row" data-toggle="isotope" style="position: relative; height: 1967.74px;">
                <%
		for (Anuncios g : traer_anuncio) {
	%> <div class="col-xs-12 col-md-6 col-lg-4 item">
         <div class="timeline-block elementoHome" style="position: relative; width:330px; height:254px">
			<a href="buscaImagen?id_img=<%=g.getIdImagen()%>&id_user=<%=id_u%>">	
			<img src="img/<%=g.getUrl()%>" style="width:330px; height:250px" alt="place" class="img-responsive"> </a>
		<div class="panel-body panel-boxed pull-left" style="padding-left:20px; margin-bottom:20px">
			
			<h4 class="text-portfolio-img">Autor: <a href="perfil?id_autor=<%=g.getIdUsuario()%>&id_usu=<%=id_u%>" style="color:black;font-style:italic"><%=g.getNomUsuario()%></a></h4>
			<h4 class="text-portfolio-img">Ubicación: <a href="#" style="color:black;font-style:italic">Barcelona</a></h4> 
		<label>Fecha:</label><span><%=g.getFecha()%></span><br>
		<label>Descripción:</label><div><%=g.getDescripcion()%></div>
		</div></div>
	</div>
	<%
		}
	%>
              </div>
             </div>
          </div>
        </div>
      </div>
 </div>
 <footer class="footer">
      <strong>ThemeKit</strong> v4.0.0 © Copyright 2015
    </footer>

 <script type="text/javascript" src="./Profile_files/js"></script>
  <div style="position: absolute; left: 0px; top: -2px; height: 1px; overflow: hidden; visibility: hidden; width: 1px;">
    <span style="position: absolute; font-size: 300px; width: auto; height: auto; margin: 0px; padding: 0px; font-family: Roboto, Arial, sans-serif;">BESbswy</span>
  </div>
    <%@ include file="parts/footerAjax.jsp"%>
</body>
</html>