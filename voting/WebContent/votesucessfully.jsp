<!DOCTYPE html>
 <%@page import="dbcon.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="Servlet.LocalDate" %>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<html lang="zxx">
<head>
    <title>CC08</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
             <meta http-equiv="refresh" content="4; URL=votermain.jsp">
    <meta name="keywords" content="Prime login Form a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link rel="stylesheet" href="css/style1.css" type="text/css" media="all">
    <link href="//fonts.googleapis.com/css?family=Mukta+Mahee:200,300,400,500,600,700,800" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.css" type="text/css" media="all">
</head>

<style></style>
<body bgcolor="	#99ffff">

  <center>
  <div class="container-fluid">  

<table class="table  table-hover table-dark">
 <thead>
    <tr class="table-dark">
 <th style="text-align: center;">Candidate Name</th>
 <th style="text-align: center;">Candidate Symbol</th>
     
     
        
    </tr>
  </thead>
 
<%String email=session.getAttribute("uname").toString(); %>

	
       <%
       String status="Voted";
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `vote`.`votes` where usermail='"+email+"'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	   String pic=rs.getString(1);
    	  
    	   Statement st=con.createStatement();
    		st.executeUpdate("UPDATE `vote`.`voteid` set status='"+status+"' where email='"+email+"' ");
    		 
       
   
       %>
	

	


     <tr class="table-dark">
     
      <td style="text-align: center;"><%=  rs.getString(2) %></td>
         <td style="text-align: center;"><img src=candidate/<%=rs.getString(3)%> style="width:100px; height:200px;"></td>
    
      </tr>
 
	<%
	}%>






</table>
     
</div>
</center>

</body>
</html>