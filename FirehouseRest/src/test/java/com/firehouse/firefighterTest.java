package com.firehouse;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.firehouse.dao.FirefighterDAO;
import com.firehouse.entity.Firefighter;

@SpringBootTest(classes = FirehouseRestApplication.class)
public class firefighterTest {

	@Autowired
	private FirefighterDAO firefighterdao;
	
	@Test
	void testDAO(){
		Assertions.assertNotNull(firefighterdao);
	}
	
	@Test
	void findFirefighterById() {
		Firefighter firefighter= firefighterdao.getFirefighter(1);
		Assertions.assertNotNull(firefighter);
		Assertions.assertEquals("Mario", firefighter.getfFirstName());
	}
	
}
