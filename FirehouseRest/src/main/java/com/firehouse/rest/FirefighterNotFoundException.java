package com.firehouse.rest;

public class FirefighterNotFoundException extends RuntimeException {
	
	public FirefighterNotFoundException() {
		
	}
	
	public FirefighterNotFoundException(String msg) {
		super(msg);
	}

	public FirefighterNotFoundException(Throwable cause) {
		super(cause);
	}

	public FirefighterNotFoundException(String msg, Throwable cause) {
		super(msg, cause);
	}

	public FirefighterNotFoundException(String msg, Throwable cause, boolean enableSuppression,
			boolean writableStackTrace) {
		super(msg, cause, enableSuppression, writableStackTrace);
	}

}
