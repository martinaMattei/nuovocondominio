package it.exolab.crud;

import java.util.List;

import it.exolab.mapper.PreventivoMapper;
import it.exolab.mapper.SqlMapFactory;
import it.exolab.mapper.UtenteMapper;
import it.exolab.model.Preventivo;
import it.exolab.model.Utente;

public class PreventivoCRUD {

	
	public void insertA(Preventivo preventivo) {
		SqlMapFactory.instance().openSession();

		PreventivoMapper mapper = SqlMapFactory.instance().getMapper(PreventivoMapper.class);

		
		mapper.insertA(preventivo);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
	}
	
	public void insertU(Preventivo preventivo) {
		SqlMapFactory.instance().openSession();

		PreventivoMapper mapper = SqlMapFactory.instance().getMapper(PreventivoMapper.class);

		mapper.insertU(preventivo);
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
	
	
	public List<Preventivo> findPalazzina(int id_palazzina) throws Exception {
		SqlMapFactory.instance().openSession();
		PreventivoMapper mapper = SqlMapFactory.instance().getMapper(PreventivoMapper.class);
		List<Preventivo> ret = mapper.findPalazzina(id_palazzina);
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
