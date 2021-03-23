package com.web.jhbaedev;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.jhbaedev.bean.Member;
import com.web.jhbaedev.dao.MemberDAO;



@Controller
public class MemberController {
	
	@Autowired
	private MemberDAO memberDao;
	
	public void setMemberDao(MemberDAO memberDao) {
		this.memberDao = memberDao;
	}

	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join(Model model) {
		model.addAttribute("page", "join_form");
		return "join";		
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public ModelAndView join(HttpServletRequest request) {
		ModelAndView modelAndView = new ModelAndView();
		Member mem=null;
		try {
			mem = memberDao.queryMember(request.getParameter("id"));
			if(mem!=null) {
				modelAndView.addObject("err", "아이디 중복");
				modelAndView.addObject("page", "err");
			} else {
				mem = new Member();
				mem.setId(request.getParameter("id"));
				mem.setPassword(request.getParameter("password"));
				mem.setName(request.getParameter("name"));
				mem.setEmail(request.getParameter("email"));
				/* mem.setMood(request.getParameter("mood")); */
				memberDao.insertMember(mem);
				modelAndView.addObject("page", "login_form");	//join완료시 login_form을 담고
			}
		} catch (Exception e) {
			e.printStackTrace();
			modelAndView.addObject("err", "회원가입 오류");
			
			modelAndView.addObject("page", "err");
		}
		modelAndView.setViewName("login"); //회원가입 완료 시 login 페이지로 이동
		return modelAndView;
	}
	
	
	
	 @RequestMapping(value="/login", method=RequestMethod.GET) 
	 public String login(HttpServletRequest request, Model model) { 
		 model.addAttribute("page","login_form"); 
		 return "login"; 
	 }
	 
	 
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request) {
		String id=request.getParameter("id");
		String password=request.getParameter("password");
		ModelAndView modelAndView = new ModelAndView();
		try {
			Member mem=memberDao.queryMember(id);
			if(mem==null) {
				throw new Exception();
			} else {
				if (mem.getPassword().equals(password)) {
					HttpSession session = request.getSession();
					session.setAttribute("id", id);
					//modelAndView.addObject("page", "makeaccount_form"); //로그인되면 template.jsp로 돌아가고 싶음
				} else
					throw new Exception();
			}
		} catch(Exception e) {
			e.printStackTrace();
			modelAndView.addObject("page", "login_form");
		}
		modelAndView.setViewName("template");
		return modelAndView;
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String logout(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		session.removeAttribute("id");
		model.addAttribute("page", "login_form");
		return "template";
	}
}



