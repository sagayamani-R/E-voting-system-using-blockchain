<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dbcon.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Voter Applications</title>

<!-- Bootstrap 5 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600&display=swap" rel="stylesheet">

<!-- Custom CSS -->
<style>
    body {
        font-family: 'Inter', sans-serif;
        background: linear-gradient(to right, #1e3c72, #2a5298);
        color: white;
        min-height: 100vh;
        display: flex;
        justify-content: center;
        align-items: center;
        padding: 20px;
    }
    
    .container {
        background: rgba(255, 255, 255, 0.1);
        backdrop-filter: blur(12px);
        border-radius: 12px;
        padding: 20px;
        box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3);
        width: 95%;
        max-width: 1000px;
        animation: fadeIn 0.8s ease-in-out;
    }

    .table {
        border-radius: 12px;
        overflow: hidden;
        animation: fadeInUp 0.8s ease-in-out;
    }

    th, td {
        text-align: center;
        vertical-align: middle;
        padding: 12px;
    }

    th {
        background: #1a237e;
        color: white;
        font-weight: 600;
    }

    tr:hover {
        background: rgba(255, 255, 255, 0.2);
        transition: 0.3s ease-in-out;
    }

    .btn-view {
        background: #0d47a1;
        border: none;
        padding: 10px 15px;
        color: white;
        border-radius: 25px;
        transition: all 0.3s ease-in-out;
        font-weight: 600;
    }

    .btn-view:hover {
        background: #1565c0;
        transform: scale(1.1);
    }

    .btn-back {
        background: transparent;
        border: 2px solid white;
        padding: 8px 15px;
        color: white;
        border-radius: 25px;
        transition: all 0.3s ease-in-out;
        font-weight: 600;
    }

    .btn-back:hover {
        background: white;
        color: black;
    }

    @keyframes fadeIn {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }

    @keyframes fadeInUp {
        from { opacity: 0; transform: translateY(30px); }
        to { opacity: 1; transform: translateY(0); }
    }
</style>
</head>

<body>

<div class="container">
    <div class="d-flex justify-content-between align-items-center mb-4">
        <h3 class="text-white fw-bold">Voter Applications</h3>
        <button onclick="goBack()" class="btn btn-back">Go Back</button>
    </div>

    <table class="table table-hover table-dark">
        <thead>
            <tr>
                <th>District</th>
                <th>Assembly Ward</th>
                <th>Mobile Number</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <%
                Connection con = null;
                PreparedStatement ps = null;
                ResultSet rs = null;
                
                try {
                    con = dbconn.create();
                    ps = con.prepareStatement("SELECT * FROM `vote`.`voteid` WHERE status='Apply'");
                    rs = ps.executeQuery();
                    
                    while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getString(1) %></td>
                <td><%= rs.getString(2) %></td>
                <td><%= rs.getString(4) %></td>
                <td>
                    <a href="emview.jsp?email=<%= rs.getString(3) %>&&pic=<%= rs.getString(5) %>">
                        <button class="btn btn-view">View</button>
                    </a>
                </td>
            </tr>
            <% 
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    try {
                        if (rs != null) rs.close();
                        if (ps != null) ps.close();
                        if (con != null) con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            %>
        </tbody>
    </table>
</div>

<script>
function goBack() {
  window.history.back();
}
</script>

</body>
</html>
