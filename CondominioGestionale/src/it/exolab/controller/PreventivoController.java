package it.exolab.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.exolab.model.Admin;
import it.exolab.model.Preventivo;
import it.exolab.model.Riunione;
import it.exolab.model.Utente;

public class PreventivoController extends BaseController {

	public PreventivoController(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}

	public void creaPreventivo() {

		Admin admin = (Admin) request.getSession().getAttribute("admin");

		String testo = request.getParameter("testo");
		int id_admin = admin.getId();
      int  id_palazzina = Integer.valueOf(request.getParameter("id_palazzina"));

		Preventivo preventivo = new Preventivo(testo, id_admin, id_palazzina);

		preventivocrud.insertA(preventivo);
		request.getSession().setAttribute("preventivo", preventivo);

	}
	
	public void creaPreventivoUtente() {

		Utente utente = (Utente) request.getSession().getAttribute("utente");

		String testo = request.getParameter("testo");
		int id_utente = utente.getId();
		int id_palazzina= utente.getId_palazzina();
		String nome = utente.getNome();
		String cognome = utente.getCognome();
		String nominativo = nome + " " + cognome ;

		Preventivo preventivo = new Preventivo(id_utente, testo, id_palazzina, nominativo);

		preventivocrud.insertU(preventivo);
		request.getSession().setAttribute("preventivo", preventivo);
	

	}

	public void listaPreventivo() {

		List<Preventivo> preventivo = new ArrayList<Preventivo>();
		preventivo = preventivocrud.findAll();

		request.getSession().setAttribute("preventivo", preventivo);
	}
	
    public void preventivoPalazzina() throws Exception {
		
    	List<Preventivo> preventivo = new ArrayList<Preventivo>();
    	
		int id_palazzina = Integer.valueOf(request.getParameter("id_palazzina"));

		preventivo = preventivocrud.findPalazzina(id_palazzina);
		request.getSession().setAttribute("preventivo", preventivo);
		
		
	}


}
