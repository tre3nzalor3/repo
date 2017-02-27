package connBAZA;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import newpackage.Events;
import polaczenie.connection;

/**
 *
 * @author sienki
 */
public class EventsDao {
   
    connection cm = connection.getInstance();
    ResultSet resultSet;
    
    public void createEvents(String tytul,String data,String opis) {
		cm.executeUpdate("INSERT INTO events (Id,Tytul,Data,Opis) VALUES (NULL,\""+tytul+"\",\""+data+"\","+"\""+opis+"\")");
	}
    
    public Events getEventsById(String id) {
		 resultSet = cm.executeQuery("SELECT Tytul,Data,Opis FROM events WHERE id like \""+id+"\"");
		try {
			resultSet.next();
			return new Events(id,resultSet.getString(1),resultSet.getString(2),resultSet.getString(3));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
    
    public void addUserToEvents (String user_id,String events_id) {
		cm.executeUpdate("Insert into events_user (id,user_id,events_id) VALUES (NULL,\""+user_id+"\", \""+events_id+"\")");
	}
	
    public void deleteUserFromEvents(String user_id,String events_id) {
		cm.executeUpdate("Delete from events_user WHERE user_id like "+user_id+" AND events_id like "+events_id);
	}
    
    public List<Events> getEventsByUser(String userId) throws SQLException {
		 resultSet = cm.executeQuery("SELECT sub.id,sub.tytul FROM events sub,user stu,events_user su WHERE sub.id=su.events_id AND stu.id=su.user_id AND stu.id like "+userId);
		List<Events> event = new ArrayList<Events>();
		while(resultSet.next()) {
			event.add(new Events(resultSet.getString(1).toString(),resultSet.getString(2).toString(),resultSet.getString(3).toString(),resultSet.getString(4)));
		}
		return event;
	}
    
    public List<Events> getNotEventsByUser(String userId) throws SQLException {
		 resultSet = cm.executeQuery("SELECT id,Tytul FROM events WHERE id not in(SELECT sub.id FROM events sub,user stu,events_user su WHERE sub.id=su.events_id AND stu.id=su.user_id AND su.user_id like "+userId+")");
		List<Events> event = new ArrayList<Events>();
		while(resultSet.next()) {
			event.add(new Events(resultSet.getString(1).toString(),resultSet.getString(2).toString(),resultSet.getString(3).toString(),resultSet.getString(4)));
		}
		return event;
	}
    
    public List<Events> getEventsList()throws SQLException {
                resultSet = cm.executeQuery("SELECT Id,Tytul,Data,Opis FROM events");
                List<Events> event = new ArrayList<Events>();
                while(resultSet.next()){
                        event.add(new Events(resultSet.getString(1).toString(),resultSet.getString(2).toString(),resultSet.getString(3).toString(),resultSet.getString(4)));
                }
                return event;
        
        
    }
    
    
    
    
}
