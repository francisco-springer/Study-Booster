package com.studybooster.misc;

import java.sql.Time;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Random;

import javax.inject.Named;

@Named("myRand")
public class MyRand
{

	String SALTCHARS;

	Random rnd;
	
	public MyRand()
	{
		rnd = new Random();
		SALTCHARS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	}

	public String randomString(int lenght)
	{
		StringBuilder eventProperty = new StringBuilder();
		while (eventProperty.length() < lenght)
		{
			int index = (int) (rnd.nextFloat() * SALTCHARS.length());
			eventProperty.append(SALTCHARS.charAt(index));
		}

		return eventProperty.toString();
	}

	public String randomString(String saltChars, int lenght)
	{
		StringBuilder eventProperty = new StringBuilder();
		while (eventProperty.length() < lenght)
		{
			int index = (int) (rnd.nextFloat() * saltChars.length());
			eventProperty.append(saltChars.charAt(index));
		}

		return eventProperty.toString();
	}
	
	public int randNum(int min, int max)
	{
		return (new Random()).nextInt((max - min) + 1) + min;
	}

	public String randomTime()
	{
		final int millisInDay = 24 * 60 * 60 * 1000;
		Time time = new Time((long) rnd.nextInt(millisInDay));

		return time.toString();

	}
	
	public String randomDate()
	{
		GregorianCalendar gc = new GregorianCalendar();

		int year = randBetween(2018, 2020);

		gc.set(Calendar.YEAR, year);

		int dayOfYear = randBetween(1, gc.getActualMaximum(Calendar.DAY_OF_YEAR));

		gc.set(Calendar.DAY_OF_YEAR, dayOfYear);

		return (gc.get(Calendar.MONTH) + 1) + "/" + gc.get(Calendar.DAY_OF_MONTH) + "/" + gc.get(Calendar.YEAR);
	}

	public int randBetween(int start, int end)
	{
		return start + (int) Math.round(Math.random() * (end - start));
	}
}
