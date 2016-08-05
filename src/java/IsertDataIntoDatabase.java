import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/IsertDataIntoDatabase"})
public class IsertDataIntoDatabase extends HttpServlet {
    Connection conn1,conn2;
    ResultSet res1,res2;
    
    String fname,lname,uname,password,email,sex,city,state, query1 ,query2;
    
    DataBaseConnection dbconn1,dbconn2;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            
            fname = request.getParameter("fname");
            lname = request.getParameter("lname");
            uname = request.getParameter("uname");
            password = request.getParameter("repassword");
            email = request.getParameter("email");
            state = request.getParameter("state");
            city = request.getParameter("city");
            
            
            
            
            query1 = "select * from admin where username = '" + uname + "'";
            
            dbconn1 = new DataBaseConnection();
            conn1 = dbconn1.SetConnection();
            res1 = dbconn1.getResult(query1, conn1);
            if(res1.next()){
                out.write("<strong>Username error</strong>");
            }
            else{
                query2 ="insert into admin values('none','"+fname+"','"+lname+"','none','"+uname+"','"+password+"','"+city+"','"+state+"','Sri lanka','"+email+"','faebook')" ;
                dbconn2 = new DataBaseConnection();
                conn2 = dbconn2.SetConnection();
                res2 = dbconn2.getResult(query2, conn2);
                
            }
        }
        catch(Exception e)
        {
            
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
