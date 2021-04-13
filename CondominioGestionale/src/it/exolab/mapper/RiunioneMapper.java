package it.exolab.mapper;

import java.util.List;

import it.exolab.model.Riunione;

public interface RiunioneMapper {

	
	public void insert(Riunione riunione);
	public void update(Riunione riunione);
	public void delete(int id);
	public Riunione find(int id);
	public List<Riunione> findAll();
	
	
}
