package it.exolab.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import it.exolab.exception.EntityNotFoundException;
import it.exolab.model.Utente;

public class UtenteController extends BaseController {

	public UtenteController(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}

	public void findEmail() throws ServletException, IOException {

		UtenteController utenteController = new UtenteController(request, response);

		String email = request.getParameter("email");
		String avviso = "";
		String view = "registrazione.jsp";

		Utente utente = new Utente(email);

		try {
			utentecrud.findEmail(utente);
			avviso = "Email già esistente";

		} catch (Exception e) {
			utenteController.registrazione();
			request.getSession().setAttribute("utente", utente);
		}

		if (!avviso.equals("")) {
			request.setAttribute("avviso", avviso);
			request.getRequestDispatcher(view).include(request, response);
		}
		
	}

	public void registrazione() throws IOException, ServletException {
		
		UtenteController utenteController = new UtenteController(request, response);

		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String telefono = request.getParameter("telefono");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		byte[] carta_identita = uploadPicture("file2");

		int id_ruolo = 1;
		int id_palazzina = Integer.parseInt(request.getParameter("id_palazzina"));
		int accesso = 0;

		Utente utente = new Utente(nome, cognome, telefono, email, password, carta_identita, id_ruolo, id_palazzina,
				accesso);

		utentecrud.insert(utente);
		request.getSession().setAttribute("utente", utente);
		doFoto(request, response);
		utenteController.redirect();
	}


	public void registrazioneDelegato() throws IOException, ServletException {

		String nome = request.getParameter("nome");
		String cognome = request.getParameter("cognome");
		String telefono = request.getParameter("telefono");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String nominativo = request.getParameter("nominativo");

		byte[] carta_identita = uploadPicture("file2");
		int id_ruolo = 2;
		int accesso = 0;
		int id_palazzina = Integer.parseInt(request.getParameter("id_palazzina"));

		Utente utente = new Utente(nome, cognome, telefono, email, password, carta_identita, id_ruolo, id_palazzina,
				accesso, nominativo);

		utentecrud.insert(utente);
		request.getSession().setAttribute("utente", utente);
		request.getSession().setAttribute("nominativo", nominativo);
	}

	public void login() throws ServletException, IOException {

		Utente utente = new Utente();
		UtenteController utenteController = new UtenteController(request, response);
		String avviso = "";
		String view = "login.jsp";

		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			utente.setEmail(email);
			utente.setPassword(password);
			utente = utentecrud.findByEmailPassword(utente);
			request.getSession().setAttribute("utente", utente);
			utenteController.redirect();

		} catch (EntityNotFoundException e) {

		} catch (Exception e) {
			avviso = "Email o password errati";
		}
		if (!avviso.equals("")) {
			request.setAttribute("avviso", avviso);
			request.getRequestDispatcher(view).include(request, response);
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

	public void blocca() {
		int id = Integer.valueOf(request.getParameter("id"));
		int accesso = 0;
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

	public void logout() {

		HttpSession session = request.getSession();

		Utente utente = (Utente) session.getAttribute("utente");

		if (utente != null) {
			session.invalidate();
		}
	}

	public void update() {

		int id = Integer.valueOf(request.getParameter("id"));
		String telefono = request.getParameter("telefono");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String avviso = "";

		Utente utente = new Utente(id, telefono, email, password);

		utentecrud.update(utente);
		avviso = "Dati modificati correttamente";
		request.setAttribute("avviso", avviso);
		request.getSession().setAttribute("utente", utente);

	}
	
	protected void doFoto(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("entra nel dopost");
		Part file = request.getPart("file2");
		String file2nome = file.getSubmittedFileName();
		System.out.println("immagine: " + file2nome);
		String uploadPath = "C:/Users/marty/git/nuovocondominio/WebContent/images/" + file2nome;
		System.out.println("upload path: " + uploadPath);
		FileOutputStream fos = new FileOutputStream(uploadPath);
		InputStream is = file.getInputStream();
		byte[] data = new byte[is.available()];
		is.read(data);
		fos.write(data);
		fos.close();
		
	}
}
