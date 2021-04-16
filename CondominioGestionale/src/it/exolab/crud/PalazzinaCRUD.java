package it.exolab.crud;
import it.exolab.mapper.PalazzinaMapper;
import it.exolab.mapper.SqlMapFactory;
import it.exolab.model.Palazzina;

public class PalazzinaCRUD {
	
	public void insert(Palazzina palazzina) {
		SqlMapFactory.instance().openSession();

		PalazzinaMapper mapper = SqlMapFactory.instance().getMapper(PalazzinaMapper.class);

		mapper.insert(palazzina);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();

	}
	
	public Palazzina find(int id){
		
		SqlMapFactory.instance().openSession();
		
		PalazzinaMapper mapper =  SqlMapFactory.instance().getMapper(PalazzinaMapper.class);
		
		Palazzina ret = mapper.find(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		return ret;
		
		
	}
	
        public Palazzina findByNome(String nome) {
		
		SqlMapFactory.instance().openSession();
		PalazzinaMapper mapper = SqlMapFactory.instance().getMapper(PalazzinaMapper.class);
		
		Palazzina palazzina = mapper.findByNome(nome);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		return palazzina;
	}
        
       

}
