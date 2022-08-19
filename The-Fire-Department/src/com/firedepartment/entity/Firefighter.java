package com.firedepartment.entity;

import java.util.ArrayList;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "firefighter")
public class Firefighter {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int fId;

	@Column(name = "firstname")
	private String fFirstName;

	@Column(name = "lastname")
	private String fLastName;
	
	@Column(name="ranking") 
	private String fRanking;
	
	@Column(name="years_of_service")
	private int fYos;
	
	@Column(name = "description")
	private String fDescription;

	@Column(name = "dept_num")
	private int fDeptNum;
	
	@ManyToMany
    @JoinTable(
        name = "firefighter_certification", 
        joinColumns = { @JoinColumn(name = "firefighter_id") }, 
        inverseJoinColumns = { @JoinColumn(name = "certification_id") }
        )
	private List<Certification> fCerts;

//	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//	@JoinTable(name = "firefighter_certification", joinColumns = @JoinColumn(name = "firefighter_id"), inverseJoinColumns = @JoinColumn(name = "certification_id"))
//	private List<Certification> fCerts;

	
	public Firefighter() {
		
	}


	public String getfRanking() {
		return fRanking;
	}


	public void setfRanking(String fRanking) {
		this.fRanking = fRanking;
	}


	public int getfYos() {
		return fYos;
	}


	public void setfYos(int fYos) {
		this.fYos = fYos;
	}


	public int getfId() {
		return fId;
	}

	public void setfId(int fId) {
		this.fId = fId;
	}

	public String getfFirstName() {
		return fFirstName;
	}

	public void setfFirstName(String fFirstName) {
		this.fFirstName = fFirstName;
	}

	public String getfLastName() {
		return fLastName;
	}

	public void setfLastName(String fLastName) {
		this.fLastName = fLastName;
	}

	public String getfDescription() {
		return fDescription;
	}

	public void setfDescription(String fDescription) {
		this.fDescription = fDescription;
	}

	public int getfDeptNum() {
		return fDeptNum;
	}

	public void setfDeptNum(int fDeptNum) {
		this.fDeptNum = fDeptNum;
	}
	
	public List<Certification> getfCerts() {
		return fCerts;
	}

	public void setfCerts(List<Certification> fCerts) {
		this.fCerts = fCerts;
	}

}
