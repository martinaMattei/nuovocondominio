package it.exolab.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.exolab.crud.AdminCRUD;
import it.exolab.crud.RiunioneCRUD;
import it.exolab.crud.UtenteCRUD;
import it.exolab.model.Utente;

public class BaseController {

	UtenteCRUD utentecrud = new UtenteCRUD();
	AdminCRUD admincrud = new AdminCRUD();
	RiunioneCRUD riunionecrud = new RiunioneCRUD();
	protected HttpServletRequest request;
	protected HttpServletResponse response;

	public BaseController(HttpServletRequest request, HttpServletResponse response) {
		this.request = request;
		this.response = response;
	}

	public void redirect() throws ServletException, IOException {
		
			Utente utente = (Utente) request.getSession().getAttribute("utente");
			request.getRequestDispatcher("home.jsp").include(request, response);

	}
	
	public void redirectAdmin() throws ServletException, IOException {
		request.getRequestDispatcher("homeAdmin.jsp").include(request, response);

    }
	
	public void redirectRiunione() throws ServletException, IOException {
		request.getRequestDispatcher("homeAdmin.jsp").include(request, response);
	}

}
