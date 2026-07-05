package Servlet;

import imple.imple;
import inter.inter;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.Block;
import Bean.votebean;

import dbcon.dbconn;


/**
 * Servlet implementation class Voting
 */
@WebServlet("/Voting")
public class Voting extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Voting() {
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
		String cname=request.getParameter("cname");
		String csym=request.getParameter("csymbol");
		String ass=request.getParameter("assem");
		
		String prehash="";
		String afterhash="";
		
		String ad="vote";
		
		Connection con;
		con=dbconn.create();
		try {
			PreparedStatement pa=con.prepareStatement("SELECT phash,ahash FROM `contract`.departde` where mail='"+ad+"'");
			ResultSet rs=pa.executeQuery();
			while(rs.next()){
				prehash=rs.getString(1);
				afterhash=rs.getString(2);
				
			}
			 
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(afterhash);
		prehash=afterhash;

		 
		 
		 
		Block genesisBlock = new Block("Hi im the first block", "0");

		String phas=genesisBlock.hash;
		
		Block secondBlock = new Block("Yo im the second block",genesisBlock.hash);
		System.out.println("Hash for block 2 : " + secondBlock.hash);
		String aphas=secondBlock.hash; 
		
		votebean v=new votebean();
		v.setCname(cname);
		v.setCsymbol(csym);
		v.setAssem(ass);
		v.setPhash(prehash);
		v.setAhash(aphas);
		v.setMail(ad);
		
		inter b=new imple();
		int c=b.vote(v);
		if(c==1){
			response.sendRedirect("votesucessfully.jsp");
		}
		else{
			response.sendRedirect("Error.jsp");
		}
	}
			


}
