package com.kim.dani;

import java.math.BigDecimal;
import java.util.List;

import com.kim.dani.ulsan.TalkDTO;


public interface MemberMapper {
//회원가입
	public int regMember (Member mb);

//로그인
	public List<Member> login(Member mb);

//울산톡 write
	public int regtalk(TalkDTO td);
	
//울산톡 List
	public List<TalkDTO> selectTalk(TalkDTO td); 
	
//울산톡 Count of List 
	public int UlsanTalkCount(Integer t_n);
	
//울산톡 read
	public TalkDTO readTalk(int t_n);
	
//울산톡 login check
	public List<Member> signupcheck(Member mb);
	
	

	
}

