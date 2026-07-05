<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbcon.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/bootstrap.min.css">
<title>Insert title here</title>
</head>
<style>
span{
color:red;	
}
</style>

<% String pic=request.getParameter("pic");
String email=request.getParameter("email");
%>
<body>
<center>
<form action="vaccept.jsp" method="post">
<label><span>Voter</span> Id</label><br><br><br>
<img src="voters/<%=pic %>"  width="300" height="300">
<input type="Hidden" value="<%=email%>" name="email" readonly><br><br>
<input type="submit" value="Accept">
</form>
</center>
</body>
</html>