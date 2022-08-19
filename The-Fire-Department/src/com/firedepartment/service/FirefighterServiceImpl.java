package com.firedepartment.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.firedepartment.controller.Firefighter_Certification;
import com.firedepartment.dao.CertificationDAO;
import com.firedepartment.dao.FirefighterDAO;
import com.firedepartment.entity.Certification;
import com.firedepartment.entity.Firefighter;

@Service
public class FirefighterServiceImpl implements FirefighterService{
	
	@Autowired
	private FirefighterDAO firefighterDAO;
	
	@Autowired
	private CertificationDAO certificationDAO;

	@Override
	@Transactional
	public List<Firefighter> getFirefighters() {
		 return firefighterDAO.getFirefighters();
		
	}

	@Override
	@Transactional
	public void saveFirefighter(Firefighter firefighter) {
		firefighterDAO.saveFirefighter(firefighter);
	}

	@Override
	@Transactional
	public Firefighter getFirefighter(int id) {
		return firefighterDAO.getFirefighter(id);
	}

	@Override
	@Transactional
	public List<Certification> getAllCertifications() {
		List<Certification> certs = certificationDAO.getAllCertifications();
		return certs;
	}

	@Override
	@Transactional
	public Certification getCertification(int id) {
		return certificationDAO.getCertification(id);
	}

	@Override
	@Transactional
	public void addCertification(Certification cert) {
		certificationDAO.addCertification(cert);
		
	}

	@Override
	@Transactional
	public List<Certification> getFFCerts(int id) {
		return firefighterDAO.getFFCerts(id);
	}
	
	@Override
	@Transactional
	public void saveCertToFF(Firefighter_Certification fc) {
		Firefighter ff = firefighterDAO.getFirefighter(fc.getFirefighter_id());
		System.out.println("get firefighter");
		
		Certification cert = certificationDAO.getCertification(fc.getCertification_id());
		System.out.println("got certification");
		
		// add certification to the firefighter
		List<Certification> certs =firefighterDAO.getFFCerts(fc.getFirefighter_id());
		System.out.println("getting list of certs" + certs);
		
		certs.add(cert);
		
		System.out.println("added cert to list of certs");
		
		ff.setfCerts(certs);
		
		System.out.println("set certs to FF");
		
		//save everything to database
		
		firefighterDAO.saveFirefighter(ff);
		System.out.println("saving to database");
	}

	@Override
	@Transactional
	public void deleteFirefighter(int id) {
		firefighterDAO.deleteFirefighter(id);
	}

	@Override
	@Transactional
	public void deleteCertification(int id) {
		certificationDAO.deleteCertification(id);
		
	}

	@Override
	@Transactional
	public Map<Integer, List<Certification>> getAllFFCerts() {
		return firefighterDAO.getAllFFCerts();
		
	}
	
	

}
