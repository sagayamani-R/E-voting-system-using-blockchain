<%@ page import="dbcon.dbconn" %>
    <%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Bill</title>
<style>
body{ 
background: linear-gradient(linear-gradient(to right, #ffc107 0%, #7955481f 100%));}
table,td,th {
  border: 2px solid black;
  
}
table {
  border-collapse: collapse;
  width: 90%;
}

td {
  text-align: center;
 height: 40px;
}
th{
 height: 30px;
 color: red;
}
.mydiv{
text-decoration:none;
float:right;
font-size:40px;

}
</style>
</head>
<body>
<% String dis=request.getParameter("dis");
String ass=request.getParameter("ass");
String email=request.getParameter("cname");%>

<%



try{
	int total=0;
	int sno=0;
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("SELECT count(id) FROM vote.votes where  statu='Voteted' and party='"+dis+"' and ass='"+ass+"' and cname='"+email+"' ");
	while(rs.next()){
		total=rs.getInt(1);
	}
	ResultSet rs2=st.executeQuery("SELECT * FROM vote.votes where statu='Voteted'  and party='"+dis+"' and ass='"+ass+"' and cname='"+email+"'");
	while(rs2.next()){
		
	

%>
<div class="mydiv">
<a href="candidatemain.jsp">Back</a>
</div>
<br>




<%break; } %>


<br>


<table id="customers">
<h3> Vote Count Details</h3>
<tr>
<th>candidate name </th>
<th>Party Name</th>
<th>Assembly</th>
<th>District</th>
<th>Candidate Pic</th>
<th>Total Votes</th>
</tr>
<%
ResultSet rs1=st.executeQuery("SELECT * FROM vote.votes  where  statu='Voteted'  and party='"+dis+"' and ass='"+ass+"' and cname='"+email+"'");
while(rs1.next()){
	sno=sno+1;

%>

<tr>

<td><%=rs1.getString(2) %></td>
<td><%=rs1.getString(6) %></td>
<td><%=rs1.getString(5) %></td>
<td><%=rs1.getString(4) %></td>
<td><img src="candidate/<%=rs1.getString(3) %>" style="width:90px; heigth:50px;"></td>
<%
int id=0;
ResultSet rs3=st.executeQuery("SELECT count(id) FROM vote.votes where cname='"+rs1.getString(2)+"'");
while(rs3.next()){
	sno=sno+1;
int id1=rs3.getInt(1);
%>
<td> <%=id1 %></td>
</tr>
<tr>
<%} %>
</table>
<h3>Total Vote: <%out.println(total); %></h3>

<a onclick="window.print();">  <button>Print</button></a>
<br><br><br><br>
<%
}
}
catch(Exception e)
{
	System.out.println(e);
}%>
</body>
</html>