package airways.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;



import org.springframework.jdbc.core.RowMapper;

import airways.bean.forgotpassbean;

public class MapperForgotPass implements RowMapper<forgotpassbean> {

	@Override
	public forgotpassbean mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		
		forgotpassbean lb=new forgotpassbean();
		lb.setUserid(rs.getString("userid"));
		lb.setQues(rs.getString("security_question"));
		lb.setAns(rs.getString("security_answer"));
		lb.setPass(rs.getString("userpassword"));
		lb.setEmail(rs.getString("useremail"));
		
		return lb;
	}

	
	
}


