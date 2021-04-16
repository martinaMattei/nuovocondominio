package it.exolab.controller;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.exolab.model.Riunione;

public class RiunioneController extends BaseController {

	public RiunioneController(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}

	public void creaRiunione() {

		String motivazione = request.getParameter("motivazione");
		String data_riunione = request.getParameter("data");

		data_riunione = data_riunione.replace("T", " ");
		data_riunione = data_riunione.concat(":00.0");
		Timestamp data = Timestamp.valueOf(data_riunione);
		int id_palazzina = Integer.parseInt(request.getParameter("id_palazzina"));

		Riunione riunione = new Riunione(motivazione, data, id_palazzina);

		riunionecrud.insert(riunione);
		request.getSession().setAttribute("riunione", riunione);

	}

	public void update() {

		int id_palazzina = Integer.parseInt(request.getParameter("id_palazzina"));
		String data_riunione = request.getParameter("data");
		data_riunione = data_riunione.replace("T", " ");
		data_riunione = data_riunione.concat(":00.0");
		Timestamp data = Timestamp.valueOf(data_riunione);
		int n_verbale = Integer.parseInt(request.getParameter("n_verbale"));

		Riunione riunione = new Riunione(id_palazzina, data, n_verbale);

		riunionecrud.update(riunione);
		request.getSession().setAttribute("riunione", riunione);

	}

}
