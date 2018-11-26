package com.studybooster.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.List;


/**
 * The persistent class for the Location database table.
 * 
 */
@Entity
@NamedQuery(name="Location.findAll", query="SELECT l FROM LOCATION l")
public class LOCATION implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="LOCATION_LOCATIONID_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="LOCATION_LOCATIONID_GENERATOR")
	@Column(name="LocationID")
	private int locationID;

	@Column(name="LocationCity")
	private String locationCity;

	@Column(name="LocationIndications")
	private String locationIndications;

	@Column(name="LocationLine1")
	private String locationLine1;

	@Column(name="LocationLine2")
	private String locationLine2;

	@Column(name="LocationState")
	private String locationState;

	@Column(name="LocationZip")
	private int locationZip;

	//bi-directional many-to-one association to Institution
	@OneToMany(mappedBy="location")
	private List<INSTITUTION> institutions;

	//bi-directional many-to-one association to User
	@OneToMany(mappedBy="location")
	private List<USER> users;

	public LOCATION() {
	}

	public int getLocationID() {
		return this.locationID;
	}

	public void setLocationID(int locationID) {
		this.locationID = locationID;
	}

	public String getLocationCity() {
		return this.locationCity;
	}

	public void setLocationCity(String locationCity) {
		this.locationCity = locationCity;
	}

	public String getLocationIndications() {
		return this.locationIndications;
	}

	public void setLocationIndications(String locationIndications) {
		this.locationIndications = locationIndications;
	}

	public String getLocationLine1() {
		return this.locationLine1;
	}

	public void setLocationLine1(String locationLine1) {
		this.locationLine1 = locationLine1;
	}

	public String getLocationLine2() {
		return this.locationLine2;
	}

	public void setLocationLine2(String locationLine2) {
		this.locationLine2 = locationLine2;
	}

	public String getLocationState() {
		return this.locationState;
	}

	public void setLocationState(String locationState) {
		this.locationState = locationState;
	}

	public int getLocationZip() {
		return this.locationZip;
	}

	public void setLocationZip(int locationZip) {
		this.locationZip = locationZip;
	}

	public List<INSTITUTION> getInstitutions() {
		return this.institutions;
	}

	public void setInstitutions(List<INSTITUTION> institutions) {
		this.institutions = institutions;
	}

	public INSTITUTION addInstitution(INSTITUTION institution) {
		getInstitutions().add(institution);
		institution.setLocation(this);

		return institution;
	}

	public INSTITUTION removeInstitution(INSTITUTION institution) {
		getInstitutions().remove(institution);
		institution.setLocation(null);

		return institution;
	}

	public List<USER> getUsers() {
		return this.users;
	}

	public void setUsers(List<USER> users) {
		this.users = users;
	}

	public USER addUser(USER user) {
		getUsers().add(user);
		user.setLocation(this);

		return user;
	}

	public USER removeUser(USER user) {
		getUsers().remove(user);
		user.setLocation(null);

		return user;
	}

}