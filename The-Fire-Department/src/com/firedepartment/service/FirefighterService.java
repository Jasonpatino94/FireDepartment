package com.firedepartment.service;

import java.util.List;
import java.util.Map;

import com.firedepartment.controller.Firefighter_Certification;
import com.firedepartment.entity.Certification;
import com.firedepartment.entity.Firefighter;

public interface FirefighterService {
	public List<Firefighter> getFirefighters();
	public void saveFirefighter(Firefighter firefighter);
	public Firefighter getFirefighter(int id);
	public List<Certification> getAllCertifications();
	public Certification getCertification(int id);
	public void addCertification(Certification cert);
	public List<Certification> getFFCerts(int id);
	public void saveCertToFF(Firefighter_Certification fc);
    public void deleteFirefighter(int id);
    public void deleteCertification(int id);
    public Map<Integer, List<Certification>> getAllFFCerts();

}
