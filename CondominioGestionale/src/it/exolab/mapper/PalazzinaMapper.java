package it.exolab.mapper;

import it.exolab.model.Palazzina;

public interface PalazzinaMapper {
	
	public Palazzina find(int id);
	public Palazzina findByNome(String nome);
	public void insert(Palazzina palazzina);
	
}

