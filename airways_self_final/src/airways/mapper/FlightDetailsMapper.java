package airways.mapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

import airways.bean.FlightDetailsBean;


public class FlightDetailsMapper implements RowMapper<FlightDetailsBean> {
		@Override
		public FlightDetailsBean mapRow(ResultSet rs, int rn) throws SQLException {
			FlightDetailsBean flightdetails= new FlightDetailsBean();
			flightdetails.setArrivaltime(rs.getString("arrivaltime"));
			flightdetails.setDeparturetime(rs.getString("depaturetime"));
			flightdetails.setEndingcity(rs.getString("endingcity"));
			flightdetails.setFarebusiness(rs.getFloat("farebusiness"));
			flightdetails.setFareeconomy(rs.getFloat("fareeconomy"));
			flightdetails.setFlightname(rs.getString("flightname"));
			flightdetails.setFlightno(rs.getString("flightno"));
			flightdetails.setSeats(rs.getInt("seats"));
			flightdetails.setStartingcity(rs.getString("startingcity"));
			return flightdetails;
			
		}
	}



