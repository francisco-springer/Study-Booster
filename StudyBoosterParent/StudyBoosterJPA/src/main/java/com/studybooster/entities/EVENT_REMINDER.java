package com.studybooster.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the EventReminder database table.
 * 
 */
@Entity
@NamedQuery(name="EventReminder.findAll", query="SELECT e FROM EVENT_REMINDER e")
public class EVENT_REMINDER implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="EVENTREMINDER_EVENTREMINDERID_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="EVENTREMINDER_EVENTREMINDERID_GENERATOR")
	@Column(name="EventReminderID")
	private int eventReminderID;

	@Column(name="HoursBeforeEvent")
	private int hoursBeforeEvent;

	@Column(name="ReminderFrequency")
	private int reminderFrequency;

	//bi-directional many-to-one association to Event
	@ManyToOne
	@JoinColumn(name="EventID")
	private EVENT event;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="UserEmail")
	private USER user;

	public EVENT_REMINDER() {
	}

	public int getEventReminderID() {
		return this.eventReminderID;
	}

	public void setEventReminderID(int eventReminderID) {
		this.eventReminderID = eventReminderID;
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

	public EVENT getEvent() {
		return this.event;
	}

	public void setEvent(EVENT event) {
		this.event = event;
	}

	public USER getUser() {
		return this.user;
	}

	public void setUser(USER user) {
		this.user = user;
	}

}