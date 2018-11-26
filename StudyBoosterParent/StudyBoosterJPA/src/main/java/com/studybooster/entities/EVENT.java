package com.studybooster.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the Event database table.
 * 
 */
@Entity                              // "SELECT c FROM Customer c WHERE c.custid = :custid")
@NamedQuery(name="Event.findAll", query="SELECT e.eventID, e.eventName, e.eventDescription, e.eventDateTime, e.institution.institutionID, e.user.email, e FROM EVENT e  where e.eventID = 22183 ")
@NamedStoredProcedureQueries({
	@NamedStoredProcedureQuery(
								name = "Event.sp_getEvents",
								procedureName = "sp_getEvents",
								parameters = {
										@StoredProcedureParameter(
																	name = "offset1",
																	type = Integer.class,
																	mode = javax.persistence.ParameterMode.IN),
										@StoredProcedureParameter(
																	name = "limit1",
																	type = Integer.class,
																	mode = javax.persistence.ParameterMode.IN) },
								resultSetMappings = "EventMapping")
	
})
@SqlResultSetMappings({
	@SqlResultSetMapping(
							name = "EventMapping",
							entities = { @EntityResult(
														entityClass = com.studybooster.entities.EVENT.class,
														fields = {
																@FieldResult(
																				name = "eventID",
																				column = "EventID"),
																@FieldResult(
																				name = "eventName",
																				column = "EventName"),
																@FieldResult(
																				name = "eventDescription",
																				column = "EventDescription"),
																@FieldResult(
																				name = "eventDateTime",
																				column = "EventDateTime"),
																@FieldResult(
																				name = "institutionID",
																				column = "InstitutionID"),
																@FieldResult(
																				name = "eventCreator",
																				column = "EventCreator") }) })

})
public class EVENT implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="EVENT_EVENTID_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="EVENT_EVENTID_GENERATOR")
	@Column(name="EventID")
	private int eventID;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="EventDateTime")
	private Date eventDateTime;

	@Column(name="EventDescription")
	private String eventDescription;

	@Column(name="EventName")
	private String eventName;

	@Column(name="EventPoolID")
	private int eventPoolID;

	@Column(name="GuessTotalCnt")
	private short guessTotalCnt;

	//bi-directional many-to-one association to Institution
	@ManyToOne
	@JoinColumn(name="InstitutionID")
	private INSTITUTION institution;

	//bi-directional many-to-one association to User
	@ManyToOne
	@JoinColumn(name="EventCreator")
	private USER user;

	//bi-directional many-to-one association to EventReminder
	@OneToMany(mappedBy="event")
	private List<EVENT_REMINDER> eventReminders;

	//bi-directional many-to-one association to EventReservation
	@OneToMany(mappedBy="event")
	private List<EVENT_RESERVATION> eventReservations;

	//bi-directional many-to-one association to EventTopic
	@OneToMany(mappedBy="event")
	private List<EVENT_TOPIC> eventTopics;

	public EVENT() {
	}

	public int getEventID() {
		return this.eventID;
	}

	public void setEventID(int eventID) {
		this.eventID = eventID;
	}

	public Date getEventDateTime() {
		return this.eventDateTime;
	}

	public void setEventDateTime(Date eventDateTime) {
		this.eventDateTime = eventDateTime;
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

	public int getEventPoolID() {
		return this.eventPoolID;
	}

	public void setEventPoolID(int eventPoolID) {
		this.eventPoolID = eventPoolID;
	}

	public short getGuessTotalCnt() {
		return this.guessTotalCnt;
	}

	public void setGuessTotalCnt(short guessTotalCnt) {
		this.guessTotalCnt = guessTotalCnt;
	}

	public INSTITUTION getInstitution() {
		return this.institution;
	}

	public void setInstitution(INSTITUTION institution) {
		this.institution = institution;
	}

	public USER getUser() {
		return this.user;
	}

	public void setUser(USER user) {
		this.user = user;
	}

	public List<EVENT_REMINDER> getEventReminders() {
		return this.eventReminders;
	}

	public void setEventReminders(List<EVENT_REMINDER> eventReminders) {
		this.eventReminders = eventReminders;
	}

	public EVENT_REMINDER addEventReminder(EVENT_REMINDER eventReminder) {
		getEventReminders().add(eventReminder);
		eventReminder.setEvent(this);

		return eventReminder;
	}

	public EVENT_REMINDER removeEventReminder(EVENT_REMINDER eventReminder) {
		getEventReminders().remove(eventReminder);
		eventReminder.setEvent(null);

		return eventReminder;
	}

	public List<EVENT_RESERVATION> getEventReservations() {
		return this.eventReservations;
	}

	public void setEventReservations(List<EVENT_RESERVATION> eventReservations) {
		this.eventReservations = eventReservations;
	}

	public EVENT_RESERVATION addEventReservation(EVENT_RESERVATION eventReservation) {
		getEventReservations().add(eventReservation);
		eventReservation.setEvent(this);

		return eventReservation;
	}

	public EVENT_RESERVATION removeEventReservation(EVENT_RESERVATION eventReservation) {
		getEventReservations().remove(eventReservation);
		eventReservation.setEvent(null);

		return eventReservation;
	}

	public List<EVENT_TOPIC> getEventTopics() {
		return this.eventTopics;
	}

	public void setEventTopics(List<EVENT_TOPIC> eventTopics) {
		this.eventTopics = eventTopics;
	}

	public EVENT_TOPIC addEventTopic(EVENT_TOPIC eventTopic) {
		getEventTopics().add(eventTopic);
		eventTopic.setEvent(this);

		return eventTopic;
	}

	public EVENT_TOPIC removeEventTopic(EVENT_TOPIC eventTopic) {
		getEventTopics().remove(eventTopic);
		eventTopic.setEvent(null);

		return eventTopic;
	}

}