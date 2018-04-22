<%@ include file="parts/head.jsp"%>
<body class="breakpoint-1024">
  <div class="st-container">
<div class="navbar navbar-main navbar-primary navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#sidebar-chat" data-toggle="sidebar-menu"
            class="toggle pull-right visible-xs">
            <i class="fa fa-comments"></i>
          </a>
          <a class="navbar-brand" href="http://themekit.frontendmatter.com/dist/themes/social-3/index.html">StreetArt</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="main-nav">
          <ul class="nav navbar-nav">
            <li>
              <a href="http://themekit.frontendmatter.com/index.html">Themes</a>
            </li>
            <li class="dropdown">
              <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#" class="dropdown-toggle" data-toggle="dropdown">Pages
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu" role="menu">
                <li class="dropdown-header">Public User Pages</li>
                <li class="active">
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html">Timeline</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-profile.html">About</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-users.html">Friends</a>
                </li>
                <li class="dropdown-header">Private User Pages</li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-private-messages.html">Messages</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-private-profile.html">Profile</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/index.html">Timeline</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-private-users.html">Friends</a>
                </li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#" class="dropdown-toggle" data-toggle="dropdown">UI Components
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu">
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/essential-buttons.html">
                    <i class="fa fa-th"></i> Buttons</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/essential-icons.html">
                    <i class="fa fa-paint-brush"></i> Icons</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/essential-progress.html">
                    <i class="fa fa-tasks"></i> Progress</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/essential-grid.html">
                    <i class="fa fa-columns"></i> Grid</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/essential-forms.html">
                    <i class="fa fa-sliders"></i> Forms</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/essential-tables.html">
                    <i class="fa fa-table"></i> Tables</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/essential-tabs.html">
                    <i class="fa fa-circle-o"></i> Tabs</a>
                </li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav  navbar-right ">
            <li class="hidden-xs">
              <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#sidebar-chat" data-toggle="sidebar-menu">
                <i class="fa fa-comments"></i>
              </a>
            </li>
            <!-- User -->
            <li class="dropdown">
              <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#" class="dropdown-toggle user"
                data-toggle="dropdown">
                <img src="./Profile_files/guy-5.jpg" alt="Bill" class="img-circle" width="40"> Bill
                <span class="caret"></span>
              </a>
              <ul class="dropdown-menu" role="menu">
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-private-profile.html">Profile</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-private-messages.html">Messages</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-3/login.html">Logout</a>
                </li>
              </ul>
            </li>

          </ul>
        </div>
        <!-- /.navbar-collapse -->
      </div>
    </div>
<%
	int id_u;
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
	
	List<home> traer_ima = ImgController.getImage(id_u);
	
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

                  <li class="active">
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html">
                      <i class="fas fa-briefcase"></i> Portfolio</a>
                  </li>
                  <li>
                    <a href="About.html">
                      <i class="fas fa-user"></i> Sobre mi</a>
                  </li>
                  <li>
                    <a href="Anuncios.html">
                      <i class="fas fa-warehouse"></i> Muros</a>
                  </li>
                </ul>
              </div>
            </div>

<div class="timeline row" data-toggle="isotope" style="position: relative; height: 1967.74px;">
                <%
		for (home g : traer_ima) {
	%> <div class="col-xs-12 col-md-6 col-lg-4 item">
         <div class="timeline-block elementoHome" style="position: relative; width:330px; height:254px">
			<a href="buscaImagen?id_img=<%=g.getIdImagen()%>&id_user=<%=id_u%>">	
			<img src="img/<%=g.getUrl()%>" style="width:330px; height:250px" alt="place" class="img-responsive"> </a>
			<%
				if (id_u != 0) {
						String clase = "";
						if (UsuarioController.bool(g.getIdImagen(), id_u)) {
							clase = "corazonLleno";
						}else{
							clase = "fondo";
						}
			%>
			<div class="posAbs">
				<i class="fas fa-heart botonlike btn-xs btn-alert <%=clase%>"
					style="font-size: 30px" data-idimagen="<%=g.getIdImagen()%>"
					data-idu="<%=id_u%>"></i>
			</div>
			<%
				}
			%>
		<div class="panel-body panel-boxed pull-left" style="padding-left:20px; margin-bottom:20px">
			<h5 class="text-portfolio-img" style="font-style:italic" >Le ha gustado a <b><span class="numlikes"><%=ImgController.getLikes(g.getIdImagen())%></span></b> personas</h5>
			<h4 class="text-portfolio-img">Autor: <a href="perfil?id_autor=<%=g.getIdUsuario()%>&id_usu=<%=id_u%>" style="color:black;font-style:italic"><%=g.getNomUsuario()%></a></h4>
			<h4 class="text-portfolio-img">Ubicación: <a href="#" style="color:black;font-style:italic">Barcelona</a></h4> 
		<label>Estilo:</label><span><%=g.getEstilo()%></span><br> 
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