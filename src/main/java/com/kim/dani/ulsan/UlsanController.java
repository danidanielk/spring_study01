package com.kim.dani.ulsan;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.kim.dani.MemberMapper;

@Controller
public class UlsanController {

	@Autowired
	private TalkDAO td;
	
	//울산 홈으로 이동
	@RequestMapping(value="/index2UlsanHome.do",method=RequestMethod.GET)
	public String index2() {
		return "Ulsan/index2UlsanHome";
	}
	//울산 게시판 LIST 페이지로 이동
	@RequestMapping(value="/talk.do",method=RequestMethod.GET)
	public String talk(TalkDTO tdd,HttpServletRequest req) {
		td.UlsanTalkList(tdd, req);	
	//	td.UlsanTalkCount(t_n, req);
		return "Ulsan/UlsanTalkList";
	}
	
	//울산 게시판 글쓰기 페이지로 이동
	@RequestMapping(value="/UlsanTalk.do",method=RequestMethod.GET)
	public String talk2() {
		return "Ulsan/UlsanTalk";
	}
	
	//울산 게시판 글작성후 LIST 페이지로 이동
	@RequestMapping(value="/UlsanTalk.do",method=RequestMethod.POST)
	public String talk3(TalkDTO tdd,HttpServletRequest req) {
		//td.UlsanTalkCount(t_n, req);
		td.UlsanTalkList(tdd, req);		
		td.UlsanTalk(tdd, req);
		return"Ulsan/UlsanTalkList";
	}
	
	//울산 게시판 LIST 페이지의 Title 선택시 해당 content 페이지로 이동
	@RequestMapping(value="UlsanTalkRead.do",method=RequestMethod.GET)
	public String talk4(HttpServletRequest req, int t_n) {
		td.UlsanTalkRead(req,t_n);
		td.UlsanTalkCount(req, t_n);
			return"Ulsan/UlsanTalkRead";
			
	}
	
	
	
	
}
