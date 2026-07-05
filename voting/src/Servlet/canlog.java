package Servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dbcon.dbconn;

import Bean.candidatebean;

/**
 * Servlet implementation class canlog
 */
@WebServlet("/canlog")
public class canlog extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public canlog() {
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
		String email=request.getParameter("name");
		HttpSession session=request.getSession();
        session.setAttribute("cemail", email);        
		String ass=request.getParameter("District"); 
		HttpSession session1=request.getSession();
        session1.setAttribute("cdis", ass); 
		String dis=request.getParameter("pass"); 
		HttpSession session2=request.getSession();
        session2.setAttribute("cass", dis); 

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

		
        try {
        	con=dbconn.create();
        	ps = con.prepareStatement("SELECT * FROM `vote`.candidatereg where email=? and Assembly=? and district=?");
			ps.setString(1, email);
			ps.setString(2, ass);
			ps.setString(3, dis);

            rs = ps.executeQuery();

            if (rs.next()) {
                String mobile = rs.getString(3);
                session.setAttribute("mobile", mobile);
                response.sendRedirect("candidatemain.jsp");
            } else {
                response.sendRedirect("candidatelog.jsp?error=user_not_found");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("candidatelog.jsp?error=database_error");
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

		
		
	}

}
