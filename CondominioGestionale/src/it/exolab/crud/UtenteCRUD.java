package it.exolab.crud;

import java.util.List;

import org.apache.catalina.mbeans.UserMBean;
import org.apache.ibatis.jdbc.SQL;

import it.exolab.mapper.SqlMapFactory;
import it.exolab.mapper.UtenteMapper;
import it.exolab.model.Utente;

public class UtenteCRUD {
	public void insert(Utente utente) {
		SqlMapFactory.instance().openSession();
		
		UtenteMapper mapper = SqlMapFactory.instance().getMapper(UtenteMapper.class);
		
		mapper.insert(utente);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
	}

	public void update(Utente utente) {
		SqlMapFactory.instance().openSession();
		UtenteMapper mapper = SqlMapFactory.instance().getMapper(UtenteMapper.class);
		mapper.update(utente);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
	}
	
	public void delete(int id) {
		SqlMapFactory.instance().openSession();
		UtenteMapper mapper = SqlMapFactory.instance().getMapper(UtenteMapper.class);
		mapper.delete(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
	}
	public Utente find(int id) {
		SqlMapFactory.instance().openSession();
		UtenteMapper mapper = SqlMapFactory.instance().getMapper(UtenteMapper.class);
		Utente ret = mapper.find(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		return ret;
	}
	
	public Utente findByEmailPassword(Utente utente) throws Exception {
		SqlMapFactory.instance().openSession();
		UtenteMapper mapper = SqlMapFactory.instance().getMapper(UtenteMapper.class);
		utente = mapper.findByEmailPassword(utente);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		if(utente == null)
			throw new Exception();
		return utente;
	}
	public List<Utente> findByNomeRuolo(Utente utente) throws Exception{
		SqlMapFactory.instance().openSession();
		UtenteMapper mapper = SqlMapFactory.instance().getMapper(UtenteMapper.class);
		List<Utente> ret = mapper.findByNomeRuolo(utente);
		SqlMapFactory.instance().closeSession();
		return ret;
	}
	public List<Utente> findByNomePalazzo(Utente utente) throws Exception{
		SqlMapFactory.instance().openSession();
		UtenteMapper mapper = SqlMapFactory.instance().getMapper(UtenteMapper.class);
		List<Utente> ret = mapper.findByNomePalazzo(utente);
		SqlMapFactory.instance().closeSession();
		return ret;
	}
	public List<Utente> findAll(){
		SqlMapFactory.instance().openSession();
		UtenteMapper mapper = SqlMapFactory.instance().getMapper(UtenteMapper.class);
		List<Utente> ret = mapper.findAll();
		SqlMapFactory.instance().closeSession();
		return  ret;
	}
}
