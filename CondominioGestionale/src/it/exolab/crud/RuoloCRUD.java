package it.exolab.crud;

import it.exolab.mapper.RuoloMapper;
import it.exolab.mapper.SqlMapFactory;
import it.exolab.model.Ruolo;


public class RuoloCRUD {

	public void insert(Ruolo utente) {
		SqlMapFactory.instance().openSession();
		
		RuoloMapper mapper = SqlMapFactory.instance().getMapper(RuoloMapper.class);
		
		mapper.insert(utente);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
	}

	public void update(Ruolo utente) {
		SqlMapFactory.instance().openSession();
		RuoloMapper mapper = SqlMapFactory.instance().getMapper(RuoloMapper.class);
		mapper.update(utente);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
	}
	
	public void delete(int id) {
		SqlMapFactory.instance().openSession();
		RuoloMapper mapper = SqlMapFactory.instance().getMapper(RuoloMapper.class);
		mapper.delete(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
	}
	public Ruolo find(int id) {
		SqlMapFactory.instance().openSession();
		RuoloMapper mapper = SqlMapFactory.instance().getMapper(RuoloMapper.class);
		Ruolo ret = mapper.find(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		return ret;
	}
	public Ruolo findByNome(String nome) {
		SqlMapFactory.instance().openSession();
		RuoloMapper mapper = SqlMapFactory.instance().getMapper(RuoloMapper.class);
		Ruolo ret = mapper.findByNome(nome);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		return ret;
	}
}
