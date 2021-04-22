package it.exolab.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import java.util.List;

import it.exolab.controller.AdminController;
import it.exolab.controller.RiunioneController;
import it.exolab.controller.UtenteController;
import it.exolab.model.Utente;

/**
 * Servlet implementation class Servlet
 */
@MultipartConfig
@WebServlet("/Servlet")
public class Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "C:/images";

	/**
	 * Default constructor.
	 */
	public Servlet() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RiunioneController riunioneController = new RiunioneController(request, response);
		UtenteController utenteController = new UtenteController(request, response);

		String op = request.getParameter("op");

		if (op.equals("vriunione")) {
			System.out.println("sono nella vriunione");
			riunioneController.verbale();
			riunioneController.redirectVerbale();
		}
		if (op.equals("view")) {
			riunioneController.listaRiunioni();
			riunioneController.redirectLista();
		}
		if (op.equals("accetta")) {
			utenteController.listaUtenti();
			utenteController.redirectAccetta();
		}
		if (op.equals("si")) {
			utenteController.accettaUtente();
			utenteController.listaUtenti();
			utenteController.count();
			utenteController.redirectAccetta();
		}
		if (op.equals("no")) {
			utenteController.delete();
			utenteController.listaUtenti();
			utenteController.count();
			utenteController.redirectAccetta();
		}
		if (op.equals("cancTot")) {
			utenteController.deleteTot();
			utenteController.listaUtenti();
			utenteController.count();
			utenteController.redirectAccetta();
		}
		if (op.equals("accettaTot")) {
			utenteController.accettaTot();
			utenteController.listaUtenti();
			utenteController.count();
			utenteController.redirectAccetta();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		AdminController adminController = new AdminController(request, response);
		UtenteController utenteController = new UtenteController(request, response);
		RiunioneController riunioneController = new RiunioneController(request, response);

		String op = request.getParameter("op");
		if (op.equals("login")) {
			utenteController.login();
			utenteController.redirect();
		}
		if (op.equals("loginAdmin")) {
			adminController.login();
			adminController.redirectAdmin();
		}
		if (op.equals("reg")) {
			utenteController.registrazione();
			utenteController.redirect();
		}
		if (op.equals("riunione")) {
			riunioneController.creaRiunione();
			riunioneController.redirectRiunione();
		}
		if (op.equals("regdel")) {
			utenteController.registrazioneDelegato();
			utenteController.redirect();

		}
		if (op.equals("verbale")) {
			riunioneController.update();
			riunioneController.redirectRiunione();
		}

//		InputStream inputStream = null;
//		System.out.println("servlet");
//		Part file = request.getPart("file2");
//
//		String carta_identita = file.getSubmittedFileName();
//		System.out.println("provaa");
//		System.out.println("selezionata immagine: " + carta_identita);
//		String uploadPath = "C:/Users/franc/git/nuovocondominio/CondominioGestionale/WebContent/images/"
//				+ carta_identita;
//		System.out.println("Path salvataggio " + uploadPath);
//		try {
//			FileOutputStream fos = new FileOutputStream(uploadPath);
//			InputStream is = file.getInputStream();
//			byte[] data = new byte[is.available()];
//			is.read(data);
//			fos.write(data);
//			System.out.println(data);
//			fos.close();
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//		if (file != null) {
//			
//			System.out.println(file.getName());
//			System.out.println(file.getSize());
//			System.out.println(file.getContentType());
//
//			
//
//			inputStream = file.getInputStream();
//		}
//		utenteController.registrazione();
//		utenteController.registrazioneDelegato();
//		System.out.println("ciao");
//	}

	}

}
