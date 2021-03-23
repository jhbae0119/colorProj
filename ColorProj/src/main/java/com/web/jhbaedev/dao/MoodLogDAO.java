package com.web.jhbaedev.dao;

import java.util.Date;

import com.web.jhbaedev.bean.MoodLog;

public interface MoodLogDAO {
	public void insertMoodLog(MoodLog moodlog) throws Exception;
	public MoodLog queryMember(String id, Date date) throws Exception;
}
