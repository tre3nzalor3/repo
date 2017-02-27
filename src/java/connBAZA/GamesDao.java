package connBAZA;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import polaczenie.connection;
import newpackage.Games;
/**
 *
 * @author sienki
 */
public class GamesDao {
    
     connection cm = connection.getInstance();
     ResultSet resultSet;
     
     public void createGames(String tytul,String opis) {
		cm.executeUpdate("INSERT INTO games (Id,Tytul,Opis) VALUES (NULL,\""+tytul+"\","+"\""+opis+"\")");
	}
     
     public Games getGamesById(String id) {
		 resultSet = cm.executeQuery("SELECT Tytul,Opis FROM games WHERE id like \""+id+"\"");
		try {
			resultSet.next();
			return new Games(id,resultSet.getString(1),resultSet.getString(2));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
     
     public List<Games> getGamesList()throws SQLException {
                resultSet = cm.executeQuery("SELECT Id,Tytul,Opis FROM games");
                List<Games> game = new ArrayList<Games>();
                while(resultSet.next()){
                        game.add(new Games(resultSet.getString(1).toString(),resultSet.getString(2).toString(),resultSet.getString(3).toString()));
                }
                return game;
        
        
    }
     
     public List<Games> getGamesByUser(String userId) throws SQLException {
		 resultSet = cm.executeQuery("SELECT sub.id,sub.tytul,opis FROM games sub,user stu,games_user su WHERE sub.id=su.game_id AND stu.id=su.user_id AND stu.id like "+userId);
		List<Games> games = new ArrayList<Games>();
		while(resultSet.next()) {
			games.add(new Games(resultSet.getString(1).toString(),resultSet.getString(2).toString(),resultSet.getString(3).toString()));
		}
		return games;
	}
	
	public List<Games> getNotGamesByUser(String userrId) throws SQLException {
		 resultSet = cm.executeQuery("SELECT Id,Tytul,Opis FROM games WHERE Id not in(SELECT sub.Id FROM games sub,user stu,games_user su WHERE sub.id=su.game_id AND stu.id=su.user_id AND su.user_id like "+userrId+")");
		List<Games> games = new ArrayList<Games>();
		while(resultSet.next()) {
			games.add(new Games(resultSet.getString(1).toString(),resultSet.getString(2).toString(),resultSet.getString(3).toString()));
		}
		return games;
	}
        
        public void addUserToGames (String user_id,String games_id) {
		cm.executeUpdate("Insert into games_user (id,user_id,game_id,isExchange) VALUES (NULL,\""+user_id+"\", \""+games_id+"\",1)");
	}
	
	public void deleteUserFromGames(String user_id,String games_id) {
		cm.executeUpdate("Delete from games_user WHERE user_id like "+user_id+" AND game_id like "+games_id);
	}
     
        
        public List<Games> getGamesByUser2() throws SQLException {
		resultSet = cm.executeQuery("SELECT gu.id,u.name,g.tytul FROM user u ,games_user gu ,games g WHERE gu.user_id = u.id and gu.game_id = g.id");
		List<Games> games = new ArrayList<Games>();
		while(resultSet.next()) {
			games.add(new Games(resultSet.getString(1).toString(),resultSet.getString(2).toString(),resultSet.getString(3).toString()));
		}
		return games;
	}
}
