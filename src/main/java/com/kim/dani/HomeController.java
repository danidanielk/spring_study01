package com.kim.dani;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class HomeController {
	
	@Autowired
	private MemberDAO mm;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
	
		
		return "home";
	}
	
	@RequestMapping(value ="signup2.do" ,method=RequestMethod.GET)
	public String signup() {
		
		return "signup";
	}
	@RequestMapping(value ="home.do" ,method=RequestMethod.GET)
	public String home1() {
		
		return "home";
	}
	@RequestMapping(value ="login2.do" ,method=RequestMethod.GET)
	public String login() {
		
		
		return "login";
	}
	@RequestMapping(value="index.do" ,method=RequestMethod.GET)
	public String index() {
	
		
		return "index";
	}
	
	@RequestMapping(value="map.do" ,method=RequestMethod.GET)
	public String test() {
		return"map";
	}
	
	
	
	
	//회원가입
	@RequestMapping(value ="signup.do" ,method=RequestMethod.POST)
	public String signup(Member m,HttpServletRequest req) {
		if (mm.signupcheck(m, req)==false) {
			return"signup";
		}else {
		mm.regMember(m, req);
		return "login";
		}
	}
	
	
	//로그인
	@RequestMapping(value ="login.do" ,method=RequestMethod.POST)
		public String login(Member mb, HttpServletRequest req) {
		mm.login(mb, req);
		if (req.getSession().getAttribute("loginMember") != null) {
			return"map";
		}else {
			return"login";
		}
			
	}
	
		
	
	//로그아웃
	@RequestMapping(value="logout.do" ,method=RequestMethod.GET)
		public String logout(HttpServletRequest req) {
		mm.logout(req);
		
		
		return "login";
	}
	
	
}
