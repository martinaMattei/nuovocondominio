package it.exolab.crud;

import java.util.List;

import it.exolab.mapper.RiunioneMapper;
import it.exolab.mapper.SqlMapFactory;
import it.exolab.model.Riunione;
import it.exolab.model.Utente;

public class RiunioneCRUD {
	
	public void insert(Riunione riunione) {
		SqlMapFactory.instance().openSession();

		RiunioneMapper mapper = SqlMapFactory.instance().getMapper(RiunioneMapper.class);

		mapper.insert(riunione);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
	}
	
	public void update(Riunione riunione) {
		SqlMapFactory.instance().openSession();

		RiunioneMapper mapper = SqlMapFactory.instance().getMapper(RiunioneMapper.class);

		mapper.update(riunione);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();

	}
	
	public void delete(int id) {

		SqlMapFactory.instance().openSession();

		RiunioneMapper mapper = SqlMapFactory.instance().getMapper(RiunioneMapper.class);

		mapper.delete(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();

	}
	
	public Riunione find(int id) {

		SqlMapFactory.instance().openSession();

		RiunioneMapper mapper = SqlMapFactory.instance().getMapper(RiunioneMapper.class);

		Riunione ret = mapper.find(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		return ret;

	}
	
	public List<Riunione> findAll() {
		SqlMapFactory.instance().openSession();

		RiunioneMapper mapper = SqlMapFactory.instance().getMapper(RiunioneMapper.class);

		List<Riunione> ret = mapper.findAll();

		SqlMapFactory.instance().closeSession();

		return  ret;

	}



}
