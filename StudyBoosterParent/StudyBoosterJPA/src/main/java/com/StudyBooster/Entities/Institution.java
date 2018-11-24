package com.StudyBooster.Entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.sql.Timestamp;


/**
 * The persistent class for the Institution database table.
 * 
 */
@Entity
@NamedQuery(name="Institution.findAll", query="SELECT i FROM Institution i")
public class Institution implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="INSTITUTION_INSTITUTIONID__GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="INSTITUTION_INSTITUTIONID__GENERATOR")
	@Column(name="InstitutionID")
	private int institutionID;

	@Column(name="InstitutionName")
	private String institutionName;

	@Temporal(TemporalType.DATE)
	@Column(name="InstitutionRegisteredDate")
	private Date institutionRegisteredDate;

	@Column(name="InstitutionRegisteredTime")
	private Timestamp institutionRegisteredTime;

	@Column(name="LocationID")
	private int locationID;

	public Institution() {
	}

	public int getInstitutionID() {
		return this.institutionID;
	}

	public void setInstitutionID(int institutionID) {
		this.institutionID = institutionID;
	}

	public String getInstitutionName() {
		return this.institutionName;
	}

	public void setInstitutionName(String institutionName) {
		this.institutionName = institutionName;
	}

	public Date getInstitutionRegisteredDate() {
		return this.institutionRegisteredDate;
	}

	public void setInstitutionRegisteredDate(Date institutionRegisteredDate) {
		this.institutionRegisteredDate = institutionRegisteredDate;
	}

	public Timestamp getInstitutionRegisteredTime() {
		return this.institutionRegisteredTime;
	}

	public void setInstitutionRegisteredTime(Timestamp institutionRegisteredTime) {
		this.institutionRegisteredTime = institutionRegisteredTime;
	}

	public int getLocationID() {
		return this.locationID;
	}

	public void setLocationID(int locationID) {
		this.locationID = locationID;
	}

}