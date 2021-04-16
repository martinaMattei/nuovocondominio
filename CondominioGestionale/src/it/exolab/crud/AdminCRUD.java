package it.exolab.crud;

import it.exolab.mapper.AdminMapper;
import it.exolab.mapper.SqlMapFactory;
import it.exolab.model.Admin;

public class AdminCRUD {
	
	
	public Admin find(int id){
		
		SqlMapFactory.instance().openSession();
		
		AdminMapper mapper =  (AdminMapper) SqlMapFactory.instance().getMapper(Admin.class);
		
		Admin ret = mapper.find(id);
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		return ret;
		
		
	}
	
	public Admin findByEmailAndPassword(Admin admin) throws Exception {
		
		SqlMapFactory.instance().openSession();
		AdminMapper mapper = SqlMapFactory.instance().getMapper(AdminMapper.class);
		
		admin = mapper.findByEmailAndPassword(admin);
		System.out.println(admin);
		
		SqlMapFactory.instance().commitSession();
		SqlMapFactory.instance().closeSession();
		if(admin == null)
			throw new  Exception();
		return admin;
}

}
