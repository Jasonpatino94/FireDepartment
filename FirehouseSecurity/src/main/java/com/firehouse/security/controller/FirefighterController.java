package com.firehouse.security.controller;

import java.util.LinkedHashMap;
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

import com.firehouse.security.entity.Certification;
import com.firehouse.security.entity.Firefighter;
import com.firehouse.security.service.FirefighterService;

@Controller
@RequestMapping("/firefighterSecurity")
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
		
		return "Firefighters";
	}
	
	@GetMapping("/addFirefighterForm")
	public String addFirefighterForm(Model theModel) {
		Firefighter firefighter = new Firefighter();
		
		theModel.addAttribute("firefighter", firefighter);
		
		return "firefighterForm";
	}
	
	@PostMapping("/saveFirefighter")
	public String saveFirefighter(@ModelAttribute("firefighter") Firefighter firefighter) {
		firefighterService.saveFirefighter(firefighter);
		
		return "redirect:/firefighterSecurity/list";
	}
	
	@GetMapping("/showUpdateForm") 
	public String showUpdateForm(@RequestParam("fId") int id, Model theModel) {
		Firefighter firefighter = firefighterService.getFirefighter(id);
		
		theModel.addAttribute("firefighter", firefighter);
		
		return "firefighterForm";
	}
	
	@GetMapping("/showCertToFF") 
	public String showCertToFF(Model theModel) {
		// get customers from the dao
				List<Firefighter> firefighters = firefighterService.getFirefighters();
				Map<Integer, String> ffMap = new LinkedHashMap<Integer, String>();
				for(Firefighter firefighter : firefighters) {
					ffMap.put(firefighter.getfId(), firefighter.getfFirstName());
				}
				
				List<Certification> certs = firefighterService.getAllCertifications();
				Map<Integer, String> cMap = new LinkedHashMap<Integer, String>();
				for(Certification cert : certs) {
					cMap.put(cert.getcId(), cert.getcName());
				}
				
				// add the customers to the model
				theModel.addAttribute("firefighters", ffMap);
				theModel.addAttribute("certs", cMap);
				
				// pass the Firefighter_Certification class to the form 
				Firefighter_Certification fc = new Firefighter_Certification();
				theModel.addAttribute("firefighter_certification", fc);
				System.out.println("got everything i needed");
				System.out.println(firefighters.get(0).getfFirstName());
				
				return "AddCertToFF";
	}
	
	@PostMapping("/saveCertToFF")
	public String saveCertToFF(@ModelAttribute("firefighter_certification") Firefighter_Certification fc) {
		System.out.println("i made it here" + fc.getFirefighter_id() +" " + fc.getCertification_id());
		firefighterService.saveCertToFF(fc);
		
		
		return "redirect:/firefighterSecurity/list";
	}
	
	@GetMapping("/deleteFirefighter") 
	public String deleteFirefighter(@RequestParam("fId") int id) {
		firefighterService.deleteFirefighter(id);
		
		return "redirect:/firefighterSecurity/list";
	}
	
}




