package com.StudyBooster.Ejbs;

import java.io.Serializable;
import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.inject.Named;

//import com.StudyBooster.Biz.Event;
//import com.StudyBooster.Biz.EventEngine;

@Stateless
public class EventEjb implements Serializable
{
	private static final long serialVersionUID = 1L;

	@Inject
	private @Named("eventEngine") com.StudyBooster.Biz.EventEngine eventEngine;

	public EventEjb(){}

	public List<com.StudyBooster.Biz.Event> getEventList()
	{
		return eventEngine.generateEventList();		
	}
}
