package com.web.jhbaedev.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.web.jhbaedev.bean.Member;

@Component
public class MemberDAOImpl implements MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}

	@Override
	public void insertMember(Member mem) throws Exception {
		sqlSession.insert("mapper.member.insertMember", mem);
	}

	@Override
	public Member queryMember(String id) throws Exception {
		return sqlSession.selectOne("mapper.member.selectMember", id);
	}
}
