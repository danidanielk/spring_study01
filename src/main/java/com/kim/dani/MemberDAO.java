package com.kim.dani;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberDAO {

	@Autowired
	private SqlSession ss;

	public void regMember(Member mb, HttpServletRequest req) {

		try {

			MemberMapper mm = ss.getMapper(MemberMapper.class);
			if (mm.regMember(mb) == 1) {
				req.setAttribute("r", "가입완료");
			}

		} catch (Exception e) {
			// TODO: handle exception
			req.setAttribute("r", "가입실패");
		}

	}

	public void login(Member mb, HttpServletRequest req) {

		try {
			List<Member> members = ss.getMapper(MemberMapper.class).login(mb);
			if (members.size() != 0) {
				Member dbM = members.get(0);
				// System.out.println(dbM.getId());

				if (dbM.getPw().equals(mb.getPw())) {
			//		req.setAttribute("rr", "로그인성공");
					req.getSession().setAttribute("loginMember", dbM);
					//req.getSession().setMaxInactiveInterval(600);
				} else {
					req.setAttribute("rr", "로그인실패");
				}
			} 
				else {
				req.setAttribute("rr", "ID, Password 를 확인해주세요.");
			}
		} catch (Exception e) {
			e.printStackTrace();
			req.setAttribute("rr", "Error");
		}

	}

	public void logout(HttpServletRequest req) {
		// TODO Auto-generated method stub
		req.getSession().setAttribute("loginMember", null);
		req.setAttribute("rr", "로그아웃 성공");
	}
	
	public boolean signupcheck(Member mb, HttpServletRequest req) {
		List<Member> m = ss.getMapper(MemberMapper.class).signupcheck(mb);
		
		if (m==null) {
			return true;
			
		}else {
			req.setAttribute("rr", "ID 중복");
			return false;
		}
		
				
			
		
		}
		
	
}
