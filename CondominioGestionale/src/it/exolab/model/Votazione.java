package it.exolab.model;

public class Votazione {
	private int id;
	private int id_utente;
	private int id_riunione;
	private int id_preventivo;
	private String esito;
	Utente utente;
	Riunione riunione;
	Preventivo preventivo;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_utente() {
		return id_utente;
	}
	public void setId_utente(int id_utente) {
		this.id_utente = id_utente;
	}
	public int getId_riunione() {
		return id_riunione;
	}
	public void setId_riunione(int id_riunione) {
		this.id_riunione = id_riunione;
	}
	public int getId_preventivo() {
		return id_preventivo;
	}
	public void setId_preventivo(int id_preventivo) {
		this.id_preventivo = id_preventivo;
	}
	public String getEsito() {
		return esito;
	}
	public void setEsito(String esito) {
		this.esito = esito;
	}
	public Utente getUtente() {
		return utente;
	}
	public void setUtente(Utente utente) {
		this.utente = utente;
	}
	public Riunione getRiunione() {
		return riunione;
	}
	public void setRiunione(Riunione riunione) {
		this.riunione = riunione;
	}
	public Preventivo getPreventivo() {
		return preventivo;
	}
	public void setPreventivo(Preventivo preventivo) {
		this.preventivo = preventivo;
	}
	public Votazione(int id, int id_utente, int id_riunione, int id_preventivo, String esito, Utente utente,
			Riunione riunione, Preventivo preventivo) {
		super();
		this.id = id;
		this.id_utente = id_utente;
		this.id_riunione = id_riunione;
		this.id_preventivo = id_preventivo;
		this.esito = esito;
		this.utente = utente;
		this.riunione = riunione;
		this.preventivo = preventivo;
	}
	public Votazione() {
		super();
	}
	@Override
	public String toString() {
		return "Votazione [id=" + id + ", id_utente=" + id_utente + ", id_riunione=" + id_riunione + ", id_preventivo="
				+ id_preventivo + ", esito=" + esito + ", riunione=" + riunione + ", preventivo=" + preventivo + "]";
	}
	
	

}
