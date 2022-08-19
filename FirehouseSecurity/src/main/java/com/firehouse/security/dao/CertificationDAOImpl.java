package com.firehouse.security.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.firehouse.security.entity.Certification;

@Repository 
public class CertificationDAOImpl implements CertificationDAO{
	
	@Autowired
	private EntityManager entityManager;
	
//	@Autowired
//	public CertificationDAOImpl(EntityManager theEntityManager) {
//		entityManager = theEntityManager;
//	}
			
	@Override
	public List<Certification> getAllCertifications() {
		
		// get the current hibernate session
		Session currentSession = entityManager.unwrap(Session.class);
				
		// create a query
		Query<Certification> theQuery = 
				currentSession.createQuery("from Certification", Certification.class);
		
		// execute query and get result list
		List<Certification> certifications = theQuery.getResultList();
				
		// return the results		
		return certifications;
	}

	@Override
	public Certification getCertification(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		
		Certification cert = currentSession.get(Certification.class, id);
		
		return cert;
	}

	@Override
	public void addCertification(Certification cert) {
		Session currentSession = entityManager.unwrap(Session.class);
		currentSession.saveOrUpdate(cert);		
	}

	@Override
	public void deleteCertification(int id) {
		Session currentSession = entityManager.unwrap(Session.class);
		Certification cert = currentSession.get(Certification.class, id);
		currentSession.delete(cert);
	}

	
}