package it.exolab.crud;

import java.util.List;

import it.exolab.mapper.PreventivoMapper;
import it.exolab.mapper.SqlMapFactory;
import it.exolab.model.Preventivo;
import it.exolab.model.Utente;

public class PreventivoCRUD {

	
	public void insert(Preventivo preventivo) {
		SqlMapFactory.instance().openSession();

		PreventivoMapper mapper = SqlMapFactory.instance().getMapper(PreventivoMapper.class);

		mapper.insert(preventivo);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
	}

	public void update(Preventivo preventivo) {
		SqlMapFactory.instance().openSession();

		PreventivoMapper mapper = SqlMapFactory.instance().getMapper(PreventivoMapper.class);

		mapper.update(preventivo);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();

	}
	public void delete(int id) {

		SqlMapFactory.instance().openSession();

		PreventivoMapper mapper = SqlMapFactory.instance().getMapper(PreventivoMapper.class);

		mapper.delete(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();

	}

	public Preventivo find(int id) {

		SqlMapFactory.instance().openSession();

		PreventivoMapper mapper = SqlMapFactory.instance().getMapper(PreventivoMapper.class);

		Preventivo ret = mapper.find(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		return ret;

	}
	
	public List<Preventivo> findAll() {
		SqlMapFactory.instance().openSession();

		PreventivoMapper mapper = SqlMapFactory.instance().getMapper(PreventivoMapper.class);

		List<Preventivo> ret = mapper.findAll();

		SqlMapFactory.instance().closeSession();

		return  ret;

	}

	

}
