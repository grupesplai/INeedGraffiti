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
	
	List<Usuario> profile = UsuarioController.getPerfil(id_autor);
	
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
    <script id="chat-window-template" type="text/x-handlebars-template">

      <div class="panel panel-default">
        <div class="panel-heading" data-toggle="chat-collapse" data-target="#chat-bill">
          <a href="#" class="close"><i class="fa fa-times"></i></a>
          <a href="#">
            <span class="pull-left">
                    <img src="{{ user_image }}" width="40">
                </span>
            <span class="contact-name">{{user}}</span>
          </a>
        </div>
        <div class="panel-body" id="chat-bill">
          <div class="media">
            <div class="media-left">
              <img src="{{ user_image }}" width="25" class="img-circle" alt="people" />
            </div>
            <div class="media-body">
              <span class="message">Feeling Groovy?</span>
            </div>
          </div>
          <div class="media">
            <div class="media-left">
              <img src="{{ user_image }}" width="25" class="img-circle" alt="people" />
            </div>
            <div class="media-body">
              <span class="message">Yep.</span>
            </div>
          </div>
          <div class="media">
            <div class="media-left">
              <img src="{{ user_image }}" width="25" class="img-circle" alt="people" />
            </div>
            <div class="media-body">
              <span class="message">This chat window looks amazing.</span>
            </div>
          </div>
          <div class="media">
            <div class="media-left">
              <img src="{{ user_image }}" width="25" class="img-circle" alt="people" />
            </div>
            <div class="media-body">
              <span class="message">Thanks!</span>
            </div>
          </div>
        </div>
        <input type="text" class="form-control" placeholder="Type message..." />
      </div>
    </script>

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
                  <li class="active">
                    <a href="about.jsp">
                      <i class="fas fa-user"></i> Sobre mi</a>
                  </li>
                  <li>
                    <a href="anuncios2.jsp">
                      <i class="fas fa-warehouse"></i> Muros</a>
                  </li>

                </ul>
              </div>
            </div>
            <div class="media media-grid media-clearfix-xs">
                <div class="media-left">
                 
                  <div class="width-250 width-auto-xs">
                    <div class="panel panel-default widget-user-1 text-center">
                      <div class="avatar">
                        <img src="./Profile_files/guy-5.jpg" alt="" class="img-circle rodona-img-about">
                        <h3>Helio Bray</h3>
                        <a href="http://themekit.frontendmatter.com/dist/themes/social-1/profile.html#" class="btn btn-success">Following <i class="fa fa-check-circle fa-fw"></i></a>
                      </div>
                      <div class="profile-icons margin-none">
                        <span><i class="fa fa-users"></i> 372</span>
                        <span><i class="fa fa-photo"></i> 43</span>
                      </div>
                      <div class="panel-body">
                        <div class="expandable expandable-indicator-white expandable-trigger">
                          <div class="expandable-content">
                            <h4 class="titulo-about-left">Quien Soy?</h4>
                            <p class="titulo-about-left">I am bray a professional graffiti artist who has been doing commissions related to<strong> design  </strong> for more than years.</p>
                            <h4 class="titulo-about-left">Study Career</h4>
                            <p class="text-about-left">- University of design,  <strong> Jakarta </strong> (2008) </p>
                            <p class="text-about-left">- University of fine arts, <strong>Tokyo</strong> (2011) </p>
                            <p class="text-about-left">- University of art, <strong>Barcelona</strong> (2015) </p>
                            <h4 class="titulo-about-left">Experiences</h4>
                            <p class="text-about-left">- GraffityCompany,  <strong> Barcelona </strong> (2014) </p>
                            <p class="text-about-left">- Berok,  <strong> Barcelona </strong> (2016) </p>
                            <p class="text-about-left">- GraffityStore,  <strong> Barcelona </strong> (2018) </p>
                          <div class="expandable-indicator"><i></i></div></div>
                        </div>
                      </div>
                    </div>
  
                    <!-- Contact -->
                    <div class="panel panel-default">
                      <div class="panel-heading">
                        Contact
                      </div>
                      <ul class="icon-list icon-list-block">
                        <li><i class="fa fa-envelope fa-fw"></i> <a href="#">HelioBray@gmail.com</a></li>
                        <li><i class="fab fa-facebook fa-fw"></i> <a href="https://www.facebook.com/heliobray">/HelioBray</a></li>
                        <li><i class="fab fa-instagram fa-fw"></i> <a href="https://www.instagram.com/heliobray">/HelioBray</a></li>
                      </ul>
                    </div>
                  </div>
                </div>
                <div class="media-body">
                	 <div class="row">
                    <div class="col-xs-12 col-md-12 col-lg-12">
                      <div class="panel panel-default">
                        <div class="panel-heading panel-heading-gray">
                          <a href="#formularis" class="btn btn-white btn-xs pull-right">
                              <i class="fas fa-pencil-alt"></i>
                          </a>
                          <h4 class="titulo-about-right"> General Information </h4>
                        </div>
                        <div class="panel-body">
                          <ul class="list-unstyled profile-about margin-none">
                           <p>
                              <%
					for (Usuario user : profile) {
						%><div style="display: inline-block;text-align:center;" class="col-lg-3 col-md-4 col-sm-6 col-xs-12 col-12 text-center">
							<img class="img-fluid img-thumbnail" src="user/<%=user.getUrl()%>" width="100" height="70"><br> 
							<label><%=user.getUsuario()%></label><br> 
							<label><%=user.getEmail()%></label><br> 
							<label><%=user.getMovil()%></label><br> <label> <%=user.getLikes()%></label>
						</div>
	<%
		}
	%>
                              </p>
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
            </div>
          </div>
      </div>
    </div>
    <footer class="footer">
      <strong>ThemeKit</strong> v4.0.0 © Copyright 2015
    </footer>
  </div>


  <script src="./Profile_files/all.js.descarga"></script>
  <script src="./Profile_files/app.js.descarga"></script>


  <script type="text/javascript" src="./Profile_files/js"></script>
  <div style="position: absolute; left: 0px; top: -2px; height: 1px; overflow: hidden; visibility: hidden; width: 1px;">
    <span style="position: absolute; font-size: 300px; width: auto; height: auto; margin: 0px; padding: 0px; font-family: Roboto, Arial, sans-serif;">BESbswy</span>
  </div>
      <%@ include file="parts/footerAjax.jsp"%>
</body>
</html>