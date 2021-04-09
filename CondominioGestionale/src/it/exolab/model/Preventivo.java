package it.exolab.model;

public class Preventivo {
	private int id;
	private int id_riunione;
	private int id_admin;
	private String testo;
	Riunione riunione;
	Admin admin;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_riunione() {
		return id_riunione;
	}
	public void setId_riunione(int id_riunione) {
		this.id_riunione = id_riunione;
	}
	public int getId_admin() {
		return id_admin;
	}
	public void setId_admin(int id_admin) {
		this.id_admin = id_admin;
	}
	public String getTesto() {
		return testo;
	}
	public void setTesto(String testo) {
		this.testo = testo;
	}
	public Riunione getRiunione() {
		return riunione;
	}
	public void setRiunione(Riunione riunione) {
		this.riunione = riunione;
	}
	public Admin getAdmin() {
		return admin;
	}
	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
	public Preventivo(int id, int id_riunione, int id_admin, String testo, Riunione riunione, Admin admin) {
		super();
		this.id = id;
		this.id_riunione = id_riunione;
		this.id_admin = id_admin;
		this.testo = testo;
		this.riunione = riunione;
		this.admin = admin;
	}
	public Preventivo() {
		super();
	}
	@Override
	public String toString() {
		return "Preventivo [id=" + id + ", id_riunione=" + id_riunione + ", id_admin=" + id_admin + ", testo=" + testo
				+ ", admin=" + admin + "]";
	}
	
	
	

}
