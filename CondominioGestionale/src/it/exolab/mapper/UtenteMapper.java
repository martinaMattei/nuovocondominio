package it.exolab.mapper;

import java.util.List;

import it.exolab.model.Palazzina;
import it.exolab.model.Ruolo;
import it.exolab.model.Utente;

public interface UtenteMapper {

	
	public void insert(Utente utente);
	public void update(Utente utente);
	public void delete(int id);
	public Utente find(int id);
	public Utente findByEmailPassword(Utente utente);
	public List<Utente> findByNomePalazzo(Utente utente);
	public List<Utente> findByNomeRuolo(Utente utente);
	public List<Utente> findAll();
	
	
}
