package com.web.jhbaedev.dao;

import java.util.Date;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


import com.web.jhbaedev.bean.MoodLog;

@Component
public class MoodLogDAOImpl implements MoodLogDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	
	@Override
	public void insertMoodLog(MoodLog moodlog) throws Exception {
		sqlSession.insert("mapper.moodlog.insertMoodLog", moodlog);
	}

	@Override
	public MoodLog queryMember(String id, Date date) throws Exception {
		return sqlSession.selectOne("mapper.moodlog.selectMood", id);
	}

	
}
