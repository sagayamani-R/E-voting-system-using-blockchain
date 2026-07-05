<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="dbcon.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="Servlet.LocalDate" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
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
 <%String email=session.getAttribute("uname").toString(); 
 String ass=session.getAttribute("ass").toString(); 
 String dis=session.getAttribute("dis").toString(); %>
<body>

<center>
  <div class="container-fluid">  
<table class="table  table-hover table-dark">
 <thead>
    <tr class="table-dark">
 <th style="text-align: center;">Candidate pic</th>
 <th style="text-align: center;">Candidate Name</th>
      <th style="text-align: center;">District</th>
      <th style="text-align: center;">Assembly</th>
   
       <th style="text-align: center;">Party</th>
        <th style="text-align: center;">Vote Here!!</th>
     
        
    </tr>
  </thead>
 


	
       <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `vote`.`application` where statuss='Eligible' and ass='"+ass+"'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	   String pic=rs.getString(1);
    	  
    	   
       
   
       %>
	

	


     <tr class="table-dark">
         <td style="text-align: center;"><img src=candidate/<%=rs.getString(1)%> style="width:60px; height:60px;"></td>
     <td style="text-align: center;"><%=  rs.getString(6) %></td>
       <td style="text-align: center;"><%=  rs.getString(3) %></td>
 <td style="text-align: center;"><%= rs.getString(4) %></td>
   
<%--                   <td style="text-align: center;"><img src=symbol/<%=rs.getString(8)%> style="width:60px; height:60px;"></td>
 --%>               <td style="text-align: center;"><%= rs.getString(7) %></td>  
                           <td style="text-align: center;"><a href="voteed.jsp?cname=<%=rs.getString(6)%>&&csymbol=<%=rs.getString(1)%>&&dis=<%=rs.getString(3)%>&&assem=<%=rs.getString(4)%>&&Party=<%=rs.getString(7)%>&&mail=<%=email%>"><button class="btn btn-success" style="text-align:center;">Vote</button></a></td>
            

    
     </tr>
	<%
	}%>






</table>

</div>
</center>

</body>

<script>
function goBack() {
  window.history.back();
}
</script>
</html>