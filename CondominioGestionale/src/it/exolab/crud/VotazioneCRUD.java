package it.exolab.crud;

import java.util.List;

import it.exolab.mapper.SqlMapFactory;
import it.exolab.mapper.VotazioneMapper;
import it.exolab.model.Votazione;



public class VotazioneCRUD {

	
	public void insert(Votazione votazione) {
		SqlMapFactory.instance().openSession();

		VotazioneMapper mapper = SqlMapFactory.instance().getMapper(VotazioneMapper.class);

		mapper.insert(votazione);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
	}
	
	public void update(Votazione votazione) {
		SqlMapFactory.instance().openSession();

		VotazioneMapper mapper = SqlMapFactory.instance().getMapper(VotazioneMapper.class);

		mapper.update(votazione);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();

	}
	
	public void delete(int id) {

		SqlMapFactory.instance().openSession();

		VotazioneMapper mapper = SqlMapFactory.instance().getMapper(VotazioneMapper.class);

		mapper.delete(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();

	}
	
	public Votazione find(int id) {

		SqlMapFactory.instance().openSession();

		VotazioneMapper mapper = SqlMapFactory.instance().getMapper(VotazioneMapper.class);

		Votazione ret = mapper.find(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		return ret;

	}
	
	public List<Votazione> findAll() {
		SqlMapFactory.instance().openSession();

		VotazioneMapper mapper = SqlMapFactory.instance().getMapper(VotazioneMapper.class);

		List<Votazione> ret = mapper.findAll();

		SqlMapFactory.instance().closeSession();

		return   ret;

	}

}
