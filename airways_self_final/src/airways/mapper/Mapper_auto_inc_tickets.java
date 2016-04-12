package airways.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;


public class Mapper_auto_inc_tickets implements RowMapper<String> {

	@Override
	public String mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		
		String id=rs.getString("ticketno");
		return id;
	}

	
	
}


