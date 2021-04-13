package it.exolab.mapper;

import java.util.List;

import it.exolab.model.Preventivo;


public interface PreventivoMapper {

	
	public void insert(Preventivo preventivo);
	public void update(Preventivo preventivo);
	public void delete(int id);
	public Preventivo find(int id);
	public List<Preventivo> findAll();
	
	
}
