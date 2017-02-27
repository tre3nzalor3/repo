package connBAZA;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.UserDAO;
import newpackage.User;
import polaczenie.connection;
/**
 *
 * @author sienki
 */
public class UserDao {
    
    connection cm = connection.getInstance();
	ResultSet resultSet;
	
//	@Override
	public String checkLoginValid(String nickname, String password) throws SQLException {
		
		resultSet = cm.executeQuery("SELECT id FROM user WHERE Nickname like \""+nickname+"\"AND Password like \""+ password+"\"");
		resultSet.next();
		if(resultSet.getRow()==0)
			return "-1";
		return resultSet.getString(1);
	}
	
	public void createUser(User user) {
		cm.executeUpdate("INSERT INTO user (Id,Name,Surname,Role,Nickname,Password,Email) VALUES (NULL,\""+user.getName()+"\","+"\""+user.getSurname()+"\","+"\""+user.getRole()+"\","+"\""+user.getNickname()+"\","+"\""+user.getPassword()+"\","+"\""+user.getEmail()+"\")");
	}
	
	public User getUserById(String id) {
		resultSet = cm.executeQuery("SELECT Name,Surname,Role,Nickname,Email FROM user WHERE id like \""+id+"\"");
		try {
			resultSet.next();
			return new User(id,resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),resultSet.getString(4),"",resultSet.getString(5));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}

	public List<User> getUserList() throws SQLException {
		resultSet = cm.executeQuery("SELECT Id,Name,Surname,Nickname,Email FROM user where role like \"student\"");
		List<User> users = new ArrayList<User>();
			while(resultSet.next()) {
				users.add(new User(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),"student",resultSet.getString(4),"",resultSet.getString(5)));
			}
			return users;
	}
	
	public List<User> selectAllStudentsOfGroup (String group_id) throws SQLException {
		resultSet = cm.executeQuery("Select s.id,s.name,s.surname,s.nickname,s.email FROM user s,groups g, group_user gu WHERE s.id=gu.student_id AND g.id=gu.group_id AND g.id like "+group_id);
		List<User> students = new ArrayList<User>();
		while(resultSet.next()) {
			User user = new User(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),"student",resultSet.getString(4),"",resultSet.getString(5));
			students.add(user);
		}
		return students;
	}
	
	public List<User> selectNotStudentsOfGroup (String group_id) throws SQLException {
		resultSet = cm.executeQuery("select s.id,s.name,s.surname,s.nickname,s.email from user s where role like \"student\" and s.id not in (select s.id from user s,groups g, group_user gu where s.id=gu.student_id and g.id=gu.group_id and g.id in ("+group_id+"))");
		List<User> students = new ArrayList<User>();
		while(resultSet.next()) {
			User user = new User(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),"student",resultSet.getString(4),"",resultSet.getString(5));
			students.add(user);
		}
		return students;
	}
	
	public List<User> getEventsUserList(String events_id) throws SQLException {
		resultSet = cm.executeQuery("SELECT Id,Name,Surname,Nickname,Email FROM user where role like \"admin\" AND Id in (SELECT s.id FROM user s,events sub, events_user su WHERE s.id=su.user_id AND sub.id=su.events_id AND su.events_id like "+events_id+")");
		List<User> students = new ArrayList<User>();
			while(resultSet.next()) {
				students.add(new User(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3),"admin",resultSet.getString(4),"",resultSet.getString(5)));
			}
			return students;
	}

    
}
