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
<title>Candidate PAGE</title>


<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 10px;
  overflow: hidden;
  background-color: #d99e9e00;
}

li {
  float: left;
}

li a {
  display: block;
  color: #063138;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  
}

li a:hover:not(.active) {
  background-color: #00f;
}

.active {
  background-color: #4CAF50;
}

body {
     background: url(image/14.jpeg)no-repeat 0px 0px;

    background-size: 100% 100%;
    min-height: 795px;
	position:relative;
}
h2{
  text-shadow: 2px 2px 5px green;
  font-style: italic;
  font-family: cursive;
  color:yellow;
   font-size: 30px;
}
span{
color:orange;
}

/* img{
padding-right:20%;
} */

</style>


</head>
      
       <%
    Connection con = null;
    PreparedStatement ps = null;
    PreparedStatement ps1 = null;
    PreparedStatement ps2 = null;
    ResultSet rs = null;
    ResultSet rs1 = null;
    ResultSet rs2 = null;
    int count = 0;
    int count1 = 0;
    int count2 = 0;

    try {
        // Establish Database Connection
        con = dbconn.create();

        // Prepare and execute query for 'Accepted' status
        ps = con.prepareStatement("SELECT count(*) FROM `vote`.`candidateid` where status='Apply' ");
        rs = ps.executeQuery();
        if (rs.next()) {
            count = rs.getInt(1);
        }

       
        ps1 = con.prepareStatement(
    "SELECT COUNT(*) FROM `vote`.`candidateid` WHERE status='confirm' " +
    "AND email IN (SELECT email FROM `vote`.`application` WHERE statuss='Upload')"
);
rs1 = ps1.executeQuery();
if (rs1.next()) {
    count1 = rs1.getInt(1);
}

        
        ps2 = con.prepareStatement("SELECT count(*) FROM `vote`.`eligible` where statuss='Eligible' ");
        rs2 = ps2.executeQuery();
        if (rs2.next()) {
            count2 = rs2.getInt(1);
        }
        
        
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close resources
        try {
            if (rs != null) rs.close();
            if (rs1 != null) rs1.close();
            if (ps != null) ps.close();
            if (ps1 != null) ps1.close();
            if (con != null) con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
%>
       

<body>

<ul>  
  

  <li> <a class="con" href="" ></a></li>
    <li><b><a href="#home">HOME</a></b></li>
      <li><b><a href="canapplicationview.jsp">View Application (<%=count %>)</a></b></li>
      <li><b><a href="Nominationview.jsp">Nomination (<%=count1 %>)</a></b></li>
      <li><b><a href="appointview.jsp">Eligible (<%=count2 %>)</a></b></li>
      <li><b><a href="ecmain.jsp">BACK</a></b></li>
    
</ul>


          
          
</body>
</html>