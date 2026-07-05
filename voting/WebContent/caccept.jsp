<%@ page import="dbcon.dbconn" %>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<%
String id=request.getParameter("email");



String statuss="confirm";
String status="Accepted";
try{
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	st.executeUpdate("UPDATE vote.candidateid set status='"+status+"' where email='"+id+"' ");
	
	response.sendRedirect("candidates.jsp?valid");
}
/* 
	try{
	Statement st1=con.createStatement();
	st1.executeUpdate("UPDATE vote.candidateid set status='"+statuss+"' where email='"+id+"' ");
	response.sendRedirect("candidatemain.jsp");
} */
catch(Exception e){
	response.sendRedirect("error.jsp?inval id");
System.out.println(e);
}
%>