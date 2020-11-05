package br.com.mjv.hq.admin.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import br.com.mjv.hq.home.model.Hq;
import br.com.mjv.hq.home.service.HomeService;

@Controller
public class AdminController {
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView getdata() {

        List<String> list = getList();

        //return back to admin.jsp
        ModelAndView model = new ModelAndView("admin");
        model.addObject("listAdmin", list);

        return model;

    }

    private List<String> getList() {

        List<String> list = new ArrayList<String>();
        list.add("List A");
        list.add("List B");
        list.add("List C");
        list.add("List D");
        list.add("List 1");
        list.add("List 2");
        list.add("List 3");

        return list;

    }
		
	
}
