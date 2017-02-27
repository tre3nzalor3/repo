package polaczenie;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author sienki
 */
public class connection {
    private static connection instance = null;
  
  private final String USERNAME = "root";
  private final String PASSWORD = "krasnal";
  private final String CONN_STRING = "jdbc:mysql://localhost:3306/inzynierka";
  
  private Statement statement;
  
  private Connection conn = null;
  
  private connection(){
      try {
          Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection(CONN_STRING, USERNAME, PASSWORD);
          statement = conn.createStatement();
      } catch (ClassNotFoundException e) {
          e.printStackTrace();
      }
        catch (SQLException e) {
          e.printStackTrace();
      }
  }
  
  public static connection getInstance(){
      if(instance == null){
          instance = new connection();
      }
      return instance;
  }
  
  public ResultSet executeQuery(String sql) {
      ResultSet resultSet= null;
      
      try {
          resultSet = statement.executeQuery(sql);
      } catch (SQLException e) {
          e.printStackTrace();
      }
      return resultSet;
  }
  
  public int executeUpdate(String sql) {
      int resultSet = 0;
      
      try {
          resultSet = statement.executeUpdate(sql);
      } catch (SQLException e) {
          e.printStackTrace();
      }
      return resultSet;
  }
  
  public void close() {
      try {
          conn.close();
      }
      catch(SQLException e){
          e.printStackTrace();
      }
      conn = null;
  }
}
