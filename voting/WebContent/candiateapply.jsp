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
<title>Insert title here</title>
 <link rel="stylesheet" href="css1/bootstrap.min.css">
    <link rel="stylesheet" href="css1/font-awesome.min1.css">
  <style>
  body {
/*   background-image:url("image/15.jpeg");
  background-size:cover;
 */
  }
  
 

 </style>  
    
</head>
<% String name=session.getAttribute("cemail").toString();
String asse=session.getAttribute("cass").toString();
String diss=session.getAttribute("cdis").toString();
String mobile=session.getAttribute("mobile").toString();%>
<body>

  <div class="container" >
    <h3 style="font-weight: bold; text-align: center;margin-top: 10px;color:white">Candidate Register...!!!</h3><br>
     <% if (request.getAttribute("errorMessage") != null) { %>
            <div class="alert alert-danger text-center">
                <%= request.getAttribute("errorMessage") %>
            </div>
        <% } %>
    <form method="post" action="candiapply" enctype="multipart/form-data">
     <div class="row">
       <div class="card col-sm-6" style="padding-bottom:10px;background-color: #333;color:#fff;padding:10px;margin-left:25%;width: 38em;margin-bottom: 25px">
     
     
      <div class="form-group">
     
     <label for="cars" style="color:#fff;">Choose District:</label>

<input type="text" name="District" value="<%=diss%>" class="form-control" id="tl" onchange=getval(this) readonly> 
  
     
        </div>
     
     
        <div class="form-group">
          <label for="full_name" style="color:#fff;">Voter Assembly Ward:</label>
          <input type="text" class="form-control" id="full_name" placeholder="Enter Full Name" name="name" value="<%=asse %>" id="al" readonly>
        </div>
        <div class="form-group">
          <label for="email"  style="color:#fff;">Email :</label>
          <input type="email" class="form-control" id="email" value="<%=name %>" placeholder="Enter Email" name="email"  readonly>
          
        </div>
        <div class="form-group">
          <label for="text"  style="color:#fff;">Mobile :</label>
          <input type="text" class="form-control" id="email" value="<%=mobile %>" placeholder="Enter contact No " name="mobile" maxlength="10" pattern="\d{10}" required>
          </div>
        

          

        <div class="form-group">
          <label for="card_photo"  style="color:#fff;">Upload Voter Id Pic (*JPG, PNG):</label>
          <input type="file" class="form-control" placeholder="Enter password" name="photo" accept="image/*" onchange="preview_image(event)" required>
        </div>
        <div class="form-group">
          <label  style="color:#fff;">Picture Here!!!</label><br>
          <img src="" id="output_image"/ height="200px">
        </div>
        <center><button id="submit" name="donator_register" class="btn btn-primary btn-block"  style="width:50%;" onclick="return Validate()">Submit</button></center><br>
      </div>
    </div>
    <hr>
   
  </form>
</div>
<table class="table">
  <thead>
    <tr>
      <th scope="col">District</th>
      <th scope="col">Mobile Number</th>
      <th scope="col">Assembly</th>
      <th scope="col">Candidate</th>
     
      <th scope="col">Applied</th>
             </tr>
  </thead>
  <tbody>
   <%
       
       Connection con;
       
       
       con=dbconn.create();
       PreparedStatement ps=con.prepareStatement("SELECT * FROM `vote`.`candidateid` where email='"+name+"' and status='Accepted'");
       
       ResultSet rs=ps.executeQuery();
       
       while(rs.next())
       {
    	String pic=rs.getString(5);
    	  
    	   
       %>
   <tr>
  
      <td><%=rs.getString(1) %></td>
      <td><%=rs.getString(4) %></td>
      <td><%=rs.getString(2) %></td>
      <td><img  src="candidate/<%=pic %>" width="100px" height="80px" alt="Card image cap"></td>
             <td style="text-align: left;"><a href="candidateapp.jsp?email=<%=rs.getString(3)%>&&ass=<%=rs.getString(2)%>&&dis=<%=rs.getString(1)%>&&mobile=<%=rs.getString(4)%>&&pic=<%=rs.getString(5)%>"><button class="btn btn-dark">Form</button></a></td> 
    
    </tr>
  </tbody>
</table>

<%} %>
</body>

<script type='text/javascript'>
  function preview_image(event)
  {
    var reader = new FileReader();
    reader.onload = function()
    {
      var output = document.getElementById('output_image');
      output.src = reader.result;
    }
    reader.readAsDataURL(event.target.files[0]);
  }
  </script>
  
  <script type='text/javascript'>
  function getval(sel)
  {	console.log(sel.value);
     if(sel.value=="Chennai"){
    	 console.log(sel.value);
     	document.getElementById('al').value=RK NAGAR;
     	document.getElementById('al').value=PERAMBUR;

     }
     else if(sel.value=="Kanchipuram"){
    	 console.log(sel.value);
    	 document.getElementById('al').value=KK NAGAR;
    	 document.getElementById('al').value=ANNA NAGAR;

     }
     else if(sel.value=="Thiruvallur"){
    	 console.log(sel.value);
    	 document.getElementById('al').value=VILLIVAKKAM;
    	 document.getElementById('al').value=AMBATUR;

     }
     else {
    	 document.getElementById('al').value=50;
      }
  }  

  </script>
  
       

</html>