package it.exolab.controller;

import java.sql.Timestamp;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.exolab.model.Riunione;

public class RiunioneController extends BaseController {

	public RiunioneController(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}

	
public void  creaRiunione() {

		
		String motivazione = request.getParameter("motivazione");
		String data_riunione = request.getParameter("data");
		System.out.println(data_riunione);
		
		data_riunione = data_riunione.replace("T", " ");
		data_riunione = data_riunione.concat(":00.0");
		Timestamp data = Timestamp.valueOf(data_riunione);
		int id_palazzina =Integer.parseInt(request.getParameter("id_palazzina"));
		
		Riunione riunione = new Riunione(motivazione, data, id_palazzina);
		
		
		riunionecrud.insert(riunione);
		request.getSession().setAttribute("riunione",riunione);
		
	}
}
