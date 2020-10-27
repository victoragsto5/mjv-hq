package br.com.mjv.hq.home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.mjv.hq.home.model.Hq;
import br.com.mjv.hq.home.service.HomeService;

@Controller
public class HomeController {
	
	@Autowired
	private HomeService service;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public ModelAndView getdata() {

		List<Hq> listHQ = service.listarHQs();
		
		//return back to home.jsp
		ModelAndView model = new ModelAndView("home");
		model.addObject("listHQ", listHQ);

		return model;

	}
	
	@RequestMapping(value = "/home2", method = RequestMethod.GET)
	public ModelAndView getdata2() {
		
		List<Hq> listHQ = service.listarHQs();
		
		//return back to home.jsp
		ModelAndView model = new ModelAndView("home2");
		model.addObject("listHQ", listHQ);
		
		return model;
		
	}
}
