package it.exolab.mapper;

import java.util.List;

import it.exolab.model.Votazione;


public interface VotazioneMapper {

	
	public void insert(Votazione votazione);
	public void update(Votazione votazione);
	public void delete(int id);
	public Votazione find(int id);
	public List<Votazione> findAll();
	
	
}
