<%@ page import="dbcon.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%@ page import="mail.mail1"%>
<%


String email=request.getParameter("email");
String key=request.getParameter("dis");
String date=request.getParameter("date");

String status="Allot";
try{
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE `vote`.`voteid` set status='"+status+"',edate='"+date+"',votekey='"+key+"' where email='"+email+"' ");
	//mail1.mail(email, "Dear user, please do not share your voting private key with any one use it only to vote...thank you  "+key);
	
	response.sendRedirect("voteapprove.jsp");
}
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>