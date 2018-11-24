package com.StudyBooster.Entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;
import java.sql.Timestamp;


/**
 * The persistent class for the User database table.
 * 
 */
@Entity
@NamedQuery(name="User.findAll", query="SELECT u FROM User u")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="USER_USEREMAIL_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="USER_USEREMAIL_GENERATOR")
	@Column(name="Email")
	private String email;

	@Column(name="Age")
	private int age;

	private int FName;

	@Column(name="Gender")
	private String gender;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="LastLog")
	private Date lastLog;

	private int LName;

	@Column(name="LocationID")
	private int locationID;

	@Column(name="MainTelNum")
	private String mainTelNum;

	@Temporal(TemporalType.DATE)
	@Column(name="RegisteredDate")
	private Date registeredDate;

	@Column(name="RegisteredTime")
	private Timestamp registeredTime;

	@Column(name="SecondaryTelNum")
	private String secondaryTelNum;

	public User() {
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return this.age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getFName() {
		return this.FName;
	}

	public void setFName(int FName) {
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

	public int getLName() {
		return this.LName;
	}

	public void setLName(int LName) {
		this.LName = LName;
	}

	public int getLocationID() {
		return this.locationID;
	}

	public void setLocationID(int locationID) {
		this.locationID = locationID;
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

	public Timestamp getRegisteredTime() {
		return this.registeredTime;
	}

	public void setRegisteredTime(Timestamp registeredTime) {
		this.registeredTime = registeredTime;
	}

	public String getSecondaryTelNum() {
		return this.secondaryTelNum;
	}

	public void setSecondaryTelNum(String secondaryTelNum) {
		this.secondaryTelNum = secondaryTelNum;
	}

}