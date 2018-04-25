package modelos;

public class Comentario {
	
	private int idOrigen;
	private int idComentario;
	private int idEmisor;
	private int idReceptor;
	private String usuario;
	private String Comentario;
	private String fecha;
	
	public Comentario(int idOrigen,int idComentario, int idEmisor, int idReceptor, String usuario, String comentario) {
		super();
		this.idOrigen = idOrigen;    //constructor comentario cuando el user esta loggeado
		this.idComentario = idComentario;
		this.idEmisor = idEmisor;
		this.idReceptor = idReceptor;
		this.usuario = usuario;
		this.Comentario = comentario;
	}
	public Comentario(int idImagen, int idComentario, int idReceptor, String usuario, String comentario) {
		this.idOrigen = idOrigen;     //constructor comentario cuando el user no esta logueado
		this.idComentario = idComentario;
		this.idEmisor = 0;   
		this.idReceptor = idReceptor;
		this.usuario = usuario;
		this.Comentario = comentario;
	}
	
	public Comentario(int idOrigen, String fecha, String usuario, String comentario) {
		this.idOrigen = idOrigen;
		this.fecha = fecha;
		this.usuario = usuario;
		this.Comentario = comentario;
		
	}
	public Comentario(int idOrigen, String usuario, String comentario) {
		this.idOrigen = idOrigen;
		this.usuario = usuario;
		this.Comentario = comentario;
		
	}
	public int getIdOrigen() {
		return idOrigen;
	}
	public int getIdComentario() {
		return idComentario;
	}
	public int getIdEmisor() {
		return idEmisor;
	}

	public int getIdReceptor() {
		return idReceptor;
	}
	public String getUsuario() {
		return usuario;
	}
	public String getComentario() {
		return Comentario;
	}
	public String getFecha() {
		return fecha;
	}
	
	
	
	
	
	

	
	
	


	
	
}
