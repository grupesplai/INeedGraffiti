<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="modelos.*"%>
<%@ page import="controladores.*"%>
<%@ page import="servlets.*"%>
<%@ page import="java.util.List"%>

<!DOCTYPE html>
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
  <script src="Profile_files/markerclusterer.min.js.descarga"></script>
  <script src="Profile_files/infobox_packed.js.descarga"></script>
  <script src="Profile_files/jquery.ui.map.rdfa.js.descarga"></script>
  <script src="Profile_files/jquery.ui.map.overlays.js.descarga"></script>
  <script src="Profile_files/jquery.ui.map.microformat.js.descarga"></script>
  <script src="Profile_files/jquery.ui.map.microdata.js.descarga"></script>
  <script src="Profile_files/jquery.ui.map.services.js.descarga"></script>
  <script src="Profile_files/jquery.ui.map.extensions.js.descarga"></script>
  <script src="Profile_files/jquery.ui.map.js.descarga"></script>
  
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
  

  <title>ThemeKit</title>
  <link href="Profile_files/all.css" rel="stylesheet">
  <link href="Profile_files/app.css" rel="stylesheet">


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
  <script type="text/javascript" charset="UTF-8" src="Profile_files/common.js.descarga"></script>
  <script type="text/javascript" charset="UTF-8" src="Profile_files/util.js.descarga"></script>
  <script type="text/javascript" charset="UTF-8" src="Profile_files/map.js.descarga"></script>
  <script type="text/javascript" charset="UTF-8" src="Profile_files/stats.js.descarga"></script>
  <style type="text/css">
    .gm-style {
      font: 400 11px Roboto, Arial, sans-serif;
      text-decoration: none;
    }

    .gm-style img {
      max-width: none;
    }
  </style>
  <script type="text/javascript" charset="UTF-8" src="Profile_files/onion.js.descarga"></script>
  <script type="text/javascript" charset="UTF-8" src="Profile_files/controls.js.descarga"></script>
</head>