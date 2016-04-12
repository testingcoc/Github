package airways.controller;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import airways.bean.FlightDetailsBean;
import airways.bean.TicketDetailsBean;
import airways.bean.Tickets;
import airways.bean.TicketsBean;
import airways.bean.UserDetailsBean;
import airways.bean.forgotpassbean;
import airways.dao.FlightDao;
import airways.dao.TicketsDao;
import airways.daoimpl.FlightDaoImpl;
import airways.daoimpl.TicketsDaoImpl;
import airways.misc.MultipleServices;
import airways.serviceimpl.Serviceimpl;

@Controller
public class ControllerClass {

	@Autowired
	Serviceimpl serve;
	String passw;
	FlightDao flightdao = new FlightDaoImpl();
	MultipleServices mp=new MultipleServices();
	String id;
	TicketsDao ticketsdao = new TicketsDaoImpl();
	@RequestMapping(value = { "/", "home" }, method = RequestMethod.GET)
	public String showHome(
			@ModelAttribute("checkflight") FlightDetailsBean flightdetails,
			Model model) {
		model.addAttribute("msg", "HELLO WORLD");
		return "index";
	}

	@RequestMapping(value = { "/freshlogin" }, method = RequestMethod.GET)
	public String showLogin(@ModelAttribute("freshcommand") UserDetailsBean udb,HttpSession hs) {

		
		return "freshlogin";
	}

	@RequestMapping(value = "/freshlogin")
	public String Login(@ModelAttribute("freshcommand") UserDetailsBean udb,
			Model model, HttpSession hs) {

		hs.setAttribute("userId", udb.getUserid());
		ArrayList<UserDetailsBean> list = serve.login(udb.getUserid(),
				udb.getUserpassword());
		if (list.size() == 0) {
			return "Fail";
		} else {
			return "redirect:user";
		}

	}

	@RequestMapping(value = "/user")
	public String user(@ModelAttribute("freshcommand") UserDetailsBean udb,
			Model model, HttpSession hs) {
		return "user";
	}
	@RequestMapping(value = "/viewowndetails")
	public String viewowndetails(@ModelAttribute("freshcommand") UserDetailsBean udb,	Model model, HttpSession hs) {
		
		String userid=(String) hs.getAttribute("userId");
		ArrayList<UserDetailsBean> list=serve.viewowndetails(userid);
		model.addAttribute("userdetails",list);
		return "userviewpage";
	}
	@RequestMapping(value = "/updateuserdetails")
	public String updateowndetails(@ModelAttribute("freshcommand") UserDetailsBean udb,	Model model, HttpSession hs) {
		
		System.out.println(udb.getUserid());
		System.out.println(udb.getUsername());
		boolean result=serve.updateowndetails(udb);
		if(result==true)
		{
			return "Success";
		}
		else
		{
			return "Fail";
		}
	}
	@RequestMapping(value = "/viewflightdetails")
	public String viewfiledetails(@ModelAttribute("freshcommand") UserDetailsBean udb,
			Model model, HttpSession hs) {
		String uid=(String) hs.getAttribute("userId");
		ArrayList<TicketsBean> list=serve.viewflightdetails(uid);
		model.addAttribute("userflightdetails",list);
		return "userflightdetails";
	}

	@RequestMapping(value = { "/register" }, method = RequestMethod.GET)
	public String Register(@ModelAttribute("command") UserDetailsBean udb,
			ModelMap model) {
		return "Registration";

	}

	@RequestMapping(value = "/register")
	public String Regis(@ModelAttribute("command") UserDetailsBean udb,
			ModelMap model, HttpSession hs) {

		List<String> a = serve.auto_inc_id();
		String new_user_id;
		String listString = "";

		if (a.size() == 0) {

			new_user_id = "AIR1";
			hs.setAttribute("uid", new_user_id);
			System.out.println(udb.getUseremail());
			mp.sendMail(udb.getUseremail(),"Your UserID is : "+new_user_id);
			hs.setAttribute("email", udb.getUseremail());
		} else {
			for (String s : a) {
				listString = s;
			}
			String numberOnly = listString.replaceAll("[^0-9]", "");
			int increment = Integer.parseInt(numberOnly) + 1;
			new_user_id = "AIR" + increment;
			hs.setAttribute("uid", new_user_id);
			
			mp.sendMail(udb.getUseremail(),"Your UserID is : "+new_user_id);
			hs.setAttribute("email", udb.getUseremail());
		}

		String i = serve.register(udb, new_user_id);
		if (i.equals("success")) {
			return "showuserid";
		} else {
			model.addAttribute("ex", i);
			return "Fail";
		}

	}

	@RequestMapping(value = { "/forgot" }, method = RequestMethod.GET)
	public String forgot(@ModelAttribute("command") forgotpassbean udb,
			ModelMap model) {
		return "forgotpass";
	}

	@RequestMapping(value = { "/", "getpass" }, method = RequestMethod.POST)
	public String getpass(@ModelAttribute("command") forgotpassbean udb,
			ModelMap model) {

		ArrayList<forgotpassbean> list = (ArrayList<forgotpassbean>) serve
				.checkpass(udb.getUserid(), udb.getQues(), udb.getAns());
		if (list.size() == 0) {
			return "Fail";

		}
		for (forgotpassbean ob : list) {
			System.out.println("ansssss : "+ob.getAns());
			System.out.println("passsss : "+ob.getPass());
			System.out.println("useris :  "+ob.getUserid());
			System.out.println("email :   "+ob.getEmail());
			mp.sendMail(ob.getEmail(),"Your user id is : "+ob.getUserid()+" "+"and Password is : "+ ob.getPass());
			model.addAttribute("email", ob.getEmail());
		}
		return "Showpass";
	}

	@RequestMapping(value="/viewmoredetails", method= RequestMethod.GET)
	public String viewmoredetails(@RequestParam(value="ticketno") String ticketno,HttpSession hs,Model model)
	{
		System.out.println(ticketno);
		ArrayList<Tickets> list=serve.viewmoredetails(ticketno);
		model.addAttribute("flightmoreinfo",list);
		return "viewmoredetailspage";
	}
	@RequestMapping(value = "/bookflight")
	public String bookflight(@ModelAttribute("checkfreshflight") FlightDetailsBean flightdetails,Model model, HttpSession hs) {
		
		return "freshloginsearchflights";
	}
	@RequestMapping(value={"/freshflight"},method=RequestMethod.POST)
	public String viewflight(@ModelAttribute ("checkfreshflight") FlightDetailsBean flightdetails, Model model,HttpSession hs){
		
		ArrayList<FlightDetailsBean> flightlist = flightdao.viewflights(flightdetails);
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
		return "freshflight";
	}
	@RequestMapping(value="/freshbook", method= RequestMethod.GET)
	public String book(@RequestParam(value="flightno") String flightno,HttpSession hs)
	{
		hs.setAttribute("flightno",flightno);
		return "redirect:freshuserbooktickets";
	}
	@RequestMapping(value="/freshuserbooktickets",method=RequestMethod.GET)
	public String PassengerInfo(@ModelAttribute("passenger") TicketDetailsBean ticketdetails,Model model,HttpSession hs)
	{
		return "freshuserbooktickets";
	}
	@RequestMapping(value="/freshaddpassenger",method=RequestMethod.POST)
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
		return "redirect:freshbookings";
		
	}
	@RequestMapping(value="/freshbookings",method=RequestMethod.GET)
	public String BookingInfo(Model model,HttpSession hs)
	{
		ArrayList<Tickets> ticketlist = ticketsdao.ViewPassenger((String) hs.getAttribute("ticketno"));
		model.addAttribute("ticketlist",ticketlist);
		return "freshbookings";
	}
	
	
}
