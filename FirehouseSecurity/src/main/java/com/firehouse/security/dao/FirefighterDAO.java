package com.firehouse.security.dao;

import java.util.List;
import java.util.Map;

import com.firehouse.security.entity.Certification;
import com.firehouse.security.entity.Firefighter;

public interface FirefighterDAO {
	public List<Firefighter> getFirefighters();
	public void saveFirefighter(Firefighter firefighter);
    public Firefighter getFirefighter(int id);
    public List<Certification> getFFCerts(int id);
    public Map<Integer, List<Certification>> getAllFFCerts();
    public void deleteFirefighter(int id);
	

}
