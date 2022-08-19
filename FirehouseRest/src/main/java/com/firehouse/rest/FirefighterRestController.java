package com.firehouse.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.firehouse.entity.Firefighter;
import com.firehouse.service.FirefighterService;

@RestController 
@RequestMapping("/api")
public class FirefighterRestController {

	@Autowired 
	private FirefighterService firefighterService;
	
	@GetMapping("/firefighters") 
	public List<Firefighter> getFirefighters(){
		return firefighterService.getFirefighters();
	}
	
	@GetMapping("/firefighter/{fId}")
	public Firefighter getFirefighter(@PathVariable int fId) {
		
		Firefighter theFirefighter = firefighterService.getFirefighter(fId);
		
		if (theFirefighter == null) {
			throw new RuntimeException("Employee id not found - " + fId);
		}
		
		return theFirefighter;
	}
	
	@PostMapping("/firefighters")
	public Firefighter addfirefighter(@RequestBody Firefighter theFirefighter) {
		
		// also just in case they pass an id in JSON ... set id to 0
		// this is to force a save of new item ... instead of update
		
		theFirefighter.setfId(0);
		
		firefighterService.saveFirefighter(theFirefighter);
		
		return theFirefighter;
	}
	
	@PutMapping("/firefighters")
	public Firefighter updateEmployee(@RequestBody Firefighter theFirefighter) {
		
		firefighterService.saveFirefighter(theFirefighter);
		
		return theFirefighter;
	}
	
	@DeleteMapping("/employees/{employeeId}")
	public String deleteFirefighter(@PathVariable int fId) {
		
		Firefighter tempFirefighter = firefighterService.getFirefighter(fId);
		
		// throw exception if null
		
		if (tempFirefighter == null) {
			throw new RuntimeException("That Firefighter id not found - " + fId);
		}
		
		firefighterService.deleteFirefighter(fId);
		
		return "Deleted Firefighter with id: " + fId;
	}
	
}
