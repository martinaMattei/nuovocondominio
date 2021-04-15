package it.exolab.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.exolab.exception.EntityNotFoundException;
import it.exolab.exception.FieldException;
import it.exolab.model.Admin;
import it.exolab.model.Utente;

public class UtenteController extends BaseController {

	public UtenteController(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}

	public void registrazione() {

		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String telefono = request.getParameter("telefono");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		byte[] carta_identita = null;
		int id_ruolo = 1;
		int id_palazzina = Integer.parseInt(request.getParameter("id_palazzina"));

		Utente utente = new Utente(nome, cognome, telefono, email, password, carta_identita, id_ruolo, id_palazzina);
		System.out.println(utente);

		utentecrud.insert(utente);
		request.getSession().setAttribute("utente", utente);

	}

	public void registrazioneDelegato() {

		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String telefono = request.getParameter("telefono");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		byte[] carta_identita = null;
		int id_ruolo = 2;
		int id_palazzina = Integer.parseInt(request.getParameter("id_palazzina"));

		Utente utente = new Utente(nome, cognome, telefono, email, password, carta_identita, id_ruolo, id_palazzina);
		System.out.println(utente);

		utentecrud.insert(utente);
		request.getSession().setAttribute("utente", utente);

	}

	public Utente login() {

		Utente utente = new Utente();

		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			utente.setEmail(email);
			utente.setPassword(password);
			utente = utentecrud.findByEmailPassword(utente);

		} catch (EntityNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return utente;
	}

}
