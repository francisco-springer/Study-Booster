package com.studybooster.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the Institution database table.
 * 
 */
@Entity
@NamedQuery(name="Institution.findAll", query="SELECT i FROM INSTITUTION i")
public class INSTITUTION implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="INSTITUTION_INSTITUTIONID_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="INSTITUTION_INSTITUTIONID_GENERATOR")
	@Column(name="InstitutionID")
	private int institutionID;

	@Column(name="InstitutionName")
	private String institutionName;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="InstitutionRegisteredDateTime")
	private Date institutionRegisteredDateTime;

	//bi-directional many-to-one association to Event
	@OneToMany(mappedBy="institution")
	private List<EVENT> events;

	//bi-directional many-to-one association to Location
	@ManyToOne
	@JoinColumn(name="LocationID")
	private LOCATION location;

	public INSTITUTION() {
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

	public Date getInstitutionRegisteredDateTime() {
		return this.institutionRegisteredDateTime;
	}

	public void setInstitutionRegisteredDateTime(Date institutionRegisteredDateTime) {
		this.institutionRegisteredDateTime = institutionRegisteredDateTime;
	}

	public List<EVENT> getEvents() {
		return this.events;
	}

	public void setEvents(List<EVENT> events) {
		this.events = events;
	}

	public EVENT addEvent(EVENT event) {
		getEvents().add(event);
		event.setInstitution(this);

		return event;
	}

	public EVENT removeEvent(EVENT event) {
		getEvents().remove(event);
		event.setInstitution(null);

		return event;
	}

	public LOCATION getLocation() {
		return this.location;
	}

	public void setLocation(LOCATION location) {
		this.location = location;
	}

}