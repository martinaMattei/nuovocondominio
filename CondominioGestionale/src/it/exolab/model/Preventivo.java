package it.exolab.model;

public class Preventivo {
	private int id;
	private int id_admin;
	private int id_utente;
	private String testo;
	Riunione riunione;
	Admin admin;
	private int id_palazzina;
	private String nominativo;
	
	
	
	public String getNominativo() {
		return nominativo;
	}
	public void setNominativo(String nominativo) {
		this.nominativo = nominativo;
	}
	public int getId_utente() {
		return id_utente;
	}
	public void setId_utente(int id_utente) {
		this.id_utente = id_utente;
	}
	public int getId_palazzina() {
		return id_palazzina;
	}
	public void setId_palazzina(int id_palazzina) {
		this.id_palazzina = id_palazzina;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public Preventivo(int id, int id_admin, String testo, Riunione riunione, Admin admin) {
		super();
		this.id = id;
		this.id_admin = id_admin;
		this.testo = testo;
		this.riunione = riunione;
		this.admin = admin;
	}
	public Preventivo() {
		super();
	}
	public Preventivo(String testo, int id_admin) {
		this.testo= testo;
		this.id_admin=id_admin;
	}
	public Preventivo(int id, int id_admin, String testo, int id_palazzina) {
		super();
		this.id = id;
		this.id_admin = id_admin;
		this.testo = testo;
		this.id_palazzina = id_palazzina;
	}
	public Preventivo(String testo, int id_admin, int id_palazzina) {
		super();
		this.id_admin = id_admin;
		this.testo = testo;
		this.id_palazzina = id_palazzina;
	}
	
	public Preventivo(int id_utente, String testo, int id_palazzina, String nominativo) {
		this.id_utente = id_utente;
		this.testo = testo;
		this.id_palazzina = id_palazzina;
		this.nominativo = nominativo;
		
	}
	@Override
	public String toString() {
		return "Preventivo [id=" + id + ", id_admin=" + id_admin + ", testo=" + testo + ", riunione=" + riunione
				+ ", admin=" + admin + ", id_palazzina=" + id_palazzina + "]";
	}
	
	
	

}
