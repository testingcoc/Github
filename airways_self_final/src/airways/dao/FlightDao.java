package airways.dao;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import airways.bean.FlightDetailsBean;
import airways.bean.UserDetailsBean;

public abstract class FlightDao {
	
	public abstract ArrayList<FlightDetailsBean> viewflights(FlightDetailsBean flightdetails);
	public abstract List<FlightDetailsBean> view();
	public abstract ArrayList<UserDetailsBean> login(String uid,String password);
	
	//--------------Admin 
	
	public abstract boolean addflight(FlightDetailsBean flightdetails);
	public abstract void deleteflights(String flightno);
	public abstract boolean updateflight(FlightDetailsBean flightdetails);
	public abstract ArrayList<FlightDetailsBean> viewflight(String flightno);
	
	
	
}

