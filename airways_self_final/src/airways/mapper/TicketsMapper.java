package airways.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import airways.bean.Tickets;



public class TicketsMapper implements RowMapper<Tickets> {

	@Override
	public Tickets mapRow(ResultSet rs, int arg1) throws SQLException {
		Tickets tickets = new Tickets();
		tickets.setTicketno(rs.getString("ticketno"));
		tickets.setPassengername(rs.getString("passengername"));
		tickets.setPassengerage(rs.getInt("passengerage"));
		tickets.setPassengertype(rs.getString("passengertype"));
		tickets.setPassengergender(rs.getString("passengertype"));
		return tickets;
	}

}
