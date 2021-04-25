package it.exolab.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.exolab.exception.EntityNotFoundException;
import it.exolab.exception.RiunioneNonTrovataException;
import it.exolab.model.Preventivo;
import it.exolab.model.Riunione;

public class RiunioneController extends BaseController {

	public RiunioneController(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}

	public void creaRiunione() throws ServletException, IOException {

		String motivazione = request.getParameter("motivazione");
		String data_riunione = request.getParameter("data");
		String avviso = "";

		data_riunione = data_riunione.replace("T", " ");
		data_riunione = data_riunione.concat(":00.0");
		Timestamp data = Timestamp.valueOf(data_riunione);
		int id_palazzina = Integer.parseInt(request.getParameter("id_palazzina"));

		Riunione riunione = new Riunione(motivazione, data, id_palazzina);

		riunionecrud.insert(riunione);
		avviso = "Riunione creata correttamente";
		request.getSession().setAttribute("riunione", riunione);
		request.setAttribute("avviso", avviso);

	}

	public void findNumero() throws ServletException, IOException {

		RiunioneController riunioneController = new RiunioneController(request, response);

		int n_verbale = Integer.parseInt(request.getParameter("n_verbale"));
		String errore = "";
		String view = "verbale.jsp";

		Riunione riunione = new Riunione(n_verbale);

		try {
			riunionecrud.findNumero(riunione);
			errore = "Numero Verbale esistente";
			
		} catch (Exception e) {
			riunioneController.update();
			request.getSession().setAttribute("riunione", riunione);
		}

		if (!errore.equals("")) {
			request.setAttribute("errore", errore);
			request.getRequestDispatcher(view).include(request, response);
		}
	}
	
	public void verifica() throws ServletException, IOException {

		RiunioneController riunioneController = new RiunioneController(request, response);

		int n_verbale = Integer.parseInt(request.getParameter("n_verbale"));
		String errore = "";
		String avviso ="";
		String view = "verbale.jsp";

		Riunione riunione = new Riunione(n_verbale);

		try {
			riunionecrud.findNumero(riunione);
			avviso= "Verbale caricato correttamente";
			request.setAttribute("avviso", avviso);
			request.getSession().setAttribute("riunione", riunione);
			riunioneController.redirectRiunione();
			
		} catch (Exception e) {
			errore = "Data o palazzina errati";
		}

		if (!errore.equals("")) {
			request.setAttribute("errore", errore);
			request.getRequestDispatcher(view).include(request, response);
		}
	}

	public void update() throws ServletException, IOException {

		RiunioneController riunioneController = new RiunioneController(request, response);

		int id_palazzina = Integer.parseInt(request.getParameter("id_palazzina"));
		String data_riunione = request.getParameter("data");
		data_riunione = data_riunione.replace("T", " ");
		data_riunione = data_riunione.concat(":00.0");
		Timestamp data = Timestamp.valueOf(data_riunione);
		int n_verbale = Integer.parseInt(request.getParameter("n_verbale"));
		String verbale = request.getParameter("verbale");


		Riunione riunione = new Riunione(id_palazzina, data, n_verbale, verbale);

				riunionecrud.update(riunione);
				request.getSession().setAttribute("riunione", riunione);
				riunioneController.verifica();
	}

	
	public void listaRiunioni() {

		List<Riunione> riunioni = new ArrayList<Riunione>();
		riunioni = riunionecrud.findAll();

		request.getSession().setAttribute("riunioni", riunioni);
	}

	public Riunione verbale() {

		Riunione riunione = new Riunione();
		int id = Integer.valueOf(request.getParameter("id"));
		riunione.setId(id);
		riunione = riunionecrud.find(id);
		request.getSession().setAttribute("riunione", riunione);

		return riunione;

	}

	public void riunioniPalazzina() throws Exception {

		List<Riunione> riunioni = new ArrayList<Riunione>();

		int id_palazzina = Integer.valueOf(request.getParameter("id_palazzina"));

		riunioni = riunionecrud.findPalazzina(id_palazzina);
		request.getSession().setAttribute("riunioni", riunioni);

	}

}
