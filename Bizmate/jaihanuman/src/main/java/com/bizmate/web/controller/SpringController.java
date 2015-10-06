package com.bizmate.web.controller;

import java.io.IOException;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.codehaus.jackson.type.TypeReference;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.bizmate.beans.Customer;
import com.bizmate.beans.ServiceFeedback;
import com.bizmate.beans.ServiceRequest;
import com.bizmate.bl.ServiceFeedbackbl;
import com.bizmate.bl.ServiceRequestbl;

@Controller

public class SpringController {
	@Autowired
	ServiceRequestbl bl;
	@Autowired
	ServiceFeedbackbl blf;

	public ServiceFeedbackbl getBlf() {
		return blf;
	}

	public void setBlf(ServiceFeedbackbl blf) {
		this.blf = blf;
	}

	public ServiceRequestbl getBl() {
		return bl;
	}

	public void setBl(ServiceRequestbl bl) {
		this.bl = bl;
	}

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
	public String serviceRequest(Model mv){
		ServiceRequest service= new ServiceRequest();
		
		
		service=bl.getServiceRequest("12345");
		
		mv.addAttribute("servicebean", service);
		
		return  "ServiceRequest";
		//	model.setViewName("");
	}
	
	
	/*
	@RequestMapping(value = "form", method = RequestMethod.GET)
	public String  showForm(Model model) {

		ServiceRequest service= new ServiceRequest();
		service.setVehicleId("TS102edsj34");
		service=bl.getServiceRequest("12345");
		model.addAttribute("serviceBean", service);
		return  "ServiceRequest";

	}*/

	
	/* @RequestMapping(value="/get", method=RequestMethod.GET)
	    public String prepareVoterBean(Model model, @RequestParam String voterID) {
	        ...
	        VoterBean questions = service.getQuestionBean(voterID);
	        model.addAttribute("questions", questions);
	        return "questionPage";
	    }
	*/
	
	
	@RequestMapping(value = "/feedback", method = RequestMethod.GET)
	public String getFeedBackDetails(Model model){
		ServiceFeedback servicefeed= new ServiceFeedback();
		
		servicefeed=blf.getServiceFeed();
		model.addAttribute("serviceFeedPost",servicefeed);
		return "ServiceFeedback";
		
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
	public @ResponseBody String postServiceDetails(@RequestParam("serviceDate") String serviceDate, @RequestParam("comments") String comments){

		System.out.println("data="+serviceDate+":comments="+comments);
		return "data="+serviceDate+":comments="+comments;
		
	}

	@RequestMapping(value="/postServiceFeed", method=RequestMethod.POST, consumes="application/json; charset=utf-8")
	public @ResponseBody String postServiceDetails(@RequestParam("complaint") String complaint, @RequestParam("feed") String feed,@RequestParam("improveFeed") String improveFeed, @RequestParam("rating") String rating){

		System.out.println("complaint="+complaint+":feed="+feed+":improveFeed="+improveFeed+":rating="+rating);
		return "complaint="+complaint+":feed="+feed+":improveFeed="+improveFeed+":rating="+rating;
		
	}
	
	
	@RequestMapping(value = "/postjson", method = RequestMethod.POST, produces="application/json", consumes="application/json")
	@ResponseBody
	public String post(@RequestBody String json) throws JsonGenerationException, JsonMappingException, IOException {
 	    ObjectMapper mapper = new ObjectMapper();
 	   Customer c=new Customer();
	    try {
			c = mapper.readValue(json, Customer.class);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	    //do some things with json, put some header information in json
	    return mapper.writeValueAsString(c);
	}

}