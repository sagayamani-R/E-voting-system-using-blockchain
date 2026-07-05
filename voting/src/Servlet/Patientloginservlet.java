package Servlet;

import imple.Imple;
import inter.Inter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import dbconn.Dbconn;

import bean.Patientregbean;

/**
 * Servlet implementation class Patientloginservlet
 */
@WebServlet("/Patientloginservlet")
public class Patientloginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Patientloginservlet() {
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
		
		String pid=request.getParameter("pid");
		System.out.println("username:"+pid);
		
		HttpSession sess=request.getSession();
		sess.setAttribute( "pemail",pid);
		
	
		
		String qr=request.getParameter("otp");
		System.out.println("otp:"+qr);
		
		Patientregbean ur=new Patientregbean();
		ur.setId(pid);
		
		ur.setOtp(qr);
		
		Inter in=new Imple();
		boolean log=in.plog(ur);
		
		if(log==true){
			
	 		String id="";
	 		
	 		
	 		Connection con;
	 		con=Dbconn.create();
	 		try {
	 	
	 			Statement st=con.createStatement();
	 			st.executeUpdate("UPDATE hos.patientreg set otp='"+id+"' where id='"+pid+"' ");
	 			
	 			
	 			response.sendRedirect("patientmainpage.jsp");
	 			
	 			 
	 		} catch (SQLException e) {
	 			// TODO Auto-generated catch block
	 			e.printStackTrace();
	 		}
			
		}
		else{
			response.sendRedirect("error.jsp");
		}

		
	}

}
