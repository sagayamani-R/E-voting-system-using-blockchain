package Servlet;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

import dbcon.dbconn;

/**
 * Servlet implementation class face
 */
@WebServlet("/face")
public class face extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public face() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String email = request.getParameter("email");
		System.out.println("downlo" + email);

		
		boolean b=false;
		try {
			Connection con;
			con = (Connection) dbconn.create();
		    
		    PreparedStatement ps = con.prepareStatement("SELECT * FROM `vote`.`face` where status='permit' and email='"+email+"' ");
		    ResultSet rs=ps.executeQuery();
		    b=rs.next();
		    if(b==true){
		    	response.sendRedirect("votehere.jsp?valid");
		    	
		    }
		    else {
		    	request.setAttribute("errorMessage", "Face Not In Database. Please Train Your Face First.");
		        request.getRequestDispatcher("faceauthentication.jsp").forward(request, response);
			}
		    
		} catch (Exception e) {
		    e.printStackTrace();
		    
		}
		
	}

}
