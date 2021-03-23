package com.web.jhbaedev.dao;

import com.web.jhbaedev.bean.Member;


public interface MemberDAO {
	public void insertMember(Member mem) throws Exception;
	public Member queryMember(String id) throws Exception;
	
}
