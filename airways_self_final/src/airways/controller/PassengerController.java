package airways.controller;

import java.util.ArrayList;
import java.util.Calendar;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import airways.bean.FlightDetailsBean;
import airways.bean.TicketDetailsBean;
import airways.bean.Tickets;
import airways.bean.TicketsBean;
import airways.bean.UserDetailsBean;
import airways.dao.FlightDao;
import airways.dao.TicketsDao;
import airways.daoimpl.FlightDaoImpl;
import airways.daoimpl.TicketsDaoImpl;
import airways.serviceimpl.Serviceimpl;


@Controller
public class PassengerController {
	

	@Autowired
	 Serviceimpl serve;
	String id;
	TicketsDao ticketsdao = new TicketsDaoImpl();
	FlightDao flightdao = new FlightDaoImpl();
	@RequestMapping(value={"/"},method=RequestMethod.GET)
	public String index(@ModelAttribute ("checkflight") FlightDetailsBean flightdetails){
		return "index";
	}
	@RequestMapping(value={"/flight"},method=RequestMethod.POST)
	public String viewflight(@ModelAttribute ("checkflight") FlightDetailsBean flightdetails, Model model,HttpSession hs){
		ArrayList<FlightDetailsBean> flightlist = flightdao.viewflights(flightdetails);
		System.out.println(flightlist);
		model.addAttribute("flightlist",flightlist);
		model.addAttribute("type",flightdetails.getType());
		hs.setAttribute("adultseats",flightdetails.getAdultseats());
		hs.setAttribute("childseats",flightdetails.getChildseats());
		hs.setAttribute("infantseats",flightdetails.getInfantseats());
		if(flightdetails.getType().equals("economy")){
			System.out.println("Economy fare"+flightdetails.getFareeconomy());
			hs.setAttribute("cost",flightdetails.getFareeconomy());
		}
		else{
			System.out.println("Business fare"+flightdetails.getFareeconomy());

			hs.setAttribute("cost",flightdetails.getFarebusiness());
		}
		return "flight";
	}

	@RequestMapping(value="/book", method= RequestMethod.GET)
	public String book(@RequestParam(value="flightno") String flightno,HttpSession hs)
	{
		hs.setAttribute("flightno",flightno);
		return "redirect:login";
	}
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String LoginPage(@ModelAttribute("command") UserDetailsBean udb,Model model,HttpSession hs)
	{
		System.out.println("Entered Login");
		return "login";
	}
	@RequestMapping(value="/loginverify")
	public String Login(@ModelAttribute("command") UserDetailsBean udb,Model model,HttpSession hs)
	{
		System.out.println("Entered Verify");
		hs.setAttribute("userId", udb.getUserid());
		ArrayList<UserDetailsBean> list=serve.login(udb.getUserid(),udb.getUserpassword());
		if(list.size()==0)
		{
		return "Fail";
		}
		else
		{
		return "redirect:userbooktickets";
		}
	}
	@RequestMapping(value="/userbooktickets",method=RequestMethod.GET)
	public String PassengerInfo(@ModelAttribute("passenger") TicketDetailsBean ticketdetails,Model model,HttpSession hs)
	{
		return "userbooktickets";
	}
	@RequestMapping(value="/addpassenger",method=RequestMethod.POST)
	public String AddPassenger(@ModelAttribute("passenger") TicketDetailsBean ticketdetails,Model model,HttpSession hs)
	{
	//	UniqueID uid = new UniqueID();
	//	String id = uid.createID();
		
		ArrayList<String> list=(ArrayList<String>) serve.auto_inc_id_flight();
		System.out.println(list);
		String liststring="";
		if(list.size()==0)
		{
			id="APNR-1";
		}
		else
		{
		for (String s : list) {
			liststring=s;
		}
		String numberOnly = liststring.replaceAll("[^0-9]", "");
		int increment = Integer.parseInt(numberOnly) + 1;
		id ="APNR-"+increment;
		}
		hs.setAttribute("ticketno",id);
		Calendar cal= Calendar.getInstance();
		TicketsBean tickets = new TicketsBean();
		ticketdetails.setTicketno(id);
		tickets.setFlightno((String) hs.getAttribute("flightno"));
		tickets.setUserid((String) hs.getAttribute("userId"));
		int a= (Integer) hs.getAttribute("adultseats");
		int c= (Integer) hs.getAttribute("childseats");
		int i= (Integer) hs.getAttribute("infantseats");
		float cost=  (Float) hs.getAttribute("cost");
		float fare=(a*cost)+(c*cost)+(i*cost) ;
		System.out.println(a);
		System.out.println(c);
		System.out.println(i);
		System.out.println(cost);
		System.out.println(fare);
		tickets.setFare(fare);
		tickets.setTicketno(id);
		tickets.setTimeofbooking(cal.getTime());
		ticketsdao.AddPassenger(ticketdetails, tickets);
		return "redirect:bookings";
		
	}
	@RequestMapping(value="/bookings",method=RequestMethod.GET)
	public String BookingInfo(Model model,HttpSession hs)
	{
		ArrayList<Tickets> ticketlist = ticketsdao.ViewPassenger((String) hs.getAttribute("ticketno"));
		model.addAttribute("ticketlist",ticketlist);
		return "bookings";
	}
	@RequestMapping(value="/deletepassenger", method= RequestMethod.GET)
	public String deletepassenger(@RequestParam(value="passengername") String passengername,HttpSession hs)
	{
		ticketsdao.DeletePassenger(passengername);
		return "redirect:bookings";
	}

}
