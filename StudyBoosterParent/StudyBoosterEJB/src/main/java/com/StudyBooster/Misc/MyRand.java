package com.StudyBooster.Misc;

import java.sql.Time;
import java.util.GregorianCalendar;
import java.util.Random;

import javax.inject.Named;

@Named("myRand")
public class MyRand
{

	String SALTCHARS;

	public MyRand()
	{
		SALTCHARS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
	}

	public String randomString(int lenght)
	{
		StringBuilder eventProperty = new StringBuilder();
		Random rnd = new Random();
		while (eventProperty.length() < lenght)
		{
			// length of the random string.
			int index = (int) (rnd.nextFloat() * SALTCHARS.length());
			eventProperty.append(SALTCHARS.charAt(index));
		}

		return eventProperty.toString();
	}

	public String randomString(String saltChars, int lenght)
	{
		StringBuilder eventProperty = new StringBuilder();
		Random rnd = new Random();
		while (eventProperty.length() < lenght)
		{
			// length of the random string.
			int index = (int) (rnd.nextFloat() * saltChars.length());
			eventProperty.append(saltChars.charAt(index));
		}

		return eventProperty.toString();
	}
	
	public int randNum(int min, int max)
	{
		return (new Random()).nextInt((max - min) + 1) + min;
		// return 5;
	}

	public String randomTime()
	{
		final Random random = new Random();
		final int millisInDay = 24 * 60 * 60 * 1000;
		Time time = new Time((long) random.nextInt(millisInDay));

		return time.toString();

	}
	
	@SuppressWarnings("static-access")
	public String randomDate()
	{
		GregorianCalendar gc = new GregorianCalendar();

		int year = randBetween(2018, 2020);

		gc.set(gc.YEAR, year);

		int dayOfYear = randBetween(1, gc.getActualMaximum(gc.DAY_OF_YEAR));

		gc.set(gc.DAY_OF_YEAR, dayOfYear);

		return (gc.get(gc.MONTH) + 1) + "/" + gc.get(gc.DAY_OF_MONTH) + "/" + gc.get(gc.YEAR);
	}

	public int randBetween(int start, int end)
	{
		return start + (int) Math.round(Math.random() * (end - start));
	}
}
