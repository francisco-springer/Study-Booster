package com.StudyBooster.Entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the Location database table.
 * 
 */
@Entity
@NamedQuery(name="Location.findAll", query="SELECT l FROM Location l")
public class Location implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="LOCATION_LOCATIONID__GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="LOCATION_LOCATIONID__GENERATOR")
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

	public Location() {
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

}