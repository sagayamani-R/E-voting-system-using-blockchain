`<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbcon.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Date" %>

<%@ page import = "java.io.*,java.util.*, javax.servlet.*" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
table{
width:100%;
}
</style>
 <button onclick="goBack()" class="btn btn-outline-primary" style="float:right;">Go Back</button><br><br>
<body>

<center>
  <div class="container-fluid">  
<table class="table  table-hover table-dark">
 <thead>
    <tr class="table-dark">
      <th style="text-align: center;">Voter ID</th>
      <th style="text-align: center;">Connect </th>
      <th style="text-align: center;">Assembly</th>
      <th style="text-align: center;">District</th>
       
       <th style="text-align: center;">VIEW </th>
        
    </tr>
  </thead>
 

<%

SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
Date date = new Date();  
System.out.println(formatter.format(date)); 

String dates=formatter.format(date); %>
	<%
		Random r1=new Random(); 

		 String key2="ABCDEFGH123456789";
		 char c5=key2.charAt(r1.nextInt(key2.length()));
		 char c6=key2.charAt(r1.nextInt(key2.length()));
		 char c7=key2.charAt(r1.nextInt(key2.length()));
		 char c8=key2.charAt(r1.nextInt(key2.length()));
		 char c9=key2.charAt(r1.nextInt(key2.length()));
		 String t6=""+c5+""+c6+""+c7+""+c8+""+c9;
		 %>
       <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `vote`.`voteid` where status='Accepted'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	   String pic=rs.getString(1);
    	  
    	   
       %>
	

	


     <tr class="table table-hover table-dark">
     <td style="text-align: center;"><img src=voters/<%=rs.getString(5)%> style="width:60px; height:60px;"></td>
    
       <td style="text-align: center;"><%=  rs.getString(4) %></td>
 <td style="text-align: center;"><%= rs.getString(2) %></td>
       <td style="text-align: center;"><%=  rs.getString(1) %></td>
     

               <td style="text-align: center;"><a href="ved.jsp?email=<%=rs.getString(3)%>&&dis=<%=t6%>&&date=<%=dates%>"><button class="btn btn-success" style="text-align:center;">Allocate</button></a></td>
    
     </tr>
	<%} %>






</table>

</div>
</center>

</body>
<script>
$(window).on("load resize ", function() {
	  var scrollWidth = $('.tbl-content').width() - $('.tbl-content table').width();
	  $('.tbl-header').css({'padding-right':scrollWidth});
	}).resize();
</script>
<script>
function goBack() {
  window.history.back();
}
</script>
</html>