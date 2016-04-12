package airways.dao;

import java.util.ArrayList;
import java.util.List;

import airways.bean.Tickets;
import airways.bean.TicketsBean;
import airways.bean.UserDetailsBean;
import airways.bean.forgotpassbean;

public interface Dao {

	public abstract ArrayList<UserDetailsBean> login(String uid,String password);
	public abstract String Register(UserDetailsBean b,String new_user_id);
	public abstract List<String> auto_inc_id();
	public abstract List<String> auto_inc_id_flight();
	public abstract List<forgotpassbean> checkpass(String uid,String ques,String ans);
	public abstract ArrayList<UserDetailsBean> viewowndetails(String uid);
	public abstract boolean updateowndetails(UserDetailsBean ub);
	public abstract ArrayList<TicketsBean> viewflightdetails(String uid);
	public abstract ArrayList<Tickets> viewmoredetails(String ticketno);
	
	
	
	
}
