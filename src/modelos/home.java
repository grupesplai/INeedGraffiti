package modelos;

public class home {//fotos de Home (deberia llamarse imagenes...

	private int idImagen;
	private int idUsuario;
	private String nomUsuario;
	private String url;
	private int likes;
	private String descripcion;
	private int id_estilo;
	private String estilo;
	private int fecha;	// fecha introducida por el usuario.

	public home(int id_estilo,String estilo) {
		this.id_estilo = id_estilo;
		this.estilo = estilo;
	}
	public home(int id_img, int id_usu, String usuNom, String url, int likes) { //constructor para traer imagenes a Home.jsp
		this.idImagen = id_img;
		this.idUsuario = id_usu;
		this.nomUsuario = usuNom;
		this.url = url;
		this.likes = likes;
	}
	
	public home(int id_img,String url, String desc,int id_usu, String usuNom, String est, int fecha) {//constructor trae toda info de la imagen seleccionada
		this.idImagen = id_img;
		this.url = url;
		this.descripcion = desc;
		this.idUsuario = id_usu;
		this.nomUsuario = usuNom;
		this.estilo = est;
		this.fecha = fecha;
	}

	public int getIdImagen() {
		return idImagen;
	}

	public int getIdUsuario() {
		return idUsuario;
	}

	public String getNomUsuario() {
		return nomUsuario;
	}

	public String getUrl() {
		return url;
	}

	public int getLikes() {
		return likes;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public int getId_estilo() {
		return id_estilo;
	}
	public String getEstilo() {
		return estilo;
	}
	public int getFecha() {
		return fecha;
	}
}
