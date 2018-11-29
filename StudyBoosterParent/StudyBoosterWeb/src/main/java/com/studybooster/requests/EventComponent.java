package com.studybooster.requests;

//import javax.inject.Inject;
import javax.inject.Named;

//import com.studybooster.current.biz.EventEngine;
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

	private List<EVENT> eventList;

	private int offset1 = 0;
	private int limit1 = 0;

	public EventComponent()
	{
	}

	@PostConstruct
	public void createEventComponent()
	{
		offset1 = 0;
		limit1 = 10;
		
		eventList = eventEjb.getEventList(offset1, limit1);
	}

	public List<EVENT> getEventList()
	{
		return eventList;
	}

	public int getOffset1()
	{
		return offset1;
	}

	public void setOffset1(int offset1)
	{
		this.offset1 = offset1;
	}

	public int getLimit1()
	{
		return limit1;
	}

	public void setLimit1(int limit1)
	{
		this.limit1 = limit1;
	}
}
