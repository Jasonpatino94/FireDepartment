package com.firehouse.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "certification")
public class Certification {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int cId;

	@Column(name = "name")
	private String cName;

	@Column(name = "description")
	private String cDescription;
	
	@ManyToMany(mappedBy = "fCerts")
    private List<Firefighter> firefighters = new ArrayList<Firefighter>();
	
	public Certification() {
		
	}

	public Certification(String cName, String cDescription) {
		super();
		this.cName = cName;
		this.cDescription = cDescription;
	}

	public int getcId() {
		return cId;
	}

	public void setcId(int cId) {
		this.cId = cId;
	}

	public String getcName() {
		return cName;
	}

	public void setcName(String cName) {
		this.cName = cName;
	}

	public String getcDescription() {
		return cDescription;
	}

	public void setcDescription(String cDescription) {
		this.cDescription = cDescription;
	}

}