package com.studybooster.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Time;
import java.util.Date;
import java.util.List;


/**
 * The persistent class for the EventReservation database table.
 * 
 */
@Entity
@NamedQuery(name="EventReservation.findAll", query="SELECT e FROM EVENT_RESERVATION e")
public class EVENT_RESERVATION implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="EVENTRESERVATION_EVENTRESERVATIONID_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="EVENTRESERVATION_EVENTRESERVATIONID_GENERATOR")
	@Column(name="EventReservationID")
	private int eventReservationID;

	@Column(name="GuessCnt")
	private int guessCnt;

	@Temporal(TemporalType.DATE)
	@Column(name="ReservationDate")
	private Date reservationDate;

	@Column(name="ReservationTime")
	private Time reservationTime;

	//bi-directional many-to-one association to EventPayment
	@OneToMany(mappedBy="eventReservation")
	private List<EVENT_PAYMENT> eventPayments;

	//bi-directional many-to-one association to Event
	@ManyToOne
	@JoinColumn(name="EventID")
	private EVENT event;

	public EVENT_RESERVATION() {
	}

	public int getEventReservationID() {
		return this.eventReservationID;
	}

	public void setEventReservationID(int eventReservationID) {
		this.eventReservationID = eventReservationID;
	}

	public int getGuessCnt() {
		return this.guessCnt;
	}

	public void setGuessCnt(int guessCnt) {
		this.guessCnt = guessCnt;
	}

	public Date getReservationDate() {
		return this.reservationDate;
	}

	public void setReservationDate(Date reservationDate) {
		this.reservationDate = reservationDate;
	}

	public Time getReservationTime() {
		return this.reservationTime;
	}

	public void setReservationTime(Time reservationTime) {
		this.reservationTime = reservationTime;
	}

	public List<EVENT_PAYMENT> getEventPayments() {
		return this.eventPayments;
	}

	public void setEventPayments(List<EVENT_PAYMENT> eventPayments) {
		this.eventPayments = eventPayments;
	}

	public EVENT_PAYMENT addEventPayment(EVENT_PAYMENT eventPayment) {
		getEventPayments().add(eventPayment);
		eventPayment.setEventReservation(this);

		return eventPayment;
	}

	public EVENT_PAYMENT removeEventPayment(EVENT_PAYMENT eventPayment) {
		getEventPayments().remove(eventPayment);
		eventPayment.setEventReservation(null);

		return eventPayment;
	}

	public EVENT getEvent() {
		return this.event;
	}

	public void setEvent(EVENT event) {
		this.event = event;
	}

}