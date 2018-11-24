package com.StudyBooster.Entities;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Time;
import java.util.Date;


/**
 * The persistent class for the Event database table.
 * 
 */
@Entity
@NamedQuery(name="Event.findAll", query="SELECT e FROM Event e")
public class Event implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="EVENT_EVENTID_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="EVENT_EVENTID_GENERATOR")
	@Column(name="EventID")
	private int eventID;

	@Column(name="EventCreator")
	private String eventCreator;

	@Temporal(TemporalType.DATE)
	@Column(name="EventDate")
	private Date eventDate;

	@Column(name="EventDescription")
	private String eventDescription;

	@Column(name="EventName")
	private String eventName;

	@Column(name="EventTime")
	private Time eventTime;

	@Column(name="GuessTotalCnt")
	private int guessTotalCnt;

	@Column(name="InstitutionID")
	private int institutionID;

	public Event() {
	}

	public int getEventID() {
		return this.eventID;
	}

	public void setEventID(int eventID) {
		this.eventID = eventID;
	}

	public String getEventCreator() {
		return this.eventCreator;
	}

	public void setEventCreator(String eventCreator) {
		this.eventCreator = eventCreator;
	}

	public Date getEventDate() {
		return this.eventDate;
	}

	public void setEventDate(Date eventDate) {
		this.eventDate = eventDate;
	}

	public String getEventDescription() {
		return this.eventDescription;
	}

	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}

	public String getEventName() {
		return this.eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public Time getEventTime() {
		return this.eventTime;
	}

	public void setEventTime(Time eventTime) {
		this.eventTime = eventTime;
	}

	public int getGuessTotalCnt() {
		return this.guessTotalCnt;
	}

	public void setGuessTotalCnt(int guessTotalCnt) {
		this.guessTotalCnt = guessTotalCnt;
	}

	public int getInstitutionID() {
		return this.institutionID;
	}

	public void setInstitutionID(int institutionID) {
		this.institutionID = institutionID;
	}

}