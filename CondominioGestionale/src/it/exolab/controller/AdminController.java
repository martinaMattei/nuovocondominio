package it.exolab.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import it.exolab.exception.EntityNotFoundException;
import it.exolab.model.Admin;

public class AdminController extends BaseController {

	public AdminController(HttpServletRequest request, HttpServletResponse response) {
		super(request, response);
	}

	public Admin login() {

		Admin admin = new Admin();

		try {
			String email = request.getParameter("email");
			String password = request.getParameter("password");

			admin.setEmail(email);
			admin.setPassword(password);
			admin = admincrud.findByEmailAndPassword(admin);

		} catch  (EntityNotFoundException e) {
			e.printStackTrace();
		} catch  (Exception e) {
			e.printStackTrace();
		}

		return admin;
	}
}
