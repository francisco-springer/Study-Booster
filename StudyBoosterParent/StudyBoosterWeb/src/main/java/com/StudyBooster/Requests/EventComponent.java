package com.StudyBooster.Requests;

import javax.inject.Inject;
import javax.inject.Named;
import com.StudyBooster.Biz.Event;
import com.StudyBooster.Biz.EventEngine;

import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;

//@ManagedBean(name = "eventComponent")
@Named("eventComponent")
@RequestScoped
public class EventComponent implements Serializable 
{
	private static final long serialVersionUID = 1L;

	@EJB
	private com.StudyBooster.Ejbs.EventEjb eventEjb;
	
	@Inject @Named("eventEngine")
	private  EventEngine eventEngine;
	
	private  List<Event> eventList;

	public EventComponent(){}
	
	@PostConstruct
	public void CreateEventComponent()
	{
		eventList = eventEngine.generateEventList();	
	}

	public List<Event> getEventList() 
	{
		return eventList;
	}

}
