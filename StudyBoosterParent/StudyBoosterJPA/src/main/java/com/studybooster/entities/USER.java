package com.studybooster.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the User database table.
 * 
 */
@Entity
@NamedQuery(name="User.findAll", query="SELECT u FROM USER u")
public class USER implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="USER_EMAIL_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="USER_EMAIL_GENERATOR")
	@Column(name="Email")
	private String email;

	@Column(name="Age")
	private byte age;

	private String FName;

	@Column(name="Gender")
	private String gender;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="LastLog")
	private Date lastLog;

	private String LName;

	@Column(name="MainTelNum")
	private String mainTelNum;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="RegisteredDate")
	private Date registeredDate;

	@Column(name="SecondaryTelNum")
	private String secondaryTelNum;

	//bi-directional many-to-one association to Event
	@OneToMany(mappedBy="user")
	private List<EVENT> events;

	//bi-directional many-to-one association to EventPayment
	@OneToMany(mappedBy="user")
	private List<EVENT_PAYMENT> eventPayments;

	//bi-directional many-to-one association to EventReminder
	@OneToMany(mappedBy="user")
	private List<EVENT_REMINDER> eventReminders;

	//bi-directional many-to-one association to Location
	@ManyToOne
	@JoinColumn(name="LocationID")
	private LOCATION location;

	public USER() {
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public byte getAge() {
		return this.age;
	}

	public void setAge(byte age) {
		this.age = age;
	}

	public String getFName() {
		return this.FName;
	}

	public void setFName(String FName) {
		this.FName = FName;
	}

	public String getGender() {
		return this.gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getLastLog() {
		return this.lastLog;
	}

	public void setLastLog(Date lastLog) {
		this.lastLog = lastLog;
	}

	public String getLName() {
		return this.LName;
	}

	public void setLName(String LName) {
		this.LName = LName;
	}

	public String getMainTelNum() {
		return this.mainTelNum;
	}

	public void setMainTelNum(String mainTelNum) {
		this.mainTelNum = mainTelNum;
	}

	public Date getRegisteredDate() {
		return this.registeredDate;
	}

	public void setRegisteredDate(Date registeredDate) {
		this.registeredDate = registeredDate;
	}

	public String getSecondaryTelNum() {
		return this.secondaryTelNum;
	}

	public void setSecondaryTelNum(String secondaryTelNum) {
		this.secondaryTelNum = secondaryTelNum;
	}

	public List<EVENT> getEvents() {
		return this.events;
	}

	public void setEvents(List<EVENT> events) {
		this.events = events;
	}

	public EVENT addEvent(EVENT event) {
		getEvents().add(event);
		event.setUser(this);

		return event;
	}

	public EVENT removeEvent(EVENT event) {
		getEvents().remove(event);
		event.setUser(null);

		return event;
	}

	public List<EVENT_PAYMENT> getEventPayments() {
		return this.eventPayments;
	}

	public void setEventPayments(List<EVENT_PAYMENT> eventPayments) {
		this.eventPayments = eventPayments;
	}

	public EVENT_PAYMENT addEventPayment(EVENT_PAYMENT eventPayment) {
		getEventPayments().add(eventPayment);
		eventPayment.setUser(this);

		return eventPayment;
	}

	public EVENT_PAYMENT removeEventPayment(EVENT_PAYMENT eventPayment) {
		getEventPayments().remove(eventPayment);
		eventPayment.setUser(null);

		return eventPayment;
	}

	public List<EVENT_REMINDER> getEventReminders() {
		return this.eventReminders;
	}

	public void setEventReminders(List<EVENT_REMINDER> eventReminders) {
		this.eventReminders = eventReminders;
	}

	public EVENT_REMINDER addEventReminder(EVENT_REMINDER eventReminder) {
		getEventReminders().add(eventReminder);
		eventReminder.setUser(this);

		return eventReminder;
	}

	public EVENT_REMINDER removeEventReminder(EVENT_REMINDER eventReminder) {
		getEventReminders().remove(eventReminder);
		eventReminder.setUser(null);

		return eventReminder;
	}

	public LOCATION getLocation() {
		return this.location;
	}

	public void setLocation(LOCATION location) {
		this.location = location;
	}

}