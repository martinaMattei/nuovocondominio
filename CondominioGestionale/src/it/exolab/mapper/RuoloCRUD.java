package it.exolab.mapper;

import it.exolab.model.Ruolo;

public class RuoloCRUD {
	
	public void insert(Ruolo ruolo) {
		SqlMapFactory.instance().openSession();

		RuoloMapper mapper = SqlMapFactory.instance().getMapper(RuoloMapper.class);

		mapper.insert(ruolo);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();

	}
	
	public Ruolo find(int id){
		
		SqlMapFactory.instance().openSession();
		
		RuoloMapper mapper =  SqlMapFactory.instance().getMapper(RuoloMapper.class);
		
		Ruolo ret = mapper.find(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		return ret;
		
		
	}
	
        public Ruolo findByNome(String nome) {
		
		SqlMapFactory.instance().openSession();
		RuoloMapper mapper = SqlMapFactory.instance().getMapper(RuoloMapper.class);
		
		Ruolo ruolo = mapper.findByNome(nome);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		return ruolo;
	}
        
        public void update(Ruolo ruolo){
    		SqlMapFactory.instance().openSession();
    		
    		RuoloMapper mapper =  SqlMapFactory.instance().getMapper(RuoloMapper.class);
    		
    		mapper.update(ruolo);
    		SqlMapFactory.instance().commitSession();
    		SqlMapFactory.instance().closeSession();
    		
    		
    		
    	}
    	public void delete(int id){
    		
    		SqlMapFactory.instance().openSession();
    		
    		RuoloMapper mapper =  SqlMapFactory.instance().getMapper(RuoloMapper.class);
    		
    		mapper.delete(id);
    		SqlMapFactory.instance().commitSession();
    		SqlMapFactory.instance().closeSession();
    		
    		
    		
    	}

}
