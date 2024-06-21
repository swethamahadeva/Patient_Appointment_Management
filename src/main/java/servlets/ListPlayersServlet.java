package servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



	
	@WebServlet(name = "ListPlayersServlet", urlPatterns = {"/listplayers"})
	public class ListPlayersServlet extends HttpServlet {
	    /**
		 * 
		 */
		private static final long serialVersionUID = 1L;

		@Override 
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	        response.setContentType("text/html;charset=UTF-8");
	        PrintWriter out = response.getWriter();
	        try {
	            Class.forName("oracle.jdbc.driver.OracleDriver");
	            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "system");
	            PreparedStatement ps = con.prepareStatement("select * from player");
	            ResultSet rs = ps.executeQuery();
	            out.println("<h1>Players</h1>");
	            while ( rs.next()) {
	                  out.println("<h3>" + rs.getString("playername") + "</h3>");
	                  out.println("<img width='300' height='300' src=displayphoto1?name=" +  rs.getString("playername") + "></img> <p/>");
	            }
	            con.close();
	        }
	        catch(Exception ex) {
	            System.out.println(ex.getMessage());
	        }
	        
	        finally {            
	            out.close();
	        }
	    }
	}




