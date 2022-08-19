package com.firedepartment.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.firedepartment.dao.CertificationDAO;
import com.firedepartment.entity.Certification;
import com.firedepartment.service.FirefighterService;

@Controller
@RequestMapping("/certification")
public class CertificationController {
	@Autowired
	private FirefighterService firefighterService;
	
	@GetMapping("/list")
	public String listCertification(Model theModel) {
		
		// get customers from the dao
		List<Certification> certifications = firefighterService.getAllCertifications();
		
				
		// add the customers to the model
		theModel.addAttribute("certifications", certifications);
		
		return "CertificationsPage";
	}
	
	@GetMapping("/addCertificationForm")
	public String addCertificationForm(Model theModel) {
		Certification cert = new Certification();
		
		theModel.addAttribute("certification", cert);
		
		return "certification_form";
	}
	
	@PostMapping("/saveCertification")
	public String saveCertification(@ModelAttribute("certification") Certification certification) {
		firefighterService.addCertification(certification);
		
		return "redirect:/certification/list";
	}
	
	@GetMapping("/showUpdateForm") 
	public String showUpdateForm(@RequestParam("cId") int id, Model theModel) {
		Certification certification = firefighterService.getCertification(id);
		
		theModel.addAttribute("certification", certification);
		
		return "certification_form";
	}
	
	@GetMapping("/deleteCertification")
	public String deleteCertification(@RequestParam("cId") int id, Model theModel) {
		firefighterService.deleteCertification(id);
		return "redirect:/certification/list";
	}
}
