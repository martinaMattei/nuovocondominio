package it.exolab.mapper;

import it.exolab.model.Ruolo;

public interface RuoloMapper {

	public void insert(Ruolo ruolo);
	public void update(Ruolo ruolo);
	public void delete(int id);
	public Ruolo find(int id);
	public Ruolo findByNome(String nome);
	
}
