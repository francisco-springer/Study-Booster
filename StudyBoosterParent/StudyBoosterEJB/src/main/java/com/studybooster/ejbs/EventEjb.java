package com.studybooster.ejbs;

import java.io.Serializable;
import java.util.List;
import javax.ejb.Stateless;
import javax.inject.Inject;
import javax.inject.Named;

import com.studybooster.entities.EVENT;

//import com.StudyBooster.Biz.Event;
//import com.studybooster.current.biz.EventEngine;;;

@Stateless
public class EventEjb implements Serializable
{
	private static final long serialVersionUID = 1L;

	@Inject
	private @Named("eventEngine") com.studybooster.current.biz.EventEngine eventEngine;

	public EventEjb(){}

	public List<EVENT> getEventList(int offset1, int limit1)
	{
		return eventEngine.generateEventList(offset1, limit1);		
	}
}
