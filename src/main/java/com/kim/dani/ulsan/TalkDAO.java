package com.kim.dani.ulsan;

import java.math.BigDecimal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kim.dani.MemberMapper;


@Service
public class TalkDAO {

	
	@Autowired
	private SqlSession ss;
	//울산톡 write
	public void UlsanTalk (TalkDTO td, HttpServletRequest req) {
		MemberMapper mm = ss.getMapper(MemberMapper.class);
		if(mm.regtalk(td)==1) {
			req.setAttribute("rr", "등록완료");
		}
	}
	
	
	//울산톡 list
	public void UlsanTalkList(TalkDTO td,HttpServletRequest req) {
		List<TalkDTO> talks = ss.getMapper(MemberMapper.class).selectTalk(td);
		req.setAttribute("selectTalk", talks);
//		if(talks.size()==0) {
//			TalkDTO tdd= talks.get(0);
//			req.getSession().setAttribute("selectTalk", tdd);
//		}else {
//			req.setAttribute("rr", "등록실패");
//		}
//		TalkDTO tddd =talks.get(0);
//		req.getSession().setAttribute("count", tddd);
		
	}
	
	//울산톡 count 미완성..
	public void UlsanTalkCount(HttpServletRequest req,int t_n) {	
//	TalkDTO tdd = ss.getMapper(MemberMapper.class).UlsanTalkCount(t_n);
//	if (tdd ==null) {
//		tdd.setT_count(0);
//		return ss.getMapper(MemberMapper.class).UlsanTalkCount(t_n);
		int tddd=ss.getMapper(MemberMapper.class).UlsanTalkCount(t_n);
//		System.out.println("조회수 1 올리기 성공..?");
	}

	
	
	
	//울산톡 read
	public void UlsanTalkRead(HttpServletRequest req,int t_n) {
		//List<TalkDTO> talks= ss.getMapper(MemberMapper.class).readTalk(td);
		//TalkDTO tdd = talks.get(t_n);
		TalkDTO td=ss.getMapper(MemberMapper.class).readTalk(t_n);
		req.setAttribute("readTalk", td);
		 
	
	}
	
}
