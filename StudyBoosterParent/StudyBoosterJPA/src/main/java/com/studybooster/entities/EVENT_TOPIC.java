package com.studybooster.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the EventTopic database table.
 * 
 */
@Entity
@NamedQuery(name="EventTopic.findAll", query="SELECT e FROM EVENT_TOPIC e")
@NamedStoredProcedureQueries({
	@NamedStoredProcedureQuery(
								name = "EventTopic.sp_getEventTopic",
								procedureName = "sp_getEventTopic",
								parameters = {
										@StoredProcedureParameter(
																	name = "eventID",
																	type = Integer.class,
																	mode = javax.persistence.ParameterMode.IN) },
								resultSetMappings = "EventTopicMapping")
	
})
@SqlResultSetMappings({
	@SqlResultSetMapping(
							name = "EventTopicMapping",
							entities = { @EntityResult(
														entityClass = com.studybooster.entities.EVENT_TOPIC.class,
														fields = {
																@FieldResult(
																				name = "eventTopicID",
																				column = "EventTopicID"),
																@FieldResult(
																				name = "eventID",
																				column = "eventID"),
																@FieldResult(
																				name = "eventTopic",
																				column = "EventTopic"),
																@FieldResult(
																				name = "eventTopicDesc",
																				column = "EventTopicDesc")}) })

})
public class EVENT_TOPIC implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@SequenceGenerator(name="EVENTTOPIC_EVENTTOPICID_GENERATOR" )
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="EVENTTOPIC_EVENTTOPICID_GENERATOR")
	@Column(name="EventTopicID")
	private int eventTopicID;

	
	@Column(name="EventTopic", length = 20)
	private String eventTopic;

	@Column(name="EventTopicDesc")
	private String eventTopicDesc;

	//bi-directional many-to-one association to Event
	@ManyToOne
	@JoinColumn(name="EventID")
	private EVENT event;

//	@Id
//	@SequenceGenerator(name="EVENTTOPIC_EVENTTOPICID_GENERATOR" )
//	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="EVENTTOPIC_EVENTTOPICID_GENERATOR")
//	@Column(name="EventTopicID")
//	private int eventTopicID;

	public EVENT_TOPIC() {
	}

	public int getEventTopicID() {
		return this.eventTopicID;
	}

	public void setEventTopicID(int eventTopicID) {
		this.eventTopicID = eventTopicID;
	}

	public String getEventTopic() {
		return this.eventTopic;
	}

	public void setEventTopic(String eventTopic) {
		this.eventTopic = eventTopic;
	}

	public String getEventTopicDesc() {
		return this.eventTopicDesc;
	}

	public void setEventTopicDesc(String eventTopicDesc) {
		this.eventTopicDesc = eventTopicDesc;
	}

	public EVENT getEvent() {
		return this.event;
	}

	public void setEvent(EVENT event) {
		this.event = event;
	}

}