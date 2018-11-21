package com.StudyBooster.Biz;

import java.util.List;


import javax.inject.Named;

@Named("event")
public class Event 
{
	int eventID;
	String eventName;
	String eventDescription;
	String date;
	String time;
	String institution;

	List<EventTopic> eventTopicList;
	
	public Event()
	{
	}

	public Event(int eventID, String eventName, String eventDescription, String date, String time, String institution)
	{
		this.eventID = eventID;
		this.eventName = eventName;
		this.eventDescription = eventDescription;
		this.date = date;
		this.time = time;
		this.institution = institution;
	}

	public List<EventTopic> getEventTopicList()
	{
		return eventTopicList;
	}

	public void setEventTopicList(List<EventTopic> eventTopicList)
	{
		this.eventTopicList = eventTopicList;
	}

	public int getEventID()
	{
		return eventID;
	}

	public void setEventID(int eventID)
	{
		this.eventID = eventID;
	}

	public String getEventName()
	{
		return eventName;
	}

	public void setEventName(String eventName)
	{
		this.eventName = eventName;
	}

	public String getEventDescription()
	{
		return eventDescription;
	}

	public void setEventDescription(String eventDescription)
	{
		this.eventDescription = eventDescription;
	}

	public String getDate()
	{
		return date;
	}

	public void setDate(String date)
	{
		this.date = date;
	}

	public String getTime()
	{
		return time;
	}

	public void setTime(String time)
	{
		this.time = time;
	}

	public String getInstitution()
	{
		return institution;
	}

	public void setInstitution(String institution)
	{
		this.institution = institution;
	}

	
}
