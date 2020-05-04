package com.partha.springbootmongoDB.controllers;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.partha.models.Employee;

@Controller
public class HomeController {
	
	public static final String REST_SERVICE_URI = "http://localhost:8102/api/mongo/emp/";
	
	@RequestMapping("/")
	public ModelAndView showProductDetails()
	{
		ModelAndView mv = new ModelAndView("index");
		RestTemplate restTemplate = new RestTemplate();
		Collection<Employee> employees = restTemplate.getForObject(REST_SERVICE_URI+"/getall", List.class);
		mv.addObject("listOfEmployees",employees);
		mv.addObject("test","test");
		System.out.println(employees);
		return mv;
	}
	
	@RequestMapping("/new")
	public ModelAndView showNewProductPage(Model model) {
		
		ModelAndView mv = new ModelAndView("addEmployee");
	    Employee employee = new Employee();
	    model.addAttribute("employee", employee);
	     
	    return mv;
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveProduct(@ModelAttribute("employee") Employee employee) {
		RestTemplate restTemplate = new RestTemplate();
		List<Employee> employees = Arrays.asList(employee);
		Map<String, String> vars = new HashMap<String, String>();
        vars.put("id", Integer.toString(employee.getId()));
	    restTemplate.postForEntity(REST_SERVICE_URI+"/create", employees, String.class); 
	    System.out.println(employees);
	    return "redirect:/";
	}

}
