package com.StudyBooster.Entities;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Time;
import java.util.Date;


/**
 * The persistent class for the EventReservation database table.
 * 
 */
@Entity
@NamedQuery(name="EventReservation.findAll", query="SELECT e FROM EventReservation e")
public class EventReservation implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="EVENTRESERVATION_EVENTRESERVATIONID__GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="EVENTRESERVATION_EVENTRESERVATIONID__GENERATOR")
	@Column(name="EventReservationID")
	private int eventReservationID;

	@Column(name="EventID")
	private int eventID;

	@Column(name="GuessCnt")
	private int guessCnt;

	@Temporal(TemporalType.DATE)
	@Column(name="ReservationDate")
	private Date reservationDate;

	@Column(name="ReservationTime")
	private Time reservationTime;

	public EventReservation() {
	}

	public int getEventReservationID() {
		return this.eventReservationID;
	}

	public void setEventReservationID(int eventReservationID) {
		this.eventReservationID = eventReservationID;
	}

	public int getEventID() {
		return this.eventID;
	}

	public void setEventID(int eventID) {
		this.eventID = eventID;
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

}