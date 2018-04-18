package modelos;

public class Comentario {
	
	private int idOrigen;
	private int idComentario;
	private int idEmisor;
	private int idReceptor;
	private String usuario;
	private String Comentario;
	
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
	
	public Comentario(int idOrigen, int idComentario, String usuario, String comentario) {
		this.idOrigen = idOrigen;
		this.idComentario = idComentario;
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
	public void setIdOrigen(int idOrigen) {
		this.idOrigen = idOrigen;
	}
	public int getIdComentario() {
		return idComentario;
	}
	public void setIdComentario(int idComentario) {
		this.idComentario = idComentario;
	}
	public int getIdEmisor() {
		return idEmisor;
	}
	public void setIdEmisor(int idEmisor) {
		this.idEmisor = idEmisor;
	}
	public int getIdReceptor() {
		return idReceptor;
	}
	public void setIdReceptor(int idReceptor) {
		this.idReceptor = idReceptor;
	}
	public String getUsuario() {
		return usuario;
	}
	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}
	public String getComentario() {
		return Comentario;
	}
	public void setComentario(String comentario) {
		Comentario = comentario;
	}
	
	
	
	
	
	

	
	
	


	
	
}
