$(document).ready(function() {
		$(document).on(	"click",".botonlike",function(e) {
				var idimagen = $(this).data("idimagen");
				var idu = $(this).data("idu");
				var botonClicado = $(this);

				$(this).toggleClass("corazonLleno");
				$(this).toggleClass("fondo");

				$.get({
					url : "likes",
					dataType : "json",
					data : {
					imglike : idimagen,
					usid : idu
						}, success : function(data) {//callback
							if (data.result == "ok") {
								console.log("nuevos likes: ",data.likes);
								botonClicado.closest("div.elementoHome").find("span.numlikes").text(data.likes);
							} else {
								console.log("se ha producido un error");
							}
				}
	});
});
});





function openNav() {
    document.getElementById("mySidenav").style.width = "250px";
  }

  function closeNav() {
    document.getElementById("mySidenav").style.width = "0";
  }


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