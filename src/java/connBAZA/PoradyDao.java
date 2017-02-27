package connBAZA;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import newpackage.Porady;
import polaczenie.connection;
/**
 *
 * @author sienki
 */
public class PoradyDao {
    
    connection cm = connection.getInstance();
    ResultSet resultSet;
    
    public void createPorady(String tytul,String opis) {
		cm.executeUpdate("INSERT INTO porady (Id,Tytul,Opis) VALUES (NULL,\""+tytul+"\","+"\""+opis+"\")");
	}
    
    public void addPoradyToGames(String games_id,String porady_id) {
		cm.executeUpdate("INSERT INTO porady_games (id,games_id,porady_id) VALUES (NULL,\""+games_id+"\","+"\""+porady_id+"\")");
	}
	
    public List<Porady> getPoradyByGames (String gamesId) {
		resultSet = cm.executeQuery("Select a.id,a.tytul,a.opis from porady a,games s,porady_games sa WHERE a.id=sa.porady_id AND s.id=sa.games_id AND sa.games_id like "+gamesId);
		List<Porady> porady = new ArrayList<Porady>();
		try {
			while(resultSet.next())
				porady.add(new Porady(resultSet.getString(1),resultSet.getString(2),resultSet.getString(3)));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		return porady;
	}
    
    public void editPorady(String id,String newTytul,String newOpis) {
		cm.executeUpdate("UPDATE porady SET Tytul = \""+newTytul+"\",opis =\""+newOpis+"\" WHERE id="+id);
	}
    
    public String getPoradyIdByNameAndOpis(String name, String opis) throws SQLException {
		resultSet = cm.executeQuery("SELECT id FROM porady WHERE tytul like \""+name+"\" AND opis like \""+opis+"\"");
		resultSet.next();
		return resultSet.getString(1).toString();
	}
    public Porady getPoradyById(String id) {
		resultSet = cm.executeQuery("SELECT tytul,opis FROM porady WHERE id like \""+id+"\"");
		try {
			resultSet.next();
			return new Porady(id,resultSet.getString(1),resultSet.getString(2));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
}
