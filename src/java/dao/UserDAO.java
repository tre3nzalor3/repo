package dao;

import java.sql.SQLException;

public interface UserDAO {

	public String checkLoginValid(String nickname, String password) throws SQLException ;
		
}
