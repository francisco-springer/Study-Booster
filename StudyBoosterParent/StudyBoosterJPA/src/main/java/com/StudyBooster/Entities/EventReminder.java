package com.StudyBooster.Entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the EventReminder database table.
 * 
 */
@Entity
@NamedQuery(name="EventReminder.findAll", query="SELECT e FROM EventReminder e")
public class EventReminder implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="EVENTREMINDER_EVENTREMINDERID_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="EVENTREMINDER_EVENTREMINDERID_GENERATOR")
	@Column(name="EventReminderID")
	private int eventReminderID;

	@Column(name="EventID")
	private int eventID;

	@Column(name="HoursBeforeEvent")
	private int hoursBeforeEvent;

	@Column(name="ReminderFrequency")
	private int reminderFrequency;

	@Column(name="UserEmail")
	private String userEmail;

	public EventReminder() {
	}

	public int getEventReminderID() {
		return this.eventReminderID;
	}

	public void setEventReminderID(int eventReminderID) {
		this.eventReminderID = eventReminderID;
	}

	public int getEventID() {
		return this.eventID;
	}

	public void setEventID(int eventID) {
		this.eventID = eventID;
	}

	public int getHoursBeforeEvent() {
		return this.hoursBeforeEvent;
	}

	public void setHoursBeforeEvent(int hoursBeforeEvent) {
		this.hoursBeforeEvent = hoursBeforeEvent;
	}

	public int getReminderFrequency() {
		return this.reminderFrequency;
	}

	public void setReminderFrequency(int reminderFrequency) {
		this.reminderFrequency = reminderFrequency;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

}