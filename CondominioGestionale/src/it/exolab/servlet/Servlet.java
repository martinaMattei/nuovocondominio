package it.exolab.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.exolab.controller.AdminController;
import it.exolab.controller.RiunioneController;
import it.exolab.controller.UtenteController;
import it.exolab.model.Utente;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Servlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AdminController adminController = new AdminController(request,response);
		UtenteController utenteController = new UtenteController(request, response);
		RiunioneController riunioneController = new RiunioneController(request, response);
		
		String op = request.getParameter("op");
		if(op.equals("login")) {
		    utenteController.login();
			utenteController.redirect();
		}
		if(op.equals("loginAdmin")) {
			adminController.login();
			adminController.redirectAdmin();
		}
		if(op.equals("reg")) {
			utenteController.registrazione();
			utenteController.redirect();
		}
		if(op.equals("riunione")) {
			riunioneController.creaRiunione();
			riunioneController.redirectRiunione();
		}
		if(op.equals("regdel")) {
			utenteController.registrazioneDelegato();
			utenteController.redirect();
		}
		if(op.equals("verbale")) {
			riunioneController.update();
			riunioneController.redirectRiunione();
		}
		if(op.equals("view")) {
			riunioneController.listaRiunioni();
			riunioneController.redirectLista();
		}
	}

}
