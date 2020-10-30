package br.com.mjv.hq.login.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.mjv.hq.login.model.Login;
import br.com.mjv.hq.login.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	private LoginService service;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView getdata() {

		List<Login> listLogin = service.listarLogin();
		
		//return back to login.jsp
		ModelAndView model = new ModelAndView("login");
		model.addObject("listLogin", listLogin);

		return model;
	}
}