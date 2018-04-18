package modelos;

public class Usuario {
	private int idUsuario;
	private String usuario;
	private String email;
	private String movil;
	private String url_perfil;

	public Usuario(int id_usu, String usuario, String email, String movil, String url_perfil) {

		this.idUsuario = id_usu;
		this.usuario = usuario;
		this.email = email;
		this.movil = movil;
		this.url_perfil = url_perfil;
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

	public String getUrlPerfil() {
		return url_perfil;
	}

}
