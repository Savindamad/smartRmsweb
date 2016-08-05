
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ValidateLogin extends HttpServlet {
    
    Connection conn;
    ResultSet res;
    
    String username , password , query;
    
    DataBaseConnection dbconn;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try 
        {
            username = request.getParameter("username");
            password = request.getParameter("password");
            
            query = "select * from admin where username = '" + username + "' and password = '" + password + "'";
            
            dbconn = new DataBaseConnection();
            conn = dbconn.SetConnection();
            res = dbconn.getResult(query, conn);
            
            if(res.next())
            {
                out.write("<strong>Valid Login</strong>");
            }
            else
            {
                out.write("<strong>Invalid Login</strong>");
            }
        }
        catch (Exception e)
        {
        }
        finally
        {
            out.close();
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
