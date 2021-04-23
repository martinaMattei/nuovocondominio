package it.exolab.mapper;

import it.exolab.model.Admin;
import it.exolab.model.Utente;

public interface AdminMapper { 
	
	public Admin find(int id);
	public Admin findByEmailAndPassword(Admin admin) throws Exception;
}
