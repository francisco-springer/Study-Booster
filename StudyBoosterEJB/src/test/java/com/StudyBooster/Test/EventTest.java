package com.StudyBooster.Test;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class EventTest
{

	@BeforeClass
	public static void startUp()
	{
		System.out.println("BeforeClass");
	}

	@Before
	public void setup()
	{
		System.out.println("Before");
	}

	@Test
	public void mul()
	{
		System.out.println("Test for mul");
	}

	@Test
	public void div()
	{
		System.out.println("Test for div");
	}

	@After
	public void tearDown()
	{
		System.out.println("After");
	}
	
	@AfterClass
	public static void shutDown()
	{
		System.out.println("AfterClass");
	}
}
