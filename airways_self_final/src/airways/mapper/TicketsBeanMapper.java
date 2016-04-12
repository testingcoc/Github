package airways.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import airways.bean.Tickets;
import airways.bean.TicketsBean;

public class TicketsBeanMapper implements RowMapper<TicketsBean> {

	@Override
	public TicketsBean mapRow(ResultSet rs, int arg1) throws SQLException {

		TicketsBean tc=new TicketsBean();
		tc.setTicketno(rs.getString("ticketno"));
		tc.setUserid(rs.getString("userid"));
		tc.setFlightno(rs.getString("flightno"));
		tc.setFare(rs.getFloat("fare"));
		tc.setTimeofbooking(rs.getDate("timeofbooking"));
		return tc;
	}

}
