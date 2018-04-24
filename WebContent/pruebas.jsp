<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%><%@ page import="controladores.*"%>

<%
	String busqueda = (String) session.getAttribute("Buscar");
	List<Search> profile = SearchController.getSearch(busqueda);
%>
<%@ include file="parts/barraMenu.jsp"%>
<%
	
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Resultados</title>
</head>
<body>
	<div class="row">
		<h1>Resultados:</h1>
		<%
			for (Search user : profile) {
		%><div style="display: inline-block;" col-lg-3 col-md-4 col-sm-6
			col-xs-12 col-12text-centerfoto_home">
			<a href="buscaImagen?id_img=<%=user.getImagenes()%>"><img
				src="img/<%=user.getImagenes()%>" width="200" height="150"> </a><br>
			<br> <label><%=user.getUsuario()%> </label><br> <label>
				<%=user.getEstilo()%></label><br> <label><%=user.getDescripcion()%></label><br>
		</div>
		<%
			}
		%>
</body>
</html>

------------------------------------

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%><%@ page import="controladores.*"%>

<%
	String busqueda = (String) session.getAttribute("Buscar");
	List<Search> profile = SearchController.getSearch(busqueda);
%>
<!DOCTYPE html>
<!-- saved from url=(0082)http://themekit.frontendmatter.com/dist/themes/social-3/user-public-timeline.html# -->
<html class="st-layout ls-top-navbar ls-bottom-footer hide-sidebar sidebar-r2" lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <style type="text/css">
    .gm-err-container {
      height: 100%;
      width: 100%;
      display: table;
      background-color: #e0e0e0;
      position: relative;
      left: 0;
      top: 0
    }

    .gm-err-content {
      border-radius: 1px;
      padding-top: 0;
      padding-left: 10%;
      padding-right: 10%;
      position: static;
      vertical-align: middle;
      display: table-cell
    }

    .gm-err-content a {
      color: #4285f4
    }

    .gm-err-icon {
      text-align: center
    }

    .gm-err-title {
      margin: 5px;
      margin-bottom: 20px;
      color: #616161;
      font-family: Roboto, Arial, sans-serif;
      text-align: center;
      font-size: 24px
    }

    .gm-err-message {
      margin: 5px;
      color: #757575;
      font-family: Roboto, Arial, sans-serif;
      text-align: center;
      font-size: 12px
    }

    .gm-err-autocomplete {
      padding-left: 20px;
      background-repeat: no-repeat;
      background-size: 15px 15px
    }
  </style>
  <style type="text/css">
    .gm-style-pbc {
      transition: opacity ease-in-out;
      background-color: rgba(0, 0, 0, 0.45);
      text-align: center
    }

    .gm-style-pbt {
      font-size: 22px;
      color: white;
      font-family: Roboto, Arial, sans-serif;
      position: relative;
      margin: 0;
      top: 50%;
      -webkit-transform: translateY(-50%);
      -ms-transform: translateY(-50%);
      transform: translateY(-50%)
    }
  </style>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="./Profile_files/rangeMultiHandler.js"></script>
  <link href="./Profile_files/estilo.css" rel="stylesheet">
  <script src="./Profile_files/markerclusterer.min.js.descarga"></script>
  <script src="./Profile_files/infobox_packed.js.descarga"></script>
  <script src="./Profile_files/jquery.ui.map.rdfa.js.descarga"></script>
  <script src="./Profile_files/jquery.ui.map.overlays.js.descarga"></script>
  <script src="./Profile_files/jquery.ui.map.microformat.js.descarga"></script>
  <script src="./Profile_files/jquery.ui.map.microdata.js.descarga"></script>
  <script src="./Profile_files/jquery.ui.map.services.js.descarga"></script>
  <script src="./Profile_files/jquery.ui.map.extensions.js.descarga"></script>
  <script src="./Profile_files/jquery.ui.map.js.descarga"></script>

  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>ThemeKit</title>

  <!-- Vendor CSS BUNDLE
    Includes styling for all of the 3rd party libraries used with this module, such as Bootstrap, Font Awesome and others.
    TIP: Using bundles will improve performance by reducing the number of network requests the client needs to make when loading the page. -->
  <link href="./Profile_files/all.css" rel="stylesheet">


  <link href="./Profile_files/app.css" rel="stylesheet">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg"
    crossorigin="anonymous">




  <style type="text/css">
    .jqstooltip {
      position: absolute;
      left: 0px;
      top: 0px;
      visibility: hidden;
      background: rgb(0, 0, 0) transparent;
      background-color: rgba(0, 0, 0, 0.6);
      filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000);
      -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#99000000, endColorstr=#99000000)";
      color: white;
      font: 10px arial, san serif;
      text-align: left;
      white-space: nowrap;
      padding: 5px;
      border: 1px solid white;
      z-index: 10000;
    }

    .jqsfield {
      color: white;
      font: 10px arial, san serif;
      text-align: left;
    }
  </style>
  <script type="text/javascript" charset="UTF-8" src="./Profile_files/common.js.descarga"></script>
  <script type="text/javascript" charset="UTF-8" src="./Profile_files/util.js.descarga"></script>
  <script type="text/javascript" charset="UTF-8" src="./Profile_files/map.js.descarga"></script>
  <script type="text/javascript" charset="UTF-8" src="./Profile_files/stats.js.descarga"></script>
  <style type="text/css">
    .gm-style {
      font: 400 11px Roboto, Arial, sans-serif;
      text-decoration: none;
    }

    .gm-style img {
      max-width: none;
    }
  </style>
  <script type="text/javascript" charset="UTF-8" src="./Profile_files/onion.js.descarga"></script>
  <script type="text/javascript" charset="UTF-8" src="./Profile_files/controls.js.descarga"></script>

</head>

<body class="breakpoint-1024">

  <!-- Wrapper required for sidebar transitions -->
  <div class="st-container">

    <div class="navbar navbar-main navbar-default navbar-fixed-top" role="navigation">
      <div class="container-fluid">
        <div class="navbar-header">
          <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#sidebar-menu" data-effect="st-effect-1" data-toggle="sidebar-menu"
            class="toggle pull-left visible-xs">
            <i class="fa fa-bars"></i>
          </a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#main-nav">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html#sidebar-chat" data-toggle="sidebar-menu" data-effect="st-effect-1"
            class="toggle pull-right visible-xs ">
            <i class="fa fa-comments"></i>
          </a>
          <a class="navbar-brand navbar-brand-primary hidden-xs" href="http://themekit.frontendmatter.com/dist/themes/social-1/index.html">ThemeKit</a>
        </div>

      </div>
    </div>


    <!-- Fixed navbar -->
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

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="main-nav">
          <form class="navbar-form margin-none navbar-left hidden-xs ">
            <!-- Search -->
            <div class="search-1">
              <div class="input-group">
                <span class="input-group-addon">
                  <i class="fa fa-search fa-sm"></i>
                </span>
                <input type="text" class="form-control " placeholder="Tag">
              </div>
            </div>
            <div class="search-1">
              <div class="input-group">
                <input type="text" class="form-control" placeholder="Lugar">
              </div>
            </div>

          </form>
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

    <!-- content push wrapper -->
    <div class="st-pusher" id="content">

      <!-- sidebar effects INSIDE of st-pusher: -->
      <!-- st-effect-3, st-effect-6, st-effect-7, st-effect-8, st-effect-14 -->

      <!-- this is the wrapper for the content -->
      <div class="st-content">

        <!-- extra div for emulating position:fixed of the menu -->
        <div class="st-content-inner">

          <div class="container">

            <div id="mySidenav" class="sidenav">

              <div class="st-container">
                <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">
                  <i class="fas fa-arrow-left fletxa"></i>
                </a>
                <div class="contenidor-text-filtres" data-scrollable="" style="overflow-y: hidden; outline: none;" tabindex="0">
                  <ul class="sidebar-menu">

                    <li>
                      <a class="text-titulo-filtro">
                        <i class="fas fa-search fletxa"></i>
                        <span>FILTER RESULTS</span>
                      </a>
                    </li>
                    <li class="text-filtre-no-select">
                      <div class="text-center-no-select">Que Buscas?
                        <div>
                    </li>

                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Graffiti</button>
                    </div>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Muro</button>
                    </div>
                    <li class="text-filtre-no-select">
                      <div class="text-center-no-select">Ciudades
                        <div>
                    </li>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Barcelona</button>
                    </div>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Gerona</button>
                    </div>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Tarragona</button>
                    </div>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Lerida</button>
                    </div>
                    <li class="text-filtre-no-select">
                      <div class="text-center-no-select">Estilos
                        <div>
                    </li>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Tag</button>
                    </div>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Bubble</button>
                    </div>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Throw-up</button>
                    </div>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Wild-style</button>
                    </div>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Abstracto</button>
                    </div>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Geometrico</button>
                    </div>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Minimalista</button>
                    </div>
                    <li class="text-filtre-no-select">
                      <div class="text-center-no-select">Tarifa

                        <div>
                    </li>
                    <li class="contenedor-tarifa">
                      <div class="row">
                        <div class="col-sm-12">
                          <div id="slider-range"></div>
                        </div>
                      </div>
                      <div class="row slider-labels">
                        <div class="col-xs-6 caption">
                          <strong>Min:</strong>
                          <span id="slider-range-value1"></span>
                        </div>
                        <div class="col-xs-6 text-right caption">
                          <strong>Max:</strong>
                          <span id="slider-range-value2"></span>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-sm-12">
                          <form>
                            <input type="hidden" name="min-value" value="">
                            <input type="hidden" name="max-value" value="">
                          </form>
                        </div>
                      </div>

                    </li>
                    <div class="btn-group btn-large btn-block ">
                      <button class="btn btn-primary btn-block boto-tipus">Filtrar</button>
                    </div>

                  </ul>

                  </div>
                  </div>

                  </div>

                  <script>
                    function openNav() {
                      document.getElementById("mySidenav").style.width = "250px";
                    }

                    function closeNav() {
                      document.getElementById("mySidenav").style.width = "0";
                    }
                  </script>
                  
                  <div class="timeline row" data-toggle="isotope">
                    
                    <%
			for (Search user : profile) {
		%>
                    <div class="col-xs-12 col-md-6 col-lg-4 item">

                      <div class="timeline-block">

                        <div class="panel panel-default relative">
                          <div class="panel-body panel-boxed text-center">
                            <a href="buscaImagen?id_img=<%=user.getImagenes()%>"></a><img src="img/<%=user.getImagenes()%>" alt="place" class="img-responsive">
                            <i class="far fa-heart cor "></i>
                            <h4 class="text-muro-lugar pull-right">23 de abril, Barcelona</h4>
                            <h4 class="text-imagen-usuario pull-left"><%=user.getUsuario()%></h4>
                            <label>Descripción:<%=user.getDescripcion()%></label>
                          </div>
                          <%
		                      	}
	                      	%>
                        </div>

                      </div>
                    </div>
                   
                    <div class="col-12 col-md-12 col-lg-12 item">
                      
                  </div>

                  </div>

                  </div>

                  </div>

                  <!-- /st-content-inner -->

                  </div>
                  <!-- /st-content -->

                  </div>
                  <!-- /st-pusher -->

                  <!-- Footer -->


                  <!-- // Footer -->

                  </div>
                  
                  <!-- /st-container -->

                  <!-- Inline Script for colors and config objects; used by various external scripts; -->
                  <script>
                    var colors = {
                      "danger-color": "#e74c3c",
                      "success-color": "#81b53e",
                      "warning-color": "#f0ad4e",
                      "inverse-color": "#2c3e50",
                      "info-color": "#2d7cb5",
                      "default-color": "#6e7882",
                      "default-light-color": "#cfd9db",
                      "purple-color": "#9D8AC7",
                      "mustard-color": "#d4d171",
                      "lightred-color": "#e15258",
                      "body-bg": "#f6f6f6"
                    };
                    var config = {
                      theme: "social-3",
                      skins: {
                        "default": {
                          "primary-color": "#16ae9f"
                        },
                        "orange": {
                          "primary-color": "#e74c3c"
                        },
                        "blue": {
                          "primary-color": "#4687ce"
                        },
                        "purple": {
                          "primary-color": "#af86b9"
                        },
                        "brown": {
                          "primary-color": "#c3a961"
                        },
                        "default-nav-inverse": {
                          "color-block": "#242424"
                        }
                      }
                    };
                  </script>

                  <!-- Vendor Scripts Bundle
    Includes all of the 3rd party JavaScript libraries above.
    The bundle was generated using modern frontend development tools that are provided with the package
    To learn more about the development process, please refer to the documentation.
    Do not use it simultaneously with the separate bundles above. -->
                  <script src="./Profile_files/all.js.descarga"></script>
                  <script src="./Profile_files/app.js.descarga"></script>
                  <script type="text/javascript" src="./Profile_files/js"></script>
                  <div style="position: absolute; left: 0px; top: -2px; height: 1px; overflow: hidden; visibility: hidden; width: 1px;">
                    <span style="position: absolute; font-size: 300px; width: auto; height: auto; margin: 0px; padding: 0px; font-family: Roboto, Arial, sans-serif;">BESbswy</span>
                  </div>
                  <footer class="footer-contenedor-gran">

                      <div style="background-color: #26a69a;">
                        <div class="container">
                          <!--Grid row-->
                          <div class="rowd py-4 d-flex align-items-center">

                            <!--Grid column-->
                            <div class="col-md-6 col-lg-5 text-center text-md-left mb-4 mb-md-0">
                              <h6 class="mb-0 marca-footer text-left">
                                <strong>StreetArt</strong>
                              </h6>
                            </div>
                            <!--Grid column-->

                            <!--Grid column-->
                            <div class="col-md-6 col-lg-7 text-center text-md-right">
                              <!--Facebook-->

                              <i class="fab fa-facebook-f  mr-lg-4 logo-blanc-footer"> </i>

                              <!--Twitter-->

                              <i class="fab fa-twitter  mr-lg-4 logo-blanc-footer"> </i>

                              <!--Google +-->

                              <i class="fab fa-google-plus-g  mr-lg-4 logo-blanc-footer"> </i>

                              <!--Linkedin-->

                              <i class="fab fa-linkedin-in mr-lg-4 logo-blanc-footer"> </i>

                              <!--Instagram-->

                              <i class="fab fa-instagram  mr-lg-4 logo-blanc-footer"> </i>

                            </div>
                            <!--Grid column-->

                          </div>
                          <!--Grid row-->
                        </div>
                      </div>

                      <!--Footer Links-->
                      <div class=" text-center text-md-left footer-contenedor">
                        <div class="row mt-3">



                          <div class="col-md-6 col-lg-4 col-xl-4 mx-auto mb-4">
                            <h6 class="text-uppercase  secciones-footer">
                              <strong>StreetArt</strong>
                            </h6>
                            <hr class="linia-secciones-footer">
                            <p>
                              <a class="text-secciones-filtro" href="#!">Quienes somos?</a>
                            </p>
                            <p>
                              <a class="text-secciones-filtro" href="#!">Equipo</a>
                            </p>
                          </div>



                          <div class="col-md-6 col-lg-4 col-xl-4 mx-auto mb-4">
                            <h6 class="text-uppercase secciones-footer">
                              <strong>Soporte</strong>
                            </h6>
                            <hr class="linia-secciones-footer">
                            <p>
                              <a class="text-secciones-filtro" href="#!">Preguntas Frequentas</a>
                            </p>
                            <p>
                              <a class="text-secciones-filtro" href="#!">Reglas de convivencia</a>
                            </p>
                            <p>
                              <a class="text-secciones-filtro" href="#!">Consejos de seguridad</a>
                            </p>
                          </div>
                          <!--/.Third column-->

                          <!--Fourth column-->
                          <div class="col-md-6 col-lg-4 col-xl-4">
                            <h6 class="text-uppercase secciones-footer">
                              <strong>Contact</strong>
                            </h6>
                            <hr class="linia-secciones-footer">
                            <p>
                              <a class="text-secciones-filtro" href="#!">Preguntas Frequentas</a>
                            </p>
                            <p>
                              <a class="text-secciones-filtro" href="#!">Reglas de convivencia</a>
                            </p>
                            <p>
                              <a class="text-secciones-filtro" href="#!">Consejos de seguridad</a>
                            </p>
                            <!--/.Fourth column-->

                          </div>
                        </div>
                        <!--/.Footer Links-->

                        <!-- Copyright-->
                        <div class="footer-copyright py-3 text-center contenidor-copyright">
                          <a>© 2018 Copyright</a>
                        </div>
                        <!--/.Copyright -->

                      </div>
                </footer>
</body>

</html>