<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Voter Registration</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<style>
    * {
        box-sizing: border-box;
        font-family: 'Poppins', sans-serif;
        text-transform: capitalize;
        margin: 0;
        padding: 0;
    }
    body {
        background-color: #ddd;
        background-image: url("image/1.jpg");
        background-size: cover;
        background-position: center;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .form-container {
        background: rgba(255, 255, 255, 0.9);
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        width: 450px;
        animation: fadeIn 1.5s ease-in-out;
    }
    @keyframes fadeIn {
        from {opacity: 0; transform: scale(0.9);}
        to {opacity: 1; transform: scale(1);}
    }
    h2 {
        text-align: center;
        color: #009688;
        margin-bottom: 20px;
        font-weight: bold;
    }
    .form-group {
        margin-bottom: 20px;
        position: relative;
    }
    .form-group input, .form-group select {
        width: 100%;
        padding: 12px;
        border: 2px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        transition: all 0.3s ease-in-out;
    }
    .form-group input:focus, .form-group select:focus {
        border-color: #009688;
        box-shadow: 0 0 8px rgba(0, 150, 136, 0.5);
    }
    .btn-submit {
        display: block;
        width: 100%;
        padding: 12px;
        background-color: #009688;
        color: white;
        font-size: 18px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background 0.3s ease-in-out;
    }
    .btn-submit:hover {
        background-color: white;
        color: #009688;
        border: 2px solid #009688;
    }
    .error-message {
        color: red;
        font-size: 14px;
        display: none;
    }
</style>
</head>
<body>

<div class="form-container">
    <h2>Voter Registration</h2>
    <form action="votreg" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <input type="text" placeholder="Your Name" name="name" required>
        </div>
        <div class="form-group">
            <input type="email" placeholder="Enter Email ID" name="email" required>
        </div>
        <div class="form-group">
            <input type="tel" name="mobile" id="phone-num" placeholder="Mobile Number" required>
            <span class="error-message" id="phone-error">Phone number must be 10 digits</span>
        </div>
        <div class="form-group">
            <select id="dist" name="district" onchange="myFunc()" required>
                <option value="">Select District</option>
                <option value="Chennai">Chennai</option>
                <option value="Thiruvallur">Thiruvallur</option>
            </select>
        </div>
        <div class="form-group">
            <select name="assem" id="assem" required>
                <option value="">Select Assembly</option>
                <option id="as1">Option 1</option>
                <option id="as2">Option 2</option>
                <option id="as3">Option 3</option>
                <option id="as4">Option 4</option>
            </select>
        </div>
        <button type="submit" class="btn-submit">Register</button>
    </form>
</div>

<script>
    function validateForm() {
        var phoneInput = document.getElementById("phone-num");
        var phoneError = document.getElementById("phone-error");

        if (!/^\d{10}$/.test(phoneInput.value)) {
            phoneError.style.display = "block";
            return false;
        } else {
            phoneError.style.display = "none";
            return true;
        }
    }

    function myFunc() {
        var dist = document.getElementById("dist").value;
        var assem = document.getElementById("assem");

        if (dist === "Chennai") {
            document.getElementById("as1").innerText = "Anna Nagar";
            document.getElementById("as2").innerText = "Perambur";
            document.getElementById("as3").innerText = "T Nagar";
            document.getElementById("as4").innerText = "Guindy";
        } else if (dist === "Thiruvallur") {
            document.getElementById("as1").innerText = "Avadi";
            document.getElementById("as2").innerText = "Thiruvetriyur";
            document.getElementById("as3").innerText = "Poonamallee";
            document.getElementById("as4").innerText = "Veppampattu";
        }
    }
</script>

</body>
</html>
