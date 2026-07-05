<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="imple.imple"%>
<%@ page import="inter.inter"%>

<%@ page import="java.io.IOException"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>

<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.annotation.WebServlet"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>

<%@ page import="Bean.Block"%>
<%@ page import="Bean.votebean"%>

<%@ page import="mail.mail1"%>
<%@ page import="dbcon.dbconn"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%String cname=request.getParameter("cname");
String csym=request.getParameter("csymbol");
String ass=request.getParameter("dis");
String email=request.getParameter("assem");
String Party=request.getParameter("Party");
String mail=request.getParameter("mail");

String prehash="";
String afterhash="";

String ad="vote";

Connection con;
con=dbconn.create();
try {
	PreparedStatement pa=con.prepareStatement("SELECT phash,ahash FROM `vote`.votes` where mail='"+ad+"'");
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
v.setCpic(csym);
v.setDis(ass);
v.setAss(email);
v.setParty(Party);

v.setPhash(prehash);
v.setAhash(aphas);
v.setMail(ad);
v.setVoter(mail);
inter b=new imple();
int c=b.vote(v);
if(c==1){
	/* mail1.mail(email, "Dear user, "+email+"  youn are voted successfully... "); */
	
	response.sendRedirect("votesucessfully.jsp");
}
else{
	response.sendRedirect("Error.jsp");
}

 %>
</body>
</html>