package com.firedepartment.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GeneralController {

	@GetMapping("/aboutUs")
	public String aboutUs() {
		return "AboutUs";
	}
	
	@GetMapping("/mainPage") 
	public String mainPage() {
		return "MainPage";
	}
	
	@GetMapping("/donatePage")
	public String donatePage(){
		return "DonatePage";
	}
	
	@GetMapping("/gallery") 
	public String gallery() {
		return "Gallery";
	}
	
	@GetMapping("/applyPage")
	public String applyPage() {
		return "ApplyPage";
	}
}
