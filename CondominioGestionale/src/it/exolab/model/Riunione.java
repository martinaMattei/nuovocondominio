package it.exolab.model;

public class Riunione {
	 private int id;
	 private int id_palazzina;
	 private int id_votazione;
	 private String data;
	 private String motivazione;
	 private int n_verbale;
	 Palazzina palazzina;
	 Votazione votazione;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getId_palazzina() {
		return id_palazzina;
	}
	public void setId_palazzina(int id_palazzina) {
		this.id_palazzina = id_palazzina;
	}
	public int getId_votazione() {
		return id_votazione;
	}
	public void setId_votazione(int id_votazione) {
		this.id_votazione = id_votazione;
	}
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getMotivazione() {
		return motivazione;
	}
	public void setMotivazione(String motivazione) {
		this.motivazione = motivazione;
	}
	public int getN_verbale() {
		return n_verbale;
	}
	public void setN_verbale(int n_verbale) {
		this.n_verbale = n_verbale;
	}
	public Palazzina getPalazzina() {
		return palazzina;
	}
	public void setPalazzina(Palazzina palazzina) {
		this.palazzina = palazzina;
	}
	public Votazione getVotazione() {
		return votazione;
	}
	public void setVotazione(Votazione votazione) {
		this.votazione = votazione;
	}
	public Riunione(int id, int id_palazzina, int id_votazione, String data, String motivazione, int n_verbale,
			Palazzina palazzina, Votazione votazione) {
		super();
		this.id = id;
		this.id_palazzina = id_palazzina;
		this.id_votazione = id_votazione;
		this.data = data;
		this.motivazione = motivazione;
		this.n_verbale = n_verbale;
		this.palazzina = palazzina;
		this.votazione = votazione;
	}
	public Riunione() {
		super();
	}
	@Override
	public String toString() {
		return "Riunione [id=" + id + ", id_palazzina=" + id_palazzina + ", id_votazione=" + id_votazione + ", data="
				+ data + ", motivazione=" + motivazione + ", n_verbale=" + n_verbale + ", palazzina=" + palazzina + "]";
	}
	 
	 

}
