package Servlet;

import imple.imple;
import inter.inter;


import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.nomibean;

import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

import dbcon.dbconn;

/**
 * Servlet implementation class nom
 */
@WebServlet("/nom")
public class nom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public nom() {
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
MultipartParser mp =new MultipartParser(request, 999999999);
		
		Part part = null;
		ArrayList paramValues = new ArrayList();

		FilePart filepart = null;
		ParamPart param=null;
		File file1 = null;
		String filepath1 = null;
		String filetype=null;
		String filepath2 = null;
		String filename = null;
		
		long size=0;
		String path=getServletContext().getRealPath("");
		
		System.out.println("path=="+path);
		
		
		String editpath=path.substring(0, path.indexOf("."));
		
		System.out.println("edithpath=="+editpath);
		
		String fullpath=editpath+"EVoting\\WebContent\\sign\\";
		
		
		System.out.println("fullpath=="+fullpath);
		
		while((part=mp.readNextPart())!=null)
		{
			
			if(part.isFile())
			{
				
				filepart=(FilePart)part;
		
			    filename=filepart.getFileName();
				System.out.println("filename=="+filename);
				
			    fullpath=fullpath+filename;
		        System.out.println("fullpath=="+fullpath);
				
				
				
				
		         filetype=filepart.getContentType();
				System.out.println("filetype---"+filetype);
				
			}
			else if(part.isParam())
			{
				param = (ParamPart) part;
				String tagName =param.getName();
				System.out.println("tagName ============= " + tagName);
				String tagValue = param.getStringValue();
				System.out.println("tagValue ************ " + tagValue);
				 
				paramValues.add(tagValue);
				paramValues.add(tagName);
				
			}
		
		}

								
			nomibean up=new nomibean();
		
			up.setPic(paramValues.get(0).toString());
            System.out.println("pic: "+paramValues.get(0));
            
            up.setEmail(paramValues.get(2).toString());
            System.out.println("Category: "+paramValues.get(2));
            
            up.setDistrict(paramValues.get(4).toString());
            System.out.println("Category: "+paramValues.get(4));
            
            up.setAssem(paramValues.get(6).toString());
            System.out.println("Category: "+paramValues.get(6));
            
            up.setNumber(paramValues.get(8).toString());
            System.out.println("Category: "+paramValues.get(8));
            
            up.setCandidatename(paramValues.get(10).toString());
            System.out.println("Category: "+paramValues.get(10));
            
            up.setDate(paramValues.get(12).toString());
            System.out.println("Category: "+paramValues.get(12));
            
         
		
           up.setFilename(filename);
            System.out.println("Filename: "+filename);          
            
           
          
           

            
            
              
          
       
         
          inter r=new imple();
          boolean n=r.check(up);
          int m=r.nomi(up);
            
            if(n==true){
        		response.sendRedirect("Error.jsp");

            }
            
            else if(n==false)
            {
            	
            if(m==1){
            	try{
            		String statuss="confirm";
            		Connection con=dbconn.create();
            		Statement st=con.createStatement();
            		
            		st.executeUpdate("UPDATE vote.candidateid set status='"+statuss+"' where email='"+paramValues.get(2)+"' ");
            		response.sendRedirect("candidatemain.jsp");
            	} 
            	catch(Exception e){
            		response.sendRedirect("error.jsp?inval id");
            	System.out.println(e);
            	}
            }
            	
            }
            else
            {
            	response.sendRedirect("error.jsp");
            	
            }

		
		
	}

}

	


