package com.firehouse.dao;

import java.util.List;

import com.firehouse.entity.Certification;

public interface CertificationDAO {
	public List<Certification> getAllCertifications();
	public Certification getCertification(int id);
	public void addCertification(Certification cert);
	public void deleteCertification(int id);
}
