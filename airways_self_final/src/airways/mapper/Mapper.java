package airways.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import airways.bean.UserDetailsBean;

public class Mapper implements RowMapper<UserDetailsBean> {

	@Override
	public UserDetailsBean mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		
		UserDetailsBean lb=new UserDetailsBean();
		lb.setUserid(rs.getString("userid"));
		lb.setUserpassword(rs.getString("userpassword"));
		return lb;
	}

	
	
}


