package airways.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import airways.bean.FlightDetailsBean;
import airways.dao.FlightDao;
import airways.daoimpl.FlightDaoImpl;

@Controller
public class AdminController {
	FlightDao flightdao = new FlightDaoImpl();
	
	@RequestMapping(value="/adminlogin",method=RequestMethod.GET)
	public String login(){
	      return "adminlogin";
		}
	
	@RequestMapping(value = "/Alogin")
	public String  login(String adminname, String adminpass) {
	    if (adminname == "admin" && adminpass == "admin" ) {
	        return "adminlogin";
	    }
	    else {
	        return "adminhome";
	    }
	   
	}
	
	@RequestMapping(value={"/adminhome"},method=RequestMethod.GET)
	public String home(){
		return "adminhome";
	}
	@RequestMapping(value={"/viewallflights"},method=RequestMethod.GET)
	public String viewallflights(Model model){
		ArrayList<FlightDetailsBean> flightlist =(ArrayList<FlightDetailsBean>) flightdao.view();
		model.addAttribute("allflightdetails",flightlist);
		return "allflightdetails";
	}
	@RequestMapping(value="/deleteflights", method= RequestMethod.GET)
	public String deleteflights(@RequestParam(value="flightno") String flightno,HttpSession hs)
	{
		flightdao.deleteflights(flightno);
		return "redirect:viewallflights";
	}
	@RequestMapping(value="/updateflights", method= RequestMethod.GET)
	public String updateflights(@RequestParam(value="flightno") String flightno,HttpSession hs,Model model)
	{
		ArrayList<FlightDetailsBean> flightinfo = flightdao.viewflight(flightno);
		model.addAttribute("flightinfo",flightinfo);
		return "updateflight";
	}
	@RequestMapping(value="/updateflightdetails", method= RequestMethod.POST)
	public String updateflightdetails(@ModelAttribute ("flight") FlightDetailsBean flightdetails,HttpSession hs)
	{
		boolean b=flightdao.updateflight(flightdetails);
		if(b==true){
		return "redirect:viewallflights";}
		else{
			return "Fail";
		}
	}
	@RequestMapping(value="/addnewflights", method= RequestMethod.GET)
	public String addflights(@ModelAttribute ("flight") FlightDetailsBean flightdetails,HttpSession hs)
	{
		return "addnewflight";
	}
	@RequestMapping(value="/addflightdetails", method= RequestMethod.POST)
	public String addnewflights(@ModelAttribute ("flight") FlightDetailsBean flightdetails,HttpSession hs)
	{
		boolean bl=flightdao.addflight(flightdetails);
		if(bl==true)
		{
		return "redirect:viewallflights";
		}
		else
		{
			return "Fail";
			
		}
	}
}
