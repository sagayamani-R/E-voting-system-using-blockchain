<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css1/bootstrap.min.css">
<title>Insert title here</title>
</head>
<% String pic=request.getParameter("pic");
String email=request.getParameter("email");
String district=request.getParameter("dis");
String assemble=request.getParameter("ass");
String candidate=request.getParameter("candidate");
String party=request.getParameter("party");

%>
<body>
<div class="container">
  
    <h3 style="font-weight: bold; text-align: center;margin-top: 10px">Report Form</h3><br>
  
    <form method="post" action="Eligible" enctype="multipart/form-data">
     <div class="row">
       <div class="card col-sm-5" style="padding-bottom:10px;background-image: radial-gradient(circle, #578574, #50a175, #5cbc68, #7ad54e, #a8eb12);;color:#fff;padding:10px;margin-left:30%;width: 38em;margin-bottom: 25px">
       
         
       <div class="form-group">
          <label for="card_photo"  style="color:#fff;">Candidate Name</label>
          <input type="text" class="form-control" placeholder="Enter password" name="filekey" value="<%=candidate %>" required>
        </div>
        
        <div class="form-group">
          <label for="email"  style="color:#fff;">Candidate</label>
          <input type="hidden" class="form-control" id="email" placeholder="Enter Email" name="cpic" value="<%=pic %>" required>
          <img src="candidate/<%=pic %>" style="width:150px;">
        </div><br>
       
        <div class="form-group">
          <label for="email"  style="color:#fff;">Candidate Email ID:</label>
          <input type="text" class="form-control" id="email" placeholder="Enter Email" name="pemail" value="<%=email%>" required>
          
        </div><br>
        
         <div class="form-group">
          <label for="email"  style="color:#fff;">District :</label>
          <input type="text" class="form-control" id="email" placeholder="Enter Email" name="demail" value="<%=district %>" required>
          
        </div><br>
        
        
        
         <div class="form-group">
          <label for="email"  style="color:#fff;">Assembly Ward :</label>
          <input type="text" class="form-control" id="email"  name="spcl" value="<%=assemble %>" required>
          
        </div><br>
        <div class="form-group">
          <label for="email"  style="color:#fff;">Party:</label>
          <input type="text" class="form-control" id="email"  name="spcl" value="<%=party %>" required>
          
        </div><br>
        
      
      
           
        <div class="form-group">
          <label for="card_photo"  style="color:#fff;">Allot Assemly Symbol:</label>
          <input type="file" class="form-control" placeholder="Enter password" name="photo" required>
        </div>
        <br>
        
        <center><button  class="btn btn-primary btn-block"  style="width:50%;" onclick="return Validate()">Submit</button></center><br>
               
      </div>
    </div>
    <hr>
     
  </form>
</div>
</body>
</html>