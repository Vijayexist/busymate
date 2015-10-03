package com.bizmate.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bizmate.beans.ServiceRequest;

@Controller
public class HelloController {

	@RequestMapping(value = "/display2", method = RequestMethod.GET)
	public String printWelcome(ModelMap model) {

		model.addAttribute("message", "Spring 3 MVC Hello World");
		return "Dashboard";

	}

	@RequestMapping(value = "/dashboard", method = RequestMethod.GET)
	public ModelAndView hello() {

		ModelAndView model = new ModelAndView();
		model.setViewName("Dashboard");

		return model;

	}
	@RequestMapping(value = "/service", method = RequestMethod.GET)
	public ModelAndView serviceRequest(){
		
		ModelAndView model = new ModelAndView();
		model.setViewName("ServiceRequest");
		return model;
		
	}
	
	@RequestMapping(value = "/feedback", method = RequestMethod.GET)
	public ModelAndView getFeedBackDetails(){
		
		ModelAndView model = new ModelAndView();
		model.setViewName("ServiceFeedback");
		return model;
		
	}
	@RequestMapping(value = "/queryassistance", method = RequestMethod.GET)
	public ModelAndView getQueryAssistanceDetails(){
		
		ModelAndView model = new ModelAndView();
		model.setViewName("QueryAssistance");
		return model;
		
	}
	
	@RequestMapping(value = "/queryassistanceForm", method = RequestMethod.GET)
	public ModelAndView getQueryAssistanceDetailsForm(){
		
		ModelAndView model = new ModelAndView();
		model.setViewName("QueryAssistanceForm");
		return model;
		
	}
	

	@RequestMapping(value = "/queryassistanceInlineForm", method = RequestMethod.GET)
	public ModelAndView getQueryAssistanceDetailsInlineForm(){
		
		ModelAndView model = new ModelAndView();
		model.setViewName(" QueryAssistanceInlineForm");
		return model;
		
	}
	
	@RequestMapping(value="/postServiceRequest", method=RequestMethod.POST, consumes="application/json; charset=utf-8")
	public @ResponseBody String postServiceDetails( @ModelAttribute ServiceRequest service,Model model, HttpServletRequest req){
		
		service.setServiceDate(req.getParameter("serviceDate"));;
		service.setComments(req.getParameter("comments"));
		System.out.println(service.getComments());
		return service.getComments()+"date"+service.getServiceDate();
		
	}


}