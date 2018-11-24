package com.StudyBooster.Entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the EventTopic database table.
 * 
 */
@Entity
@NamedQuery(name="EventTopic.findAll", query="SELECT e FROM EventTopic e")
public class EventTopic implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="EVENTTOPIC_EVENTTOPICID__GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="EVENTTOPIC_EVENTTOPICID__GENERATOR")
	@Column(name="EventTopicID")
	private int eventTopicID;

	@Column(name="EventID")
	private int eventID;

	@Column(name="EventTopicSubTitle")
	private String eventTopicSubTitle;

	@Column(name="EventTopicTitle")
	private String eventTopicTitle;

	public EventTopic() {
	}

	public int getEventTopicID() {
		return this.eventTopicID;
	}

	public void setEventTopicID(int eventTopicID) {
		this.eventTopicID = eventTopicID;
	}

	public int getEventID() {
		return this.eventID;
	}

	public void setEventID(int eventID) {
		this.eventID = eventID;
	}

	public String getEventTopicSubTitle() {
		return this.eventTopicSubTitle;
	}

	public void setEventTopicSubTitle(String eventTopicSubTitle) {
		this.eventTopicSubTitle = eventTopicSubTitle;
	}

	public String getEventTopicTitle() {
		return this.eventTopicTitle;
	}

	public void setEventTopicTitle(String eventTopicTitle) {
		this.eventTopicTitle = eventTopicTitle;
	}

}