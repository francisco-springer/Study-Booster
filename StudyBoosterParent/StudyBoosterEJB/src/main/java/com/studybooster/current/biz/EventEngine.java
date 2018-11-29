package com.studybooster.current.biz;

//import java.io.Serializable;
//import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

//import javax.inject.Inject;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
//import javax.persistence.Query;
import javax.persistence.StoredProcedureQuery;

// import com.studybooster.old.biz.EventOld;
import com.studybooster.entities.EVENT;
import com.studybooster.entities.EVENT_TOPIC;


@Named("eventEngine")
public class EventEngine 
{
	@PersistenceContext(unitName = "StudyBooster_PU")
	private EntityManager em;
		
	
	public List<EVENT> generateEventList(int offset1, int limit1)
	{		
		StoredProcedureQuery sp = em.createNamedStoredProcedureQuery("Event.sp_getEvents");
		List<EVENT> eventList = Collections.checkedList(sp.setParameter("offset1", offset1).setParameter("limit1", limit1).getResultList(), EVENT.class);
		
		if(eventList != null && eventList.size() > 0)
		{
			List<EVENT_TOPIC> eventTopicList;
			
			int eventid = 0;
			for(EVENT event : eventList)
			{
				eventid = event.getEventID();
				
				sp = em.createNamedStoredProcedureQuery("EventTopic.sp_getEventTopic");
				eventTopicList = Collections.checkedList(sp.setParameter("eventID", 1).getResultList(), EVENT_TOPIC.class);
				
				if(eventTopicList != null && eventTopicList.size() > 0)
				{
					event.setEventTopics(eventTopicList);
				}					
			}
		}

		return eventList;
	}
}
