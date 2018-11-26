package com.studybooster.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the EventPool database table.
 * 
 */
@Entity
@NamedQuery(name="EventPool.findAll", query="SELECT e FROM EVENT_POOL e")
public class EVENT_POOL implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="EVENTPOOL_EVENTPOOLID_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="EVENTPOOL_EVENTPOOLID_GENERATOR")
	@Column(name="EventPoolID")
	private int eventPoolID;

	@Column(name="EventDescription")
	private String eventDescription;

	@Column(name="EventName")
	private String eventName;

	public EVENT_POOL() {
	}

	public int getEventPoolID() {
		return this.eventPoolID;
	}

	public void setEventPoolID(int eventPoolID) {
		this.eventPoolID = eventPoolID;
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

}