package com.firehouse.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
//import org.springframework.transaction.annotation.Transactional;

import com.firehouse.entity.Certification;
import com.firehouse.entity.Firefighter;

@Repository
public class FirefighterDAOImpl implements FirefighterDAO {


	// define field for entity manager
	private EntityManager entityManager;
	
	// set up constructor injection
	@Autowired
	public FirefighterDAOImpl(EntityManager theEntityManager) {
		entityManager = theEntityManager;
	}
			
	@Override
	public List<Firefighter> getFirefighters() {
		
		// get the current hibernate session
		Session currentSession = entityManager.unwrap(Session.class);
				
		// create a query
		Query<Firefighter> theQuery = 
				currentSession.createQuery("from Firefighter", Firefighter.class);
		
		// execute query and get result list
		List<Firefighter> firefighters = theQuery.getResultList();
				
		// return the results		
		return firefighters;
	}

	@Override
	public void saveFirefighter(Firefighter firefighter) {
		Session currentSession = entityManager.unwrap(Session.class);
		
		currentSession.saveOrUpdate(firefighter);
	}

	@Override
	public Firefighter getFirefighter(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		
		Firefighter firefighter = currentSession.get(Firefighter.class, id);
		
		return firefighter;
	}

	@Override
	public List<Certification> getFFCerts(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		List<Certification> certs = currentSession.get(Firefighter.class, id).getfCerts();
		return certs;
	}

	@Override
	public void deleteFirefighter(int id) {
		//grabbing one firefighter out of session
		Firefighter ff = getFirefighter(id);
		//creating session
		Session currentSession = entityManager.unwrap(Session.class);
		//deleting the firefighter
		currentSession.delete(ff);
	}

	@Override
	public Map<Integer, List<Certification>> getAllFFCerts() {
		Session currentSession = entityManager.unwrap(Session.class);
		// create a query to get all firefighters
		Query<Firefighter> theQuery = currentSession.createQuery("from Firefighter", Firefighter.class);
		List<Firefighter> firefighters = theQuery.getResultList();
		
		//create a map to hold all the ID's of firefighters and their Certifications
		Map<Integer, List<Certification>> ffCertMap = new HashMap<Integer, List<Certification>>();
		
		//helper variables for the loop
		Integer id = null;
		List<Certification> certList = new ArrayList<Certification>();
		
		//loop through each firefighters 
		for (Firefighter firefighter: firefighters) {
			//set id to the current firefighter id
			id = firefighter.getfId();
			//loop through all firefighter certifications 
			for(Certification cert: firefighter.getfCerts()) {
				//add the cert to the list 
				certList.add(cert);
			}
			//put the ID and list of certifications in the Map 
			ffCertMap.put(id, certList);
			//reset the certList 
			certList = new ArrayList<Certification>();
		}
		
		return ffCertMap;
	}

}






