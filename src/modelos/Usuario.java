package modelos;

public class Usuario {
	private int idUsuario;
	private String email;
	private String movil;
	private String url;
	private String descripcion;
	private String sumlikes;
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
	public Usuario(String url,String descripcion, String estilo, String fecha, String sumlikes) {
		this.url = url;
		this.descripcion = descripcion;
		this.sumlikes = sumlikes;
		this.estilo = estilo;
		this.fecha = fecha;
	}
	public Usuario(String descripcion, String url, int idimg, String estilo, String fecha, String likes) {
		this.idimg=idimg;
		this.url = url;
		this.descripcion = descripcion;
		this.sumlikes = likes;
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
	public String getSumlikes() {
		return sumlikes;
	}
	public void setSumlikes(String sumlikes) {
		this.sumlikes = sumlikes;
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