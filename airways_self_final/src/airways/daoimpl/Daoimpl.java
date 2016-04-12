package airways.daoimpl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import airways.bean.Tickets;
import airways.bean.TicketsBean;
import airways.bean.UserDetailsBean;
import airways.bean.forgotpassbean;
import airways.dao.Dao;
import airways.mapper.Mapper;
import airways.mapper.MapperForgotPass;
import airways.mapper.Mapper_auto_inc;
import airways.mapper.Mapper_auto_inc_tickets;
import airways.mapper.TicketsBeanMapper;
import airways.mapper.TicketsMapper;
import airways.mapper.UserViewOwnDetailsMapper;

@Repository
public class Daoimpl implements Dao {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}

	String userid;
	String question;
	String answer;
	String gender;
	String passwd;
	List<forgotpassbean> pass;
	int i = 0;

	@Override
	public String Register(UserDetailsBean b, String new_user_id) {

		try {
			String sql = "insert into user_details values('" + new_user_id
					+ "','" + b.getUsername() + "','" + b.getUserpassword()
					+ "','" + b.getGender() + "','" + b.getUserdob() + "','"
					+ b.getUseremail() + "','" + b.getUseraddress() + "','"
					+ b.getUserphone() + "','" + b.getQues() + "','"
					+ b.getAns() + "')";
			jdbcTemplate.update(sql);
			return "success";
		} catch (Exception ex) {
			ex.printStackTrace();
			return "" + ex;
		}

	}

	@Override
	public ArrayList<UserDetailsBean> login(String uid, String password) {

		String sql = "select * from user_details where userid='" + uid
				+ "' and userpassword='" + password + "' ";
		ArrayList<UserDetailsBean> list = (ArrayList<UserDetailsBean>) jdbcTemplate
				.query(sql, new Mapper());
		return list;
	}

	@Override
	public List<String> auto_inc_id() {
		//String sql = "select userid from user_details ORDER By userid DESC LIMIT 1";
		String sql = "select userid from user_details ORDER By CAST(userid AS UNSIGNED),userid";
		List<String> usid = jdbcTemplate.query(sql, new Mapper_auto_inc());
		System.out.println(usid);
		return usid;

	}
	@Override
	public List<String> auto_inc_id_flight() {
		String sql = "select ticketno from tickets_details ORDER By ticketno DESC LIMIT 1";
		List<String> ticketno = jdbcTemplate.query(sql, new Mapper_auto_inc_tickets());
		System.out.println("ticket no is : "+ticketno);
		return ticketno;

	}

	@Override
	public List<forgotpassbean> checkpass(String uid, String ques, String ans) {

		System.out.println(uid + ques + ans);

		
		String sql1 = "select userid,security_question,security_answer,userpassword,useremail from user_details where userid='"+ uid + "'";
		List<forgotpassbean> details = jdbcTemplate.query(sql1,new MapperForgotPass());

		for (forgotpassbean ob : details) {
			userid = ob.getUserid();
			question = ob.getQues();
			answer = ob.getAns();
			passwd=ob.getPass();
		}

		if (question.equals(ques) && answer.equals(ans)) 
		{
			String sql2 = "select userid,security_question,security_answer,userpassword,useremail from user_details where userid='"+ uid + "'";
			pass = jdbcTemplate.query(sql2,new MapperForgotPass());
			return pass;
		}
		else
		{
			return pass;
		}
		
		
	}

	@Override
	public ArrayList<UserDetailsBean> viewowndetails(String uid) {
		System.out.println(uid);
		String sql="select * from user_details where userid='"+uid+"'";
		ArrayList<UserDetailsBean> list=(ArrayList<UserDetailsBean>) jdbcTemplate.query(sql, new UserViewOwnDetailsMapper());
		System.out.println(list);
		return list;
	}

	@Override
	public boolean updateowndetails(UserDetailsBean ub) {
		try{
		String sql="update user_details set username='"+ub.getUsername()+"',gender='"+ub.getGender()+"', userdob='"+ub.getUserdob()+"',useremail='"+ub.getUseremail()+"',useraddress='"+ub.getUseraddress()+"',userphone='"+ub.getUserphone()+"' where userid='"+ub.getUserid()+"'";
		jdbcTemplate.update(sql);
		return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public ArrayList<TicketsBean> viewflightdetails(String uid) {
		String sql="select * from tickets where userid='"+uid+"'";
		ArrayList<TicketsBean> list=(ArrayList<TicketsBean>) jdbcTemplate.query(sql, new TicketsBeanMapper());
		return list;
	}

	@Override
	public ArrayList<Tickets> viewmoredetails(String ticketno) {
		try{
		String sql="select * from tickets_details where ticketno='"+ticketno+"'";
		ArrayList<Tickets> list=(ArrayList<Tickets>) jdbcTemplate.query(sql, new TicketsMapper());
		System.out.println(list);
		return list;
		}
		catch(Exception e)
		{
			e.printStackTrace();
			return null;
		}
		
		
	}

}
