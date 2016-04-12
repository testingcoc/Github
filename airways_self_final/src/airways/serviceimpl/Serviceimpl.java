package airways.serviceimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import airways.bean.Tickets;
import airways.bean.TicketsBean;
import airways.bean.UserDetailsBean;
import airways.bean.forgotpassbean;
import airways.daoimpl.Daoimpl;
import airways.service.Service2;

@Service
public class Serviceimpl implements Service2 {

	@Autowired
	 Daoimpl dao;
	
	@Override
	@Transactional
	public String register(UserDetailsBean b,String new_user_id) {

		String res=dao.Register(b,new_user_id);
		return res;
	}

	@Override
	public ArrayList<UserDetailsBean> login(String uid,String password) {

		ArrayList<UserDetailsBean> list=dao.login(uid,password);
		return list;
	}

	@Override
	public List<String> auto_inc_id() {
		List<String> auto_inc=dao.auto_inc_id();
		return auto_inc;
	}

	@Override
	public List<forgotpassbean> checkpass(String uid, String ques, String ans) {
		
		ArrayList<forgotpassbean> list=(ArrayList<forgotpassbean>) dao.checkpass(uid, ques, ans);
		
		return list;
	}

	@Override
	public ArrayList<UserDetailsBean> viewowndetails(String uid) {
		ArrayList<UserDetailsBean> list=dao.viewowndetails(uid);
		System.out.println(list);;
		return list;
	}

	@Override
	public boolean updateowndetails(UserDetailsBean ub) {
		
		boolean result=dao.updateowndetails(ub);
		return result;
	}

	@Override
	public ArrayList<TicketsBean> viewflightdetails(String uid) {
		ArrayList<TicketsBean> list=dao.viewflightdetails(uid);
		return list;
	}

	@Override
	public ArrayList<Tickets> viewmoredetails(String ticketno) {

		ArrayList<Tickets> list=dao.viewmoredetails(ticketno);
		return list;
	}

	@Override
	public List<String> auto_inc_id_flight() {
		List<String> auto_inc_ticket=dao.auto_inc_id_flight();
		return auto_inc_ticket;
	}
}
