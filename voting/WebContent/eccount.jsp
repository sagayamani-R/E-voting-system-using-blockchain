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
<% 
int a=0;
int b=0;
String name="";
String ass=request.getParameter("ass");

System.out.println("ass  "+ass);
%>

<%



try{
	int total=0;
	int sno=0;
	Connection con=dbconn.create();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("SELECT count(id) FROM vote.votes where  statu='Voteted' and ass='"+ass+"'  ");
	while(rs.next()){
		total=rs.getInt(1);
	}

		
	
	System.out.println("jgjhbjjhvjvhv");
%>
<div class="mydiv">
<a href="ecmain.jsp">Back</a>
</div>
<br>







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
ResultSet rs1=st.executeQuery("SELECT *,count(cname) FROM vote.votes  where  statu='Voteted' and ass='"+ass+"' group by cname");
while(rs1.next()){
%>

<tr>

<td><%=rs1.getString(2) %></td>
<td><%=rs1.getString(6) %></td>
<td><%=rs1.getString(5) %></td>
<td><%=rs1.getString(4) %></td>
<td><img src="candidate/<%=rs1.getString(3) %>" style="width:90px; heigth:50px;"></td>
<td> <%=rs1.getString(12) %></td>


<%


 b=Integer.valueOf(rs1.getString(12));
for(int i=0;i<100;i++)
{
if(a<b)
{
	
a=b;
}
}

%>
<% 
if(a==b)
{
name=rs1.getString(2);
}
%>
</tr>

<%} %>
<h1>Winner is:<%=name%><h1>
 <h2>Result:<%=name+"-"+a%><h2>

</table>
<h3>Total Vote: <%out.println(total);%></h3>

<a onclick="window.print();">  <button>Print</button></a>
<br><br><br><br>
<%


}
catch(Exception e)
{
	System.out.println(e);
}%>
</body>
</html>