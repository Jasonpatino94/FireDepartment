package com.firedepartment.dao;

import java.util.List;

import com.firedepartment.entity.Certification;

public interface CertificationDAO {
	public List<Certification> getAllCertifications();
	public Certification getCertification(int id);
	public void addCertification(Certification cert);
	public void deleteCertification(int id);
}
