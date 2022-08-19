package com.firehouse.service;

import java.util.List;
import java.util.Map;

import com.firehouse.entity.Certification;
import com.firehouse.entity.Firefighter;
import com.firehouse.rest.Firefighter_Certification;

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
