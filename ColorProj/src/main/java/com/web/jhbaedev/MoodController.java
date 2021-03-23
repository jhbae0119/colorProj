package com.web.jhbaedev;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.web.jhbaedev.bean.Member;

@Controller
public class MoodController {
	
	
	//이쁜캘린더
	  @RequestMapping(value = "/moodTracker", method = RequestMethod.GET) 
	  public String moodLog(Locale locale, Model model) 
	  { return "moodTracker"; }
	 
		/*
		 * //moodTracker의 INPUT 선택시 id,date,mood,text를 MOODLOG DB에 저장하기
		 * 
		 * @RequestMapping(value="/moodLogging", method=RequestMethod.POST) public
		 * ModelAndView moodLog(HttpServletRequest request) { String
		 * id=request.getParameter("id");
		 * 
		 * ModelAndView modelAndView = new ModelAndView(); try { Member
		 * mem=memberDao.queryMember(id); if(mem==null) { throw new Exception(); } else
		 * { if (mem.getPassword().equals(password)) { HttpSession session =
		 * request.getSession(); session.setAttribute("id", id);
		 * //modelAndView.addObject("page", "makeaccount_form"); //로그인되면 template.jsp로
		 * 돌아가고 싶음 } else throw new Exception(); } } catch(Exception e) {
		 * e.printStackTrace(); modelAndView.addObject("page", "login_form"); }
		 * modelAndView.setViewName("template"); return modelAndView; }
		 */
	  
	  
	
	/*
	 * //회색 캘린더
	 * 
	 * @RequestMapping(value = "/moodTracker", method = RequestMethod.GET) public
	 * String calendar(Model model, HttpServletRequest request, DateData dateData){
	 * 
	 * Calendar cal = Calendar.getInstance(); DateData calendarData; //검색 날짜
	 * if(dateData.getDate().equals("")&&dateData.getMonth().equals("")){ dateData =
	 * new DateData(String.valueOf(cal.get(Calendar.YEAR)),String.valueOf(cal.get(
	 * Calendar.MONTH)),String.valueOf(cal.get(Calendar.DATE)),null); } //검색 날짜 end
	 * 
	 * Map<String, Integer> today_info = dateData.today_info(dateData);
	 * List<DateData> dateList = new ArrayList<DateData>();
	 * 
	 * //실질적인 달력 데이터 리스트에 데이터 삽입 시작. //일단 시작 인덱스까지 아무것도 없는 데이터 삽입 for(int i=1;
	 * i<today_info.get("start"); i++){ calendarData= new DateData(null, null, null,
	 * null); dateList.add(calendarData); }
	 * 
	 * //날짜 삽입 for (int i = today_info.get("startDay"); i <=
	 * today_info.get("endDay"); i++) { if(i==today_info.get("today")){
	 * calendarData= new DateData(String.valueOf(dateData.getYear()),
	 * String.valueOf(dateData.getMonth()), String.valueOf(i), "today"); }else{
	 * calendarData= new DateData(String.valueOf(dateData.getYear()),
	 * String.valueOf(dateData.getMonth()), String.valueOf(i), "normal_date"); }
	 * dateList.add(calendarData); }
	 * 
	 * //달력 빈곳 빈 데이터로 삽입 int index = 7-dateList.size()%7;
	 * 
	 * if(dateList.size()%7!=0){
	 * 
	 * for (int i = 0; i < index; i++) { calendarData= new DateData(null, null,
	 * null, null); dateList.add(calendarData); } } System.out.println(dateList);
	 * 
	 * //배열에 담음 model.addAttribute("dateList", dateList); //날짜 데이터 배열
	 * model.addAttribute("today_info", today_info); return "/calendar"; }
	 */
	
	
	
	
	/*
	 * String moodMain(Locale locale, Model model) { // model.addAttribute("page",
	 * "moodboardHappy"); return "moodboardMain"; }
	 */
	
	
	@RequestMapping(value = "/moodboardHappy", method = RequestMethod.GET)
	public String moodHappy(Locale locale, Model model) {
		model.addAttribute("status", "happy"); 
		return "moodBoard";
	}
	
	@RequestMapping(value = "/moodboardBored", method = RequestMethod.GET)
	public String moodBored(Locale locale, Model model) {
		model.addAttribute("status", "bored"); 
		return "moodBoard";
	}
	
	@RequestMapping(value = "/moodboardSad", method = RequestMethod.GET)
	public String moodSad(Locale locale, Model model) {
		model.addAttribute("status", "sad"); 
		return "moodBoard";
	}
	
	@RequestMapping(value = "/moodboardStressed", method = RequestMethod.GET)
	public String moodStressedmood(Locale locale, Model model) {
		model.addAttribute("status", "stressed"); 
		return "moodBoard";
	}
}
