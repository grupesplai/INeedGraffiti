<%@ include file="parts/head.jsp"%>
<body class="breakpoint-1024">
  <div class="st-container">
    <%@ include file="parts/barraNav.jsp"%>
<form action="login" method="post">
	<input name="usuario"> <input name="password"> <input
		type="submit" value="Entrar">
</form>
<%
	int id_u = 0;
	if (session.getAttribute("id_usu") != null && (int) session.getAttribute("id_usu") != 0) {
		id_u = (int) session.getAttribute("id_usu");
		%>
		<div>
	<a href="login">LOG-OUT</a>
</div>
<%
	} else {
		out.println("Bienvenido User: <a href='editar.jsp'> Falta LOG</a> con ID: " + id_u + "<br>");
	}
	
%>
    <div class="sidebar left sidebar-size-2 sidebar-offset-0 sidebar-visible-desktop sidebar-visible-mobile sidebar-skin-dark"
          id="sidebar-menu" data-type="collapse">
          <div data-scrollable="" style="overflow-y: hidden; outline: none; cursor: -webkit-grab;">
            <ul class="sidebar-menu">
              <li>
                <a href="http://themekit.frontendmatter.com/index.html">
                  <i class="icon-paint-brush"></i>
                  <span>Themes</span>
                </a>
              </li>
              <li class="category">Navigation</li>
              <li class="hasSubmenu open">
                <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#timeline" data-toggle="collapse" aria-expanded="true">
                  <i class="icon-ship-wheel"></i>
                  <span>Timeline</span>
                </a>
                <ul class="in collapse" id="timeline" aria-expanded="true">
                  <li class="active">
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html">
                      <i class="fa fa-circle-o"></i>
                      <span>Blocks</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/timeline-list.html">
                      <i class="fa fa-circle-o"></i>
                      <span>Listing</span>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="">
                <a href="http://themekit.frontendmatter.com/dist/themes/social-1/profile.html">
                  <i class="icon-user-1"></i>
                  <span>Profile</span>
                </a>
              </li>
              <li class="">
                <a href="http://themekit.frontendmatter.com/dist/themes/social-1/users.html">
                  <i class="fa fa-group"></i>
                  <span>Users</span>
                </a>
              </li>
              <li class="">
                <a href="http://themekit.frontendmatter.com/dist/themes/social-1/messages.html">
                  <i class="icon-comment-fill-1"></i>
                  <span>Messages</span>
                </a>
              </li>
              <li>
                <a href="http://themekit.frontendmatter.com/dist/themes/social-1/login.html">
                  <i class="icon-lock-fill"></i>
                  <span>Login</span>
                </a>
              </li>
              <li class="hasSubmenu">
                <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#components" data-toggle="collapse" class="collapsed"
                  aria-expanded="false">
                  <i class="icon-paint-brushes"></i>
                  <span>UI Components</span>
                </a>
                <ul id="components" class="collapse" aria-expanded="false">
                  <li>
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-buttons.html">
                      <i class="fa fa-circle-o"></i>
                      <span>Buttons</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-icons.html">
                      <i class="fa fa-circle-o"></i>
                      <span>Icons</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-progress.html">
                      <i class="fa fa-circle-o"></i>
                      <span>Progress</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-grid.html">
                      <i class="fa fa-circle-o"></i>
                      <span>Grid</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-forms.html">
                      <i class="fa fa-circle-o"></i>
                      <span>Forms</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-tables.html">
                      <i class="fa fa-circle-o"></i>
                      <span>Tables</span>
                    </a>
                  </li>
                  <li>
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-tabs.html">
                      <i class="fa fa-circle-o"></i>
                      <span>Tabs</span>
                    </a>
                  </li>
                </ul>
              </li>
              <li class="hasSubmenu">
                <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#submenu" data-toggle="collapse" class="collapsed"
                  aria-expanded="false">
                  <i class="fa fa-chevron-circle-down"></i>
                  <span>Collapse</span>
                </a>
                <ul id="submenu" class="collapse" aria-expanded="false">
                  <li class="hasSubmenu">
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#submenu-1" data-toggle="collapse" class="collapsed"
                      aria-expanded="false">
                      <i class="fa fa-circle-o"></i> Submenu</a>
                    <ul id="submenu-1" class="collapse" aria-expanded="false">
                      <li>
                        <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#">Regular Link</a>
                      </li>
                    </ul>
                  </li>
                  <li>
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#">
                      <i class="fa fa-circle-o"></i> Regular Link</a>
                  </li>
                </ul>
              </li>
            </ul>
            <h4 class="category border top">News Feeds</h4>
            <div class="sidebar-block">
              <ul class="sidebar-feed">
                <li class="media">
                  <div class="media-left">
                    <span class="media-object">
                      <i class="fa fa-fw fa-bell"></i>
                    </span>
                  </div>
                  <div class="media-body">
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">Adrian</a> just logged in
                    <span class="time">2 min ago</span>
                  </div>
                  <div class="media-right">
                    <span class="news-item-success">
                      <i class="fa fa-circle"></i>
                    </span>
                  </div>
                </li>
                <li class="media">
    
                  <div class="media-left">
                    <span class="media-object">
                      <i class="fa fa-fw fa-bell"></i>
                    </span>
                  </div>
                  <div class="media-body">
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">Adrian</a> just added
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">mosaicpro</a> as their office
                    <span class="time">2 min ago</span>
                  </div>
                  <div class="media-right">
                    <span class="news-item-success">
                      <i class="fa fa-circle"></i>
                    </span>
                  </div>
                </li>
                <li class="media">
                  <div class="media-left">
                    <span class="media-object">
                      <i class="fa fa-fw fa-bell"></i>
                    </span>
                  </div>
                  <div class="media-body">
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">Adrian</a> just logged in
                    <span class="time">2 min ago</span>
                  </div>
                </li>
                <li class="media">
                  <div class="media-left">
                    <span class="media-object">
                      <i class="fa fa-fw fa-bell"></i>
                    </span>
                  </div>
                  <div class="media-body">
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">Adrian</a> just logged in
                    <span class="time">2 min ago</span>
                  </div>
                </li>
                <li class="media">
                  <div class="media-left">
                    <span class="media-object">
                      <i class="fa fa-fw fa-bell"></i>
                    </span>
                  </div>
                  <div class="media-body">
                    <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">Adrian</a> just logged in
                    <span class="time">2 min ago</span>
                  </div>
                </li>
              </ul>
            </div>
            <h4 class="category">Filter</h4>
            <div class="sidebar-block">
              <ul>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#" class="sidebar-link">
                    <span class="fa fa-fw fa-circle-o text-success"></span> Work Related</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#" class="sidebar-link">
                    <span class="fa fa-fw fa-circle-o text-danger"></span> Very Important</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#" class="sidebar-link">
                    <span class="fa fa-fw fa-circle-o text-info"></span> Friends &amp; Family</a>
                </li>
                <li>
                  <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#" class="sidebar-link">
                    <span class="fa fa-fw fa-circle-o text-primary"></span> Other</a>
                </li>
              </ul>
            </div>
          </div>
          <div id="ascrail2000" class="nicescroll-rails" style="width: 5px; z-index: 2; cursor: -webkit-grab; position: absolute; top: 0px; left: 194px; height: 497px; opacity: 0; display: block;">
            <div style="position: relative; top: 0px; float: right; width: 5px; height: 285px; background-color: rgb(22, 174, 159); border: 0px; background-clip: padding-box; border-radius: 5px;"></div>
          </div>
    </div>
    <div class="navbar navbar-main navbar-primary navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">

          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <div class="botonFiltros" onclick="openNav()">&#9776; </div>
          <a href="http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html#sidebar-chat" data-toggle="sidebar-menu"
            class="toggle pull-right visible-xs">
            <i class="fa fa-comments"></i>
          </a>
          <a class="navbar-brand" href="http://themekit.frontendmatter.com/dist/themes/social-3/index.html">StreetArt</a>
        </div>
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
                <img src="Profile_files/guy-5.jpg" alt="Bill" class="img-circle" width="40"> Bill
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
      </div>
    </div>
    <div class="st-pusher" id="content">
      <div class="st-content">
        <div class="st-content-inner">
          <div class="container">
            <div id="mySidenav" class="sidenav">
              <div class="st-container">
                  <div class="sidebar left sidebar-size-2 sidebar-offset-0 sidebar-visible-desktop sidebar-visible-mobile sidebar-skin-dark"
                  id="sidebar-menu" data-type="collapse">
                  <div data-scrollable="" style="overflow-y: hidden; outline: none; cursor: -webkit-grab;">
                    <ul class="sidebar-menu">
                      <li>
                        <a href="http://themekit.frontendmatter.com/index.html">
                          <i class="icon-paint-brush"></i>
                          <span>Themes</span>
                        </a>
                      </li>
                      <li class="category">Navigation</li>
                      <li class="hasSubmenu open">
                        <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#timeline" data-toggle="collapse" aria-expanded="true">
                          <i class="icon-ship-wheel"></i>
                          <span>Timeline</span>
                        </a>
                        <ul class="in collapse" id="timeline" aria-expanded="true">
                          <li class="active">
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html">
                              <i class="fa fa-circle-o"></i>
                              <span>Blocks</span>
                            </a>
                          </li>
                          <li>
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/timeline-list.html">
                              <i class="fa fa-circle-o"></i>
                              <span>Listing</span>
                            </a>
                          </li>
                        </ul>
                      </li>
                      <li class="">
                        <a href="http://themekit.frontendmatter.com/dist/themes/social-1/profile.html">
                          <i class="icon-user-1"></i>
                          <span>Profile</span>
                        </a>
                      </li>
                      <li class="">
                        <a href="http://themekit.frontendmatter.com/dist/themes/social-1/users.html">
                          <i class="fa fa-group"></i>
                          <span>Users</span>
                        </a>
                      </li>
                      <li class="">
                        <a href="http://themekit.frontendmatter.com/dist/themes/social-1/messages.html">
                          <i class="icon-comment-fill-1"></i>
                          <span>Messages</span>
                        </a>
                      </li>
                      <li>
                        <a href="http://themekit.frontendmatter.com/dist/themes/social-1/login.html">
                          <i class="icon-lock-fill"></i>
                          <span>Login</span>
                        </a>
                      </li>
                      <li class="hasSubmenu">
                        <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#components" data-toggle="collapse" class="collapsed"
                          aria-expanded="false">
                          <i class="icon-paint-brushes"></i>
                          <span>UI Components</span>
                        </a>
                        <ul id="components" class="collapse" aria-expanded="false">
                          <li>
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-buttons.html">
                              <i class="fa fa-circle-o"></i>
                              <span>Buttons</span>
                            </a>
                          </li>
                          <li>
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-icons.html">
                              <i class="fa fa-circle-o"></i>
                              <span>Icons</span>
                            </a>
                          </li>
                          <li>
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-progress.html">
                              <i class="fa fa-circle-o"></i>
                              <span>Progress</span>
                            </a>
                          </li>
                          <li>
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-grid.html">
                              <i class="fa fa-circle-o"></i>
                              <span>Grid</span>
                            </a>
                          </li>
                          <li>
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-forms.html">
                              <i class="fa fa-circle-o"></i>
                              <span>Forms</span>
                            </a>
                          </li>
                          <li>
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-tables.html">
                              <i class="fa fa-circle-o"></i>
                              <span>Tables</span>
                            </a>
                          </li>
                          <li>
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/essential-tabs.html">
                              <i class="fa fa-circle-o"></i>
                              <span>Tabs</span>
                            </a>
                          </li>
                        </ul>
                      </li>
                      <li class="hasSubmenu">
                        <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#submenu" data-toggle="collapse" class="collapsed"
                          aria-expanded="false">
                          <i class="fa fa-chevron-circle-down"></i>
                          <span>Collapse</span>
                        </a>
                        <ul id="submenu" class="collapse" aria-expanded="false">
                          <li class="hasSubmenu">
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#submenu-1" data-toggle="collapse" class="collapsed"
                              aria-expanded="false">
                              <i class="fa fa-circle-o"></i> Submenu</a>
                            <ul id="submenu-1" class="collapse" aria-expanded="false">
                              <li>
                                <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#">Regular Link</a>
                              </li>
                            </ul>
                          </li>
                          <li>
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#">
                              <i class="fa fa-circle-o"></i> Regular Link</a>
                          </li>
                        </ul>
                      </li>
                    </ul>
                    <h4 class="category border top">News Feeds</h4>
                    <div class="sidebar-block">
                      <ul class="sidebar-feed">
                        <li class="media">
                          <div class="media-left">
                            <span class="media-object">
                              <i class="fa fa-fw fa-bell"></i>
                            </span>
                          </div>
                          <div class="media-body">
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">Adrian</a> just logged in
                            <span class="time">2 min ago</span>
                          </div>
                          <div class="media-right">
                            <span class="news-item-success">
                              <i class="fa fa-circle"></i>
                            </span>
                          </div>
                        </li>
                        <li class="media">
  
                          <div class="media-left">
                            <span class="media-object">
                              <i class="fa fa-fw fa-bell"></i>
                            </span>
                          </div>
                          <div class="media-body">
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">Adrian</a> just added
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">mosaicpro</a> as their office
                            <span class="time">2 min ago</span>
                          </div>
                          <div class="media-right">
                            <span class="news-item-success">
                              <i class="fa fa-circle"></i>
                            </span>
                          </div>
                        </li>
                        <li class="media">
                          <div class="media-left">
                            <span class="media-object">
                              <i class="fa fa-fw fa-bell"></i>
                            </span>
                          </div>
                          <div class="media-body">
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">Adrian</a> just logged in
                            <span class="time">2 min ago</span>
                          </div>
                        </li>
                        <li class="media">
                          <div class="media-left">
                            <span class="media-object">
                              <i class="fa fa-fw fa-bell"></i>
                            </span>
                          </div>
                          <div class="media-body">
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">Adrian</a> just logged in
                            <span class="time">2 min ago</span>
                          </div>
                        </li>
                        <li class="media">
                          <div class="media-left">
                            <span class="media-object">
                              <i class="fa fa-fw fa-bell"></i>
                            </span>
                          </div>
                          <div class="media-body">
                            <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html" class="text-white">Adrian</a> just logged in
                            <span class="time">2 min ago</span>
                          </div>
                        </li>
                      </ul>
                    </div>
                    <h4 class="category">Filter</h4>
                    <div class="sidebar-block">
                      <ul>
                        <li>
                          <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#" class="sidebar-link">
                            <span class="fa fa-fw fa-circle-o text-success"></span> Work Related</a>
                        </li>
                        <li>
                          <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#" class="sidebar-link">
                            <span class="fa fa-fw fa-circle-o text-danger"></span> Very Important</a>
                        </li>
                        <li>
                          <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#" class="sidebar-link">
                            <span class="fa fa-fw fa-circle-o text-info"></span> Friends &amp; Family</a>
                        </li>
                        <li>
                          <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#" class="sidebar-link">
                            <span class="fa fa-fw fa-circle-o text-primary"></span> Other</a>
                        </li>
                      </ul>
                    </div>
                  </div>
                  <div id="ascrail2000" class="nicescroll-rails" style="width: 5px; z-index: 2; cursor: -webkit-grab; position: absolute; top: 0px; left: 194px; height: 497px; opacity: 0; display: block;">
                    <div style="position: relative; top: 0px; float: right; width: 5px; height: 285px; background-color: rgb(22, 174, 159); border: 0px; background-clip: padding-box; border-radius: 5px;"></div>
                  </div>
                </div>
                <div id="ascrail2000" class="nicescroll-rails" style="width: 5px; z-index: 2; cursor: -webkit-grab; position: absolute; top: 0px; left: 194px; height: 497px; opacity: 0; display: block;">
                  <div style="position: relative; top: 0px; float: right; width: 5px; height: 285px; background-color: rgb(22, 174, 159); border: 0px; background-clip: padding-box; border-radius: 5px;"></div>
                </div>
              </div>     
              <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
 </div>
            <div class="timeline row" data-toggle="isotope" style="position: relative; height: 1967.74px;">
                <%
		for (home g : tops) {
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
			<h5 class="text-portfolio-img" style="font-style:italic" >Le ha gustado a <b><span class="numlikes"><%=g.getLikes()%></span></b> personas</h5>
			<h4 class="text-portfolio-img">Autor: <a href="perfil?id_autor=<%=g.getIdUsuario()%>&id_usu=<%=id_u%>" style="color:black;font-style:italic"><%=g.getNomUsuario()%></a></h4>
			<h4 class="text-portfolio-img">Ubicación: <a href="#" style="color:black;font-style:italic">Barcelona</a></h4>
		</div></div>
	</div>
	<%
		}
	%><br> <a href="anuncios.jsp">anuncios</a><br> <a
		href="pasaId?id_usu=<%=id_u%>&id_usua=<%=id_u%>">historial de
		mensajes</a><br> <a href="addImage?id_usu=<%=id_u%>">Añadir
		imagenes</a><br> <a href="registro.jsp">Registrarse</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    <footer class="footer">
      <strong>ThemeKit</strong> v4.0.0 © Copyright 2018
    </footer>
  <script src="Profile_files/app.js.descarga"></script>
  <script type="text/javascript" src="Profile_files/js"></script>
  <div style="position: absolute; left: 0px; top: -2px; height: 1px; overflow: hidden; visibility: hidden; width: 1px;">
  <span style="position: absolute; font-size: 300px; width: auto; height: auto; margin: 0px; padding: 0px; font-family: Roboto, Arial, sans-serif;">BESbswy</span>
  </div>
  <%@ include file="parts/footerAjax.jsp"%>
</body>
</html>