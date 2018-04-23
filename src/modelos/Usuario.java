package modelos;

public class Usuario {
	private int idUsuario;
	private String email;
	private String movil;
	private String url;
	private String descripcion;
	private int likes;
	private String usuario;
	private String estilo;
	private String fecha;
	private int idimg;

	public Usuario(int id_usu, String usuario, String email, String movil, String url_perfil) {
		this.idUsuario = id_usu;
		this.usuario = usuario;
		this.email = email;
		this.movil = movil;
		this.url = url_perfil;
	}
	public Usuario(int id_img, String url, String descripcion, String estilo, String fecha, int likes) {
		this.idimg=id_img;
		this.url = url;
		this.descripcion = descripcion;
		this.likes = likes;
		this.estilo = estilo;
		this.fecha = fecha;
	}

	public String getUrl() {
		return url;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public int getLikes() {
		return likes;
	}
	public String getUsuario() {
		return usuario;
	}
	public String getEstilo() {
		return estilo;
	}
	public String getFecha() {
		return fecha;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	public String getEmail() {
		return email;
	}
	public String getMovil() {
		return movil;
	}
	public int getIdimg() {
		return idimg;
	}
}