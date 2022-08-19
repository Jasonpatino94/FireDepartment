package com.firedepartment.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.firedepartment.entity.Certification;
import com.firedepartment.entity.Firefighter;
import com.firedepartment.service.FirefighterService;

@Controller
@RequestMapping("/firefighter")
public class FirefighterController {

	// need to inject the customer dao
	@Autowired
	private FirefighterService firefighterService;
	

	
	@GetMapping("/list")
	public String listFirefighters(Model theModel) {
		
		// get customers from the dao
		List<Firefighter> firefighters = firefighterService.getFirefighters();
		Map<Integer, List<Certification>> certList = firefighterService.getAllFFCerts();
		
				
		// add the customers to the model
		theModel.addAttribute("firefighters", firefighters);
		theModel.addAttribute("certificates", certList);
		
		return "OurMembers";
	}
	
	@GetMapping("/addFirefighterForm")
	public String addFirefighterForm(Model theModel) {
		Firefighter firefighter = new Firefighter();
		
		theModel.addAttribute("firefighter", firefighter);
		
		return "firefighter_form";
	}
	
	@PostMapping("/saveFirefighter")
	public String saveFirefighter(@ModelAttribute("firefighter") Firefighter firefighter) {
		firefighterService.saveFirefighter(firefighter);
		
		return "redirect:/firefighter/list";
	}
	
	@GetMapping("/showUpdateForm") 
	public String showUpdateForm(@RequestParam("fId") int id, Model theModel) {
		Firefighter firefighter = firefighterService.getFirefighter(id);
		
		theModel.addAttribute("firefighter", firefighter);
		
		return "firefighter_form";
	}
	
	@GetMapping("/showCertToFF") 
	public String showCertToFF(Model theModel) {
		// get customers from the dao
				List<Firefighter> firefighters = firefighterService.getFirefighters();
				
				List<Certification> certs = firefighterService.getAllCertifications();	
				// add the customers to the model
				theModel.addAttribute("firefighters", firefighters);
				theModel.addAttribute("certs", certs);
				
				// pass the Firefighter_Certification class to the form 
				Firefighter_Certification fc = new Firefighter_Certification();
				theModel.addAttribute("firefighter_certification", fc);
				
				return "add_cert_to_ff";
	}
	
	@PostMapping("/saveCertToFF")
	public String saveCertToFF(@ModelAttribute("firefighter_certification") Firefighter_Certification fc) {
		firefighterService.saveCertToFF(fc);
		
		
		return "redirect:/firefighter/list";
	}
	
	@GetMapping("/deleteFirefighter") 
	public String deleteFirefighter(@RequestParam("fId") int id) {
		firefighterService.deleteFirefighter(id);
		
		return "redirect:/firefighter/list";
	}
	
}




