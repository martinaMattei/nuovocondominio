package it.exolab.controller;

import java.nio.file.Files;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import it.exolab.exception.EntityNotFoundException;

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
		String carta_identita = request.getParameter("file2");

		int id_ruolo = 1;
		int id_palazzina = Integer.parseInt(request.getParameter("id_palazzina"));
		int accesso = 0;

		Utente utente = new Utente(nome, cognome, telefono, email, password, carta_identita, id_ruolo, id_palazzina,
				accesso);
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
		String nominativo = request.getParameter("nominativo");

		String carta_identita = request.getParameter("file2");
		int id_ruolo = 2;
		int accesso = 0;
		int id_palazzina = Integer.parseInt(request.getParameter("id_palazzina"));

		Utente utente = new Utente(nome, cognome, telefono, email, password, carta_identita, id_ruolo, id_palazzina,
				accesso, nominativo);

		utentecrud.insertD(utente);

		request.getSession().setAttribute("utente", utente);
		request.getSession().setAttribute("nominativo", nominativo);

	}

	public void login() {

		Utente utente = new Utente();

		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			utente.setEmail(email);
			utente.setPassword(password);
			utente = utentecrud.findByEmailPassword(utente);
			System.out.println(utente);
			request.getSession().setAttribute("utente", utente);
		} catch (EntityNotFoundException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}

	public void listaUtenti() {
		List<Utente> utente = new ArrayList<Utente>();
		utente = utentecrud.findAll();
		request.getSession().setAttribute("utente", utente);
	}

	public void delete() {
		int id = Integer.valueOf(request.getParameter("id"));
		utentecrud.delete(id);
	}

	public void deleteTot() {
		int accesso = 0;
		utentecrud.deleteTot(accesso);
	}

	public void accettaUtente() {
		int id = Integer.valueOf(request.getParameter("id"));
		int accesso = 1;
		Utente utente = new Utente(id, accesso);
		utentecrud.updateAccesso(utente);
		request.getSession().setAttribute("utente", utente);

	}

	public void accettaTot() {
		int accesso = 1;
		Utente utente = new Utente(accesso);
		utentecrud.updateTot(utente);
		request.getSession().setAttribute("utente", utente);
	}

	public void count() {
		int accesso = 0;
		int count = utentecrud.count(accesso);
		if (count == 0) {
			request.setAttribute("avviso", "Non ci sono utenti da accettare");
		}
		request.getSession().setAttribute("count", count);
		return;
	}
}
