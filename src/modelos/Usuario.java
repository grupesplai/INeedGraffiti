package modelos;

public class Usuario {
	private int idUsuario;
	private String email;
	private String movil;
	private String url;
	private String descripcion;
	private String likes;
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
	public Usuario(String url,String descripcion, String usuarioimg, String estilo, String fecha, String likes) {
		this.url = url;
		this.descripcion = descripcion;
		this.likes = likes;
		this.usuario = usuarioimg;
		this.estilo = estilo;
		this.fecha = fecha;
	}
	public Usuario(String descripcion, String url, int idimg, String usuarioimg, String estilo, String fecha, String likes) {
		this.idimg=idimg;
		this.url = url;
		this.descripcion = descripcion;
		this.likes = likes;
		this.usuario = usuarioimg;
		this.estilo = estilo;
		this.fecha = fecha;
	}

	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getLikes() {
		return likes;
	}
	public void setLikes(String likes) {
		this.likes = likes;
	}
	public String getEstilo() {
		return estilo;
	}
	public void setEstilo(String estilo) {
		this.estilo = estilo;
	}
	public String getFecha() {
		return fecha;
	}
	public void setFecha(String fecha) {
		this.fecha = fecha;
	}
	public int getIdUsuario() {
		return idUsuario;
	}
	
	public String getUsuario() {
		return usuario;
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
	public void setIdimg(int idimg) {
		this.idimg = idimg;
	}

}
