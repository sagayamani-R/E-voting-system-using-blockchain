<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
body {
   margin: 0;
   font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
   background-image:url("image/10.jpeg");
   background-size:cover;
   
}
nav {
   margin: 0;
   padding: 0;
   width: 250px;
   background-color: #111817a3;
   position: fixed;
   height: 100%;
   overflow: auto;
}
nav a {
   display: block;
   color: rgb(255, 255, 255);
   font-weight: bolder;
   font-size: 20px;
   padding: 16px;
   text-decoration: none;
   font-family: "Times New Roman", Times, serif;
}
nav a.selected {
      background-color: rgb(235 231 228);
    color: rgb(56 5 5 / 78%);
}
nav a:hover:not(.selected) {
   background-color: white;
   color: #2f77e4;
}
div.content {
   margin-left: 200px;
   padding: 1px 16px;
   height: 1000px;
}
@media screen and (max-width: 700px) {
nav {
   width: 100%;
   height: auto;
   position: relative;
}
nav a {float: left;}
div.content {margin-left: 0;}
}h1{
margin: 180px 8px 27px 54px;
color:white;
}
</style>
</head>
<body>
<nav class="sideBar">
<a class="selected" href="index.jsp">Home</a>
<a href="voterform.jsp">Apply</a>
<a href="Vote.jsp">Vote</a>



 <a href="voterlogin.jsp">LOGOUT</a>
</nav>
<div class="content">
<center>
<h1>VOTERS</h1>
</center>

</div>
</body>
</html>
