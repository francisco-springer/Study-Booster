package com.StudyBooster.Biz;


import javax.inject.Named;

@Named("eventTopic")
public class EventTopic
{
	int eventTopicId;
	String eventTopicTitle;
	String eventTopicSubtitle;

	public EventTopic()
	{
	}

	public EventTopic(int eventTopicId, String eventTopicTitle, String eventTopicSubtitle)
	{
		this.eventTopicId = eventTopicId;
		this.eventTopicTitle = eventTopicTitle;
		this.eventTopicSubtitle = eventTopicSubtitle;
	}
	
	public int getEventTopicId()
	{
		return eventTopicId;
	}

	public void setEventTopicId(int eventTopicId)
	{
		this.eventTopicId = eventTopicId;
	}

	public String getEventTopicTitle()
	{
		return eventTopicTitle;
	}

	public void setEventTopicTitle(String eventTopicTitle)
	{
		this.eventTopicTitle = eventTopicTitle;
	}

	public String getEventTopicSubtitle()
	{
		return eventTopicSubtitle;
	}

	public void setEventTopicSubtitle(String eventTopicSubtitle)
	{
		this.eventTopicSubtitle = eventTopicSubtitle;
	}
}
