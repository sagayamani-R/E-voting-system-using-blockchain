<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Candidate Register</title>
<style>
    * {
        box-sizing: border-box;
        font-family: Arial, Helvetica, sans-serif;
        text-transform: capitalize;
        margin: 0;
        padding: 0;
    }
    body {
        background-color: black;
        background-image: url("image/5.jpeg");
        background-size: cover;
        background-position: center;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background: rgba(0, 0, 0, 0.7);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0px 0px 15px rgba(255, 255, 255, 0.2);
        width: 80%;
        max-width: 500px;
        animation: fadeIn 1s ease-in-out;
    }
    @keyframes fadeIn {
        from { opacity: 0; transform: scale(0.9); }
        to { opacity: 1; transform: scale(1); }
    }
    h2 {
        text-align: center;
        color: white;
        margin-bottom: 20px;
    }
    label {
        color: white;
        font-weight: bold;
        display: block;
        margin-top: 15px;
    }
    input, select, textarea {
        width: 100%;
        padding: 12px;
        margin-top: 5px;
        border: none;
        border-radius: 5px;
        background: rgba(255, 255, 255, 0.2);
        color: white;
        outline: none;
        transition: 0.3s;
    }
    input::placeholder {
        color: rgba(255, 255, 255, 0.7);
    }
    input:focus, select:focus {
        background: rgba(255, 255, 255, 0.3);
    }
    input[type="submit"] {
        width: 100%;
        margin-top: 20px;
        background-color: #009688;
        color: white;
        font-size: 18px;
        cursor: pointer;
        transition: 0.3s;
        border-radius: 5px;
    }
    input[type="submit"]:hover {
        background: white;
        color: #009688;
        border: 1px solid #009688;
    }
    .UN {
        color: white;
    }
</style>
</head>
<body>

<div class="container">
<% String errorMessage = (String) request.getAttribute("errorMessage"); %>
<% if (errorMessage != null) { %>
    <p style="color: red; text-align: center;"><%= errorMessage %></p>
<% } %>

    <h2>Candidate Registration</h2>
    
    <!-- Error Message -->
    <p id="errorMessage" style="color: red; text-align: center; display: none;">
        User not found. Please register.
    </p>

    <form action="canreg" method="post">
        <label for="UN">Your Name</label>
        <input type="text" placeholder="Enter your name" name="name" id="UN" required>

        <label for="email">Email ID</label>
        <input type="email" placeholder="Enter Email ID" name="email" id="email" required>

        <label for="dist">Select District</label>
        <select id="dist" name="district" onchange="updateAssembly()" required>
            <option value="">Select District</option>
            <option value="Chennai">Chennai</option>
            <option value="Thiruvallur">Thiruvallur</option>
        </select>

        <label for="assembly">Select Assembly</label>
        <select id="assembly" name="assembly" required>
            <option value="">Select Assembly</option>
        </select>

        <label for="mobile">Mobile Number</label>
        <input type="tel" name="mobile" id="mobile" placeholder="Enter 10-digit number" required 
               pattern="[0-9]{10}" title="Mobile number must be 10 digits">
        
        <input type="submit" value="Register">
    </form>
</div>

<script>
    // Display error message if user not found
    const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.has('error') && urlParams.get('error') === 'not_found') {
        document.getElementById("errorMessage").style.display = "block";
    }

    function updateAssembly() {
        var dist = document.getElementById("dist").value;
        var assembly = document.getElementById("assembly");

        var assemblyOptions = {
            "Chennai": ["Anna Nagar", "Perambur", "T Nagar", "Guindy"],
            "Thiruvallur": ["Avadi", "Thiruvetriyur", "Poonamallee", "Veppampattu"]
        };

        assembly.innerHTML = '<option value="">Select Assembly</option>';

        if (dist in assemblyOptions) {
            assemblyOptions[dist].forEach(function(area) {
                var opt = document.createElement("option");
                opt.value = area;
                opt.innerText = area;
                assembly.appendChild(opt);
            });
        }
    }
</script>

</body>
</html>
