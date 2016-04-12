package airways.daoimpl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.text.SimpleDateFormat;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.stereotype.Repository;

import airways.bean.FlightDetailsBean;
import airways.bean.UserDetailsBean;
import airways.dao.FlightDao;
import airways.mapper.FlightDetailsMapper;
import airways.mapper.Mapper;

@Repository

public class FlightDaoImpl extends FlightDao {


	private JdbcTemplate jdbctemplate;
	@Autowired
	public void setDataSource(DataSource dataSource) {
		this.jdbctemplate = new JdbcTemplate(dataSource);
	}

	private DriverManagerDataSource ds=new DriverManagerDataSource();
	
	public  FlightDaoImpl  ()
	{	ds.setDriverClassName("com.mysql.jdbc.Driver");
		ds.setUrl("jdbc:mysql://localhost:3306/airways");
		ds.setUsername("root");
		ds.setPassword("root");
		jdbctemplate=new JdbcTemplate(ds);
	}
	
	

	@Override
	public List<FlightDetailsBean> view() {
		
		String sql="select * from flight_details";
		List<FlightDetailsBean>e3 = jdbctemplate.query(sql, new FlightDetailsMapper());
		return e3 ;
	}

	@Override
	public ArrayList<FlightDetailsBean> viewflights(FlightDetailsBean flightdetails) {
		int passengerseat=flightdetails.getAdultseats()+flightdetails.getChildseats();
		System.out.println(passengerseat);
		String sql="select * from flight_details where startingcity='"+flightdetails.getStartingcity()+"'and endingcity='"+flightdetails.getEndingcity()+"'and depaturetime='"+flightdetails.getDeparturetime()+"' and seats>="+passengerseat+"";
		ArrayList<FlightDetailsBean> flightlist = (ArrayList<FlightDetailsBean>)jdbctemplate.query(sql,new FlightDetailsMapper());
		return flightlist;
	}

	@Override
	public ArrayList<UserDetailsBean> login(String uid,String password) {
		
		String sql="select * from user_details where userid='"+uid+"' and userpassword='"+password+"' ";
		ArrayList<UserDetailsBean> list=(ArrayList<UserDetailsBean>) jdbctemplate.query(sql, new Mapper());
		System.out.println();
		return list;
	}
	
	@Override
	public boolean addflight(FlightDetailsBean flightdetails) {
		try{
		String sql="insert into flight_details values('"+flightdetails.getFlightno()+"','"+flightdetails.getFlightname()+"','"+flightdetails.getStartingcity()+"','"+flightdetails.getEndingcity()+"','"+flightdetails.getDeparturetime()+"','"+flightdetails.getArrivaltime()+"',"+flightdetails.getFareeconomy()+","+flightdetails.getFarebusiness()+","+flightdetails.getSeats()+")";
		jdbctemplate.update(sql);
		return true;
		}
		catch(Exception e)
		{
			return false;	
		}
		
	}
	@Override
	public void deleteflights(String flightno) {
		String sql="select ";
		String sql2="delete from tickets where flightno='"+flightno+"'";
		jdbctemplate.update(sql2);	
		String sql1="delete from flight_details where flightno='"+flightno+"'";
		jdbctemplate.update(sql1);		
			
	}
	@Override
	public boolean updateflight(FlightDetailsBean flightdetails) {
		try{
		String sql="update flight_details set flightname='"+flightdetails.getFlightname()+"',startingcity='"+flightdetails.getStartingcity()+"',endingcity='"+flightdetails.getEndingcity()+"',depaturetime='"+flightdetails.getDeparturetime()+"',arrivaltime='"+flightdetails.getArrivaltime()+"',fareeconomy="+flightdetails.getFareeconomy()+",farebusiness="+flightdetails.getFarebusiness()+",seats="+flightdetails.getSeats()+" where flightno='"+flightdetails.getFlightno()+"'";
		jdbctemplate.update(sql);	
		return true;
		}
		catch(Exception e){
			return false;
		}
	}
	@Override
	public ArrayList<FlightDetailsBean> viewflight(String flightno) {
		String sql="select * from flight_details where flightno='"+flightno+"'";
		ArrayList<FlightDetailsBean> 
		flightlist = (ArrayList<FlightDetailsBean>)
		jdbctemplate.query(sql,new FlightDetailsMapper());
		return flightlist;
	}

}
