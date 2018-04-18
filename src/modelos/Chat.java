package modelos;

public class Chat {
	private int id_user;
	private int id_recept;
	private String mensaje;
	private String fecha;
	
	public Chat(int id_recept) {
		this.id_recept = id_recept;
	}
	
	public Chat(int id_user, int id_recept, String mensaje, String fecha) {
		this.id_user = id_user;
		this.id_recept = id_recept;
		this.mensaje = mensaje;
		this.fecha = fecha;
	}
	
	public int getId_user() {
		return id_user;
	}
	public int getId_recept() {
		return id_recept;
	}
	public String getMensaje() {
		return mensaje;
	}
	public String getFecha() {
		return fecha;
	}
}
