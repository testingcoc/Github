package airways.daoimpl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import airways.bean.FlightDetailsBean;
import airways.bean.TicketDetailsBean;
import airways.bean.Tickets;
import airways.bean.TicketsBean;
import airways.dao.TicketsDao;
import airways.mapper.FlightDetailsMapper;
import airways.mapper.TicketsMapper;

public class TicketsDaoImpl extends TicketsDao{
	private JdbcTemplate jdbctemplate;
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbctemplate = new JdbcTemplate(dataSource);
	}

	private DriverManagerDataSource ds=new DriverManagerDataSource();
	
	public  TicketsDaoImpl  ()
	{	ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/airways");
		ds.setUsername("root");
		ds.setPassword("root");
		jdbctemplate=new JdbcTemplate(ds);
	}
	
	@Override
	public void AddPassenger(TicketDetailsBean ticketsdetails, TicketsBean tickets) {
		String sql="insert into tickets values('"+tickets.getTicketno()+"','"+tickets.getUserid()+"','"+tickets.getFlightno()+"',"+tickets.getFare()+",'"+new SimpleDateFormat("yyyy-MM-dd").format(tickets.getTimeofbooking())+"')";
		jdbctemplate.update(sql);
		
		if(ticketsdetails.getPassengername1().equals("")){}
		else{
		String sql1="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername1()+"',"+ticketsdetails.getPassengerage1()+",'"+ticketsdetails.getPassengertype1()+"','"+ticketsdetails.getPassengergender1()+"')";
		jdbctemplate.update(sql1);
		}
		if(ticketsdetails.getPassengername2().equals("")){}
		else{
		String sql2="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername2()+"',"+ticketsdetails.getPassengerage2()+",'"+ticketsdetails.getPassengertype2()+"','"+ticketsdetails.getPassengergender2()+"')";
		jdbctemplate.update(sql2);
		}
		if(ticketsdetails.getPassengername3().equals("")){}
		else{
		String sql3="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername3()+"',"+ticketsdetails.getPassengerage3()+",'"+ticketsdetails.getPassengertype3()+"','"+ticketsdetails.getPassengergender3()+"')";
		jdbctemplate.update(sql3);
		}
		if(ticketsdetails.getPassengername4().equals("")){}
		else{
		String sql4="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername4()+"',"+ticketsdetails.getPassengerage4()+",'"+ticketsdetails.getPassengertype4()+"','"+ticketsdetails.getPassengergender4()+"')";
		jdbctemplate.update(sql4);
		}
		if(ticketsdetails.getPassengername5().equals("")){}
		else{
		String sql5="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername5()+"',"+ticketsdetails.getPassengerage5()+",'"+ticketsdetails.getPassengertype5()+"','"+ticketsdetails.getPassengergender5()+"')";
		jdbctemplate.update(sql5);
		}
		if(ticketsdetails.getPassengername6().equals("")){}
		else{
		String sql6="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername6()+"',"+ticketsdetails.getPassengerage6()+",'"+ticketsdetails.getPassengertype6()+"','"+ticketsdetails.getPassengergender6()+"')";
		jdbctemplate.update(sql6);
		}
		if(ticketsdetails.getPassengername7().equals("")){}
		else{
		String sql7="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername7()+"',"+ticketsdetails.getPassengerage7()+",'"+ticketsdetails.getPassengertype7()+"','"+ticketsdetails.getPassengergender7()+"')";
		jdbctemplate.update(sql7);
		}
		if(ticketsdetails.getPassengername8().equals("")){}
		else{
		String sql8="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername8()+"',"+ticketsdetails.getPassengerage8()+",'"+ticketsdetails.getPassengertype8()+"','"+ticketsdetails.getPassengergender8()+"')";
		jdbctemplate.update(sql8);
		}
		if(ticketsdetails.getPassengername9().equals("")){}
		else{
		String sql9="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername9()+"',"+ticketsdetails.getPassengerage9()+",'"+ticketsdetails.getPassengertype9()+"','"+ticketsdetails.getPassengergender9()+"')";
		jdbctemplate.update(sql9);
		}
		if(ticketsdetails.getPassengername10().equals("")){}
		else{
		String sql10="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername10()+"',"+ticketsdetails.getPassengerage10()+",'"+ticketsdetails.getPassengertype10()+"','"+ticketsdetails.getPassengergender10()+"')";
		jdbctemplate.update(sql10);
		}
		if(ticketsdetails.getPassengername11().equals("")){}
		else{
		String sql11="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername11()+"',"+ticketsdetails.getPassengerage11()+",'"+ticketsdetails.getPassengertype11()+"','"+ticketsdetails.getPassengergender11()+"')";
		jdbctemplate.update(sql11);
		}
		if(ticketsdetails.getPassengername12().equals("")){}
		else{
		String sql12="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername12()+"',"+ticketsdetails.getPassengerage12()+",'"+ticketsdetails.getPassengertype12()+"','"+ticketsdetails.getPassengergender12()+"')";
		jdbctemplate.update(sql12);
		}
		if(ticketsdetails.getPassengername13().equals("")){}
		else{
		String sql13="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername13()+"',"+ticketsdetails.getPassengerage13()+",'"+ticketsdetails.getPassengertype13()+"','"+ticketsdetails.getPassengergender13()+"')";
		jdbctemplate.update(sql13);
		}
		if(ticketsdetails.getPassengername14().equals("")){}
		else{
		String sql14="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername14()+"',"+ticketsdetails.getPassengerage14()+",'"+ticketsdetails.getPassengertype14()+"','"+ticketsdetails.getPassengergender14()+"')";
		jdbctemplate.update(sql14);
		}
		if(ticketsdetails.getPassengername15().equals("")){}
		else{
		String sql15="insert into tickets_details values('"+ticketsdetails.getTicketno()+"','"+ticketsdetails.getPassengername15()+"',"+ticketsdetails.getPassengerage15()+",'"+ticketsdetails.getPassengertype15()+"','"+ticketsdetails.getPassengergender15()+"')";
		jdbctemplate.update(sql15);
		}
		
	}

	@Override
	public ArrayList<Tickets> ViewPassenger(String ticketno) {
		String sql="select * from tickets_details where ticketno='"+ticketno+"'";
		ArrayList<Tickets> ticketlist = (ArrayList<Tickets>) jdbctemplate.query(sql, new TicketsMapper());
		return ticketlist;
	}

	@Override
	public void DeletePassenger(String passengername) {
		String sql="delete from tickets_details where passengername='"+passengername+"'";
		jdbctemplate.update(sql);
	}

}
