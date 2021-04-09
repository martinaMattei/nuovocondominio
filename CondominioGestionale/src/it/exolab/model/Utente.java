package it.exolab.model;

import java.util.Arrays;

public class Utente {
	private int id;
	private String nome;
	private String cognome;
	private String telefono;
	private String email;
	private String password;
	private byte[] carta_identita;
	private int id_ruolo;
	private int id_palazzina;
	Ruolo ruolo;
	Palazzina palazzina;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getCognome() {
		return cognome;
	}
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	public String getTelefono() {
		return telefono;
	}
	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public byte[] getCarta_identita() {
		return carta_identita;
	}
	public void setCarta_identita(byte[] carta_identita) {
		this.carta_identita = carta_identita;
	}
	public int getId_ruolo() {
		return id_ruolo;
	}
	public void setId_ruolo(int id_ruolo) {
		this.id_ruolo = id_ruolo;
	}
	public int getId_palazzina() {
		return id_palazzina;
	}
	public void setId_palazzina(int id_palazzina) {
		this.id_palazzina = id_palazzina;
	}
	public Ruolo getRuolo() {
		return ruolo;
	}
	public void setRuolo(Ruolo ruolo) {
		this.ruolo = ruolo;
	}
	public Palazzina getPalazzina() {
		return palazzina;
	}
	public void setPalazzina(Palazzina palazzina) {
		this.palazzina = palazzina;
	}
	public Utente(int id, String nome, String cognome, String telefono, String email, String password,
			byte[] carta_identita, int id_ruolo, int id_palazzina, Ruolo ruolo, Palazzina palazzina) {
		super();
		this.id = id;
		this.nome = nome;
		this.cognome = cognome;
		this.telefono = telefono;
		this.email = email;
		this.password = password;
		this.carta_identita = carta_identita;
		this.id_ruolo = id_ruolo;
		this.id_palazzina = id_palazzina;
		this.ruolo = ruolo;
		this.palazzina = palazzina;
	}
	public Utente() {
		super();
	}
	@Override
	public String toString() {
		return "Utente [id=" + id + ", nome=" + nome + ", cognome=" + cognome + ", telefono=" + telefono + ", email="
				+ email + ", password=" + password + ", carta_identita=" + Arrays.toString(carta_identita)
				+ ", id_ruolo=" + id_ruolo + ", id_palazzina=" + id_palazzina + ", ruolo=" + ruolo + ", palazzina="
				+ palazzina + "]";
	}
	
	

}
