package connBAZA;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import newpackage.News;
import polaczenie.connection;
/**
 *
 * @author sienki
 */

public class NewsDao {
    
    connection cm = connection.getInstance();
    ResultSet resultSet;
    
    public void createNews(String tytul,String opis) {
		cm.executeUpdate("INSERT INTO news (Id,Tytul,Opis) VALUES (NULL,\""+tytul+"\","+"\""+opis+"\")");
	}
    
    public News getNewsById(String id) {
		 resultSet = cm.executeQuery("SELECT Tytul,Opis FROM News WHERE id like \""+id+"\"");
		try {
			resultSet.next();
			return new News(id,resultSet.getString(1),resultSet.getString(2));
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
	}
    
    public void addUserToNews (String user_id,String news_id) {
		cm.executeUpdate("Insert into news_user (id,user_id,news_id) VALUES (NULL,\""+user_id+"\", \""+news_id+"\")");
	}
	
    public void deleteUserFromNews(String user_id,String news_id) {
		cm.executeUpdate("Delete from news_user WHERE user_id like "+user_id+" AND news_id like "+news_id);
	}
    
    public List<News> getNewsByUser(String userId) throws SQLException {
		 resultSet = cm.executeQuery("SELECT sub.id,sub.tytul FROM news sub,user stu,news_user su WHERE sub.id=su.news_id AND stu.id=su.user_id AND stu.id like "+userId);
		List<News> newss = new ArrayList<News>();
		while(resultSet.next()) {
			newss.add(new News(resultSet.getString(1).toString(),resultSet.getString(2).toString(),resultSet.getString(3).toString()));
		}
		return newss;
	}
    
    public List<News> getNotNewsByUser(String userId) throws SQLException {
		 resultSet = cm.executeQuery("SELECT id,Tytul FROM news WHERE id not in(SELECT sub.id FROM news sub,user stu,news_user su WHERE sub.id=su.news_id AND stu.id=su.user_id AND su.user_id like "+userId+")");
		List<News> newss = new ArrayList<News>();
		while(resultSet.next()) {
			newss.add(new News(resultSet.getString(1).toString(),resultSet.getString(2).toString(),resultSet.getString(3).toString()));
		}
		return newss;
	}
    
    public List<News> getNewsList()throws SQLException {
                resultSet = cm.executeQuery("SELECT Id,Tytul,Opis FROM news");
                List<News> news = new ArrayList<News>();
                while(resultSet.next()){
                        news.add(new News(resultSet.getString(1).toString(),resultSet.getString(2).toString(),resultSet.getString(3).toString()));
                }
                return news;
        
        
    }
    
}
