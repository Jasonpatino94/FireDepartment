package com.firehouse.rest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class FirefighterRestExceptionHandler {

	@ExceptionHandler
	public ResponseEntity<FirefighterErrorResponse> handleException(FirefighterNotFoundException exc) {
		
		// create CustomerErrorResponse
		
		FirefighterErrorResponse error = new FirefighterErrorResponse(
											HttpStatus.NOT_FOUND.value(),
											exc.getMessage(),
											System.currentTimeMillis());
		
		// return ResponseEntity
		
		return new ResponseEntity<>(error, HttpStatus.NOT_FOUND);
	}
	
	
	// Add another exception handler ... to catch any exception (catch all)

	@ExceptionHandler
	public ResponseEntity<FirefighterErrorResponse> handleException(Exception exc) {
		
		// create CustomerErrorResponse
		
		FirefighterErrorResponse error = new FirefighterErrorResponse(
											HttpStatus.BAD_REQUEST.value(),
											exc.getMessage(),
											System.currentTimeMillis());
		
		// return ResponseEntity
		
		return new ResponseEntity<>(error, HttpStatus.BAD_REQUEST);
	}
}
