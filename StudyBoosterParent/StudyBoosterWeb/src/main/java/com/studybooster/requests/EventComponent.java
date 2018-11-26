package com.studybooster.requests;

import javax.inject.Inject;
import javax.inject.Named;


import com.studybooster.current.biz.EventEngine;
import com.studybooster.entities.EVENT;

import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;
import com.studybooster.ejbs.EventEjb;;

//@ManagedBean(name = "eventComponent")
@Named("eventComponent")
@RequestScoped
public class EventComponent implements Serializable 
{
	private static final long serialVersionUID = 1L;

	@EJB
	private EventEjb eventEjb;
	
	private  List<EVENT> eventList;

	private int eventListSize;
	
	public EventComponent(){}
	
	@PostConstruct
	public void CreateEventComponent()
	{
		eventList = eventEjb.getEventList();
		// eventListSize = eventList.size();
	}

	public List<EVENT> getEventList() 
	{
		return eventList;
	}

	public int getEventListSize()
	{
		eventListSize = 10;
		return eventListSize;
	}
	
}
