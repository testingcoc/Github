package airways.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;


import org.springframework.jdbc.core.RowMapper;

import airways.bean.UserDetailsBean;

public class UserViewOwnDetailsMapper implements RowMapper<UserDetailsBean> {

	@Override
	public UserDetailsBean mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		
		UserDetailsBean lb=new UserDetailsBean();
		lb.setUserid(rs.getString("userid"));
		lb.setUsername(rs.getString("username"));
		lb.setUserpassword(rs.getString("userpassword"));
		lb.setGender(rs.getString("gender"));
		lb.setUserdob(rs.getString("userdob"));
		lb.setUseremail(rs.getString("useremail"));
		lb.setUseraddress(rs.getString("useraddress"));
		lb.setUserphone(rs.getInt("userphone"));
		return lb;
	}

	
	
}


