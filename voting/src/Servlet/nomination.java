package Servlet;



import imple.imple;
import inter.inter;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.extractor.WordExtractor;


import Bean.nomibean;



import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Font;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.parser.PdfTextExtractor;
import com.lowagie.text.Element;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;

import dbcon.dbconn;

/**
 * Servlet implementation class nomination
 */
@WebServlet("/nomination")
public class nomination extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public nomination() {
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
		
		HttpSession session=request.getSession();
 
		 
		
		response.getContentType();
	 
		
	 
		FilePart filepart = null;
		ParamPart param=null;
 
		String filetype=null;
	 
		String filename = null;
		
		long size=0;
		String path=getServletContext().getRealPath("");
		
		System.out.println("path0000000000000000000000=="+path);
		
		
		String editpath=path.substring(0, path.indexOf("."));
		
		System.out.println("edithpath1111111111111111======"+editpath);
		
		String fullpath=editpath+"voting\\WebContent\\Locals\\";
		
		
		System.out.println("fullpath333333333333333=="+fullpath);
		
		while((part=mp.readNextPart())!=null)
		{
			
			if(part.isFile())
			{
				
				filepart=(FilePart)part;
				
				
			 filename=filepart.getFileName();
				
				System.out.println("filename9999999999999999=="+filename);
				
			 fullpath=fullpath+filename;
				
				System.out.println("fullpath5555555555555555555=="+fullpath);
				
				
				
				File file=new File(fullpath);
			 size=filepart.writeTo(file);
				
				System.out.println("size6666666666666=="+size);
				
		 filetype=filepart.getContentType();
				System.out.println("filetype88888888888---"+filetype);
				
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
           
              
              if(n==true){
          		response.sendRedirect("Error.jsp");

              }
              
              else if(n==false)
              {
            	  int m=r.nomi(up);
              	
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
