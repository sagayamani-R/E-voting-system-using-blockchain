<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Candidate register</title>
<style>{
    box-sizing: border-box;
    font-family: Arial, Helvetica, sans-serif;
    text-transform: capitalize;
}
body{
    background-color: black;
    background-image:url("image/5.jpeg");
    background-size:cover;
}
.form{
    display: flex;
    justify-content: center;
    gap: 20px;
}
.column1 input,.column2 input,.column2 textarea{
    border: none;
    border-bottom: solid 1px rgba(0, 0, 0, 0.3);
    padding: 15px;
    margin-left: 10px;
    margin-bottom: 30px;
    display: block;
    width: 350px;
}
.column1 label,.column2 label{
    display: inline-block;
    margin-left: 10px;
    margin-bottom: 10px;
    font-weight: bold;
}
input[type="submit"]{
    color: white;
    text-align: center;
    font-size: larger;
    background-color: #009688;
    border: none;
    width: 131px;
    margin-left: 570px;
    height: 50px;
    border-radius: 5px;
    cursor: pointer;
}
input[type="submit"]:hover{
    border: solid #009688 1px;
    background-color: white;
    color: #009688;
}
.UN{
color:white;}
</style>
</head>
<body>
<form action="count.jsp" method="post">
<div class="form">
        <div class="column1">
          
           
            <br><br><br>
               <input type="text" placeholder="Candidate Name" name="cname" id="date" required>
            <input type="text" placeholder="Party" name="dis" id="UN" required>
            
             <input type="text" placeholder="Assembly" name="ass" id="date" required>
           
           
            
           
        </div>
        
    </div>
    <input type="submit" value="submit">
                                         </form>
                                         </body>
                                          		
</html>