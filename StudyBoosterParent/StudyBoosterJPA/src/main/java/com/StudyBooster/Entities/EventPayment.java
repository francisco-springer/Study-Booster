package com.StudyBooster.Entities;

import java.io.Serializable;
import javax.persistence.*;
import java.sql.Time;
import java.util.Date;


/**
 * The persistent class for the EventPayment database table.
 * 
 */
@Entity
@NamedQuery(name="EventPayment.findAll", query="SELECT e FROM EventPayment e")
public class EventPayment implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="EVENTPAYMENT_EVENTPAYMENTID_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="EVENTPAYMENT_EVENTPAYMENTID_GENERATOR")
	@Column(name="EventPaymentID")
	private int eventPaymentID;

	@Column(name="EventReservationID")
	private int eventReservationID;

	@Temporal(TemporalType.DATE)
	@Column(name="PaymentDate")
	private Date paymentDate;

	@Column(name="PaymentRequired")
	private byte paymentRequired;

	@Column(name="PaymentTime")
	private Time paymentTime;

	@Column(name="Price")
	private int price;

	@Column(name="TotalPayment")
	private float totalPayment;

	@Column(name="UserEmail")
	private String userEmail;

	public EventPayment() {
	}

	public int getEventPaymentID() {
		return this.eventPaymentID;
	}

	public void setEventPaymentID(int eventPaymentID) {
		this.eventPaymentID = eventPaymentID;
	}

	public int getEventReservationID() {
		return this.eventReservationID;
	}

	public void setEventReservationID(int eventReservationID) {
		this.eventReservationID = eventReservationID;
	}

	public Date getPaymentDate() {
		return this.paymentDate;
	}

	public void setPaymentDate(Date paymentDate) {
		this.paymentDate = paymentDate;
	}

	public byte getPaymentRequired() {
		return this.paymentRequired;
	}

	public void setPaymentRequired(byte paymentRequired) {
		this.paymentRequired = paymentRequired;
	}

	public Time getPaymentTime() {
		return this.paymentTime;
	}

	public void setPaymentTime(Time paymentTime) {
		this.paymentTime = paymentTime;
	}

	public int getPrice() {
		return this.price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public float getTotalPayment() {
		return this.totalPayment;
	}

	public void setTotalPayment(float totalPayment) {
		this.totalPayment = totalPayment;
	}

	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

}