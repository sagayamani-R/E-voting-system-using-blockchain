<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.FileInputStream" %>
<%@page import="java.io.IOException" %>
<%@page import="java.io.PrintWriter" %>
<%@page import="javax.swing.JDialog" %>
<%@page import="javax.swing.JOptionPane" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@ page import="dbcon.dbconn" %>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Face Verification</title>
<style>
    body {
        font-family: Arial, sans-serif;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
        background-color: #f2f2f2;
    }

    .container {
        text-align: center;
        padding: 20px;
        border: 2px solid #ddd;
        border-radius: 10px;
        background-color: #ffffff;
        box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    }

    h2 {
        margin-bottom: 20px;
        color: #333;
    }

    .verify-button {
        padding: 10px 20px;
        font-size: 16px;
        color: #ffffff;
        background-color: #007bff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .verify-button:hover {
        background-color: #0056b3;
    }
</style>

</head>
<body>
<%
    String email = request.getParameter("id");
    System.out.println("download0000000000000000000====" + email);
%>

<div class="container">

        
    <h2>Please verify your face to continue to vote</h2>
    
    <!-- Form to pass data to the servlet -->
    <form action="face" method="post">
    <% if (request.getAttribute("errorMessage") != null) { %>
            <div class="alert alert-danger text-center">
                <%= request.getAttribute("errorMessage") %>
            </div>
        <% } %>
        <!-- Hidden input to pass the email -->
        <input type="hidden" name="email" value="<%= email %>">
        <button type="submit" class="verify-button">Verify Your Face</button>
    </form>
</div>

</body>
</html>
