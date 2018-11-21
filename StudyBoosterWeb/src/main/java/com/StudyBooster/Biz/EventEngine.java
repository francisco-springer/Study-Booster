package com.StudyBooster.Biz;

import java.util.ArrayList;
import java.util.List;


import javax.inject.Inject;
import javax.inject.Named;

import com.StudyBooster.Misc.MyRand;

@Named("eventEngine")
public class EventEngine
{
	List<Event> eventList;

	List<EventTopic>eventTopicList;
	
	int eventTopicId;
	
	@Inject @Named("myRand")
	private  MyRand myRand;
	
	public List<Event> generateEventList()
	{
		eventList = new ArrayList<Event>();

		eventTopicId = 0;

		for (int x = 0; x < 30; x++)
		{
			int len = myRand.randNum(5, 10);
			String eventName = myRand.randomString(len);
			len = myRand.randNum(5, 15);
			String eventDesc = myRand.randomString(len);
			
			String date = myRand.randomDate();
			String time = myRand.randomTime();
			
			len = myRand.randNum(15, 25);
			String institution = myRand.randomString(len);
			
			Event event = new Event(x, eventName, eventDesc, date, time, institution);

			generateEventTopicList();
	
			event.setEventTopicList(eventTopicList);
			
			eventList.add(event);
		}

		return eventList;
	}
	
	private void generateEventTopicList()
	{
		eventTopicList = new ArrayList<EventTopic>();

		int topicLen = myRand.randNum(1, 5);
		
		for (int x = 0; x < topicLen; x++)
		{
			int len = myRand.randNum(5, 10);
			String eventTopicTitle = myRand.randomString(len);
			len = myRand.randNum(5, 15);
			String eventTopicSubtitle = myRand.randomString(len);

			EventTopic eventTopic = new EventTopic(eventTopicId, eventTopicTitle, eventTopicSubtitle);

			eventTopicList.add(eventTopic);

			eventTopicId++;
		}
	}
}
