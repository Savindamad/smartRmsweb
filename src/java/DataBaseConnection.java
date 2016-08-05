import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



public class DataBaseConnection{
    
    public Statement stmt;
    public ResultSet res;
    public Connection conn;
    
    public DataBaseConnection()
    {
        
    }
    @SuppressWarnings("CallToTreadDumpStack")
    public Connection SetConnection()
    {

        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mms","root","madsavi@123");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return conn;
    }
    public ResultSet getResult(String query, Connection conn) throws SQLException
    {
        this.conn = conn;
        try
        {
            stmt = conn.createStatement();
            res = stmt.executeQuery(query);
            
        }
        catch(Exception e)
        {
        }
        return res;
    }
}
