package com.web.jhbaedev;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.web.jhbaedev.dao.MemberDAO;
@Controller
public class AdminController {

	@Autowired
	private MemberDAO memberDao;
	
	public void setMemberDao(MemberDAO memberDao) {
		this.memberDao = memberDao;
	}

	@RequestMapping(value="/adminPage", method=RequestMethod.GET)
	public String admin(Model model) {
		return "adminPage";		
	}
	
	@RequestMapping(value = "/happyImgUpload", method = RequestMethod.GET)
	public String moodHappyImgUpload(Locale locale, Model model) {
		model.addAttribute("status", "happy"); 
		return "uploadForm";
	}
	
	@RequestMapping(value = "/boredImgUpload", method = RequestMethod.GET)
	public String moodBoredImgUpload(Locale locale, Model model) {
		model.addAttribute("status", "bored"); 
		return "uploadForm";
	}
	@RequestMapping(value = "/sadImgUpload", method = RequestMethod.GET)
	public String moodSadImgUpload(Locale locale, Model model) {
		model.addAttribute("status", "sad"); 
		return "uploadForm";
	}
	@RequestMapping(value = "/stressedImgUpload", method = RequestMethod.GET)
	public String moodStressedImgUpload(Locale locale, Model model) {
		model.addAttribute("status", "stressed"); 
		return "uploadForm";
	}
	
}
