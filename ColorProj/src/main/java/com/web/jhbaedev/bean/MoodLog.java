package com.web.jhbaedev.bean;

import java.util.Date;

public class MoodLog {
	String id;
	Date logdate;
	String mood;
	String moodtext;
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getLogdate() {
		return logdate;
	}
	public void setLogdate(Date logdate) {
		this.logdate = logdate;
	}
	public String getMood() {
		return mood;
	}
	public void setMood(String mood) {
		this.mood = mood;
	}
	public String getMoodtext() {
		return moodtext;
	}
	public void setMoodtext(String moodtext) {
		this.moodtext = moodtext;
	}
	
}
