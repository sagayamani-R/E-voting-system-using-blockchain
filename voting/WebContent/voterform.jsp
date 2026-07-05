<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Voter Registration</title>
    
    <link rel="stylesheet" href="css1/bootstrap.min.css">
    <link rel="stylesheet" href="css1/font-awesome.min.css">
    
    <style>
        body {
            background-image: url("https://acko-cms.s3.ap-south-1.amazonaws.com/medium_Voter_Card_Verification_in_India_1c98c79d07.png");
            background-size: cover;
            background-position: center;
            font-family: Arial, sans-serif;
        }

        .container {
            margin-top: 30px;
        }

        .card {
            background-color: rgba(0, 0, 0, 0.8);
            color: #fff;
            padding: 20px;
            border-radius: 10px;
            width: 50%;
            margin: auto;
        }

        h3 {
            text-align: center;
            font-weight: bold;
            color: white;
            margin-bottom: 20px;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
            width: 50%;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .error-message {
            color: red;
            display: none;
            text-align: center;
            font-weight: bold;
        }

        #output_image {
            width: 100%;
            max-height: 200px;
            object-fit: cover;
            display: none;
            margin-top: 10px;
            border-radius: 5px;
        }
    </style>
</head>

<% 
    String name = session.getAttribute("uname").toString(); 
    String assem = session.getAttribute("ass").toString();
    String dis = session.getAttribute("dis").toString();
    String mobile = session.getAttribute("mobile").toString();
%>

<body>

    <div class="container">
        <h3>New Voter Registration</h3>
        
        <% if (request.getAttribute("errorMessage") != null) { %>
            <div class="alert alert-danger text-center">
                <%= request.getAttribute("errorMessage") %>
            </div>
        <% } %>

        <form method="post" action="voterapply" enctype="multipart/form-data" onsubmit="return validateForm()">
            <div class="card">

                <div class="form-group">
                    <label for="district">Voter District:</label>
                    <input type="text" class="form-control" id="district" value="<%= dis %>" name="District" readonly>
                </div>

                <div class="form-group">
                    <label for="assembly">Voter Assembly Ward:</label>
                    <input type="text" class="form-control" id="assembly" value="<%= assem %>" name="Assembly" readonly>
                </div>

                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" class="form-control" id="email" value="<%= name %>" name="email" required>
                </div>

                <div class="form-group">
                    <label for="mobile">Mobile:</label>
                    <input type="text" class="form-control" id="mobile" name="mobile" value="<%= mobile %>" placeholder="Enter 10-digit Mobile No" required maxlength="10" pattern="\d{10}" title="Enter a valid 10-digit mobile number">
                    <small class="error-message" id="mobileError">Mobile number must be exactly 10 digits.</small>
                </div>

                <div class="form-group">
                    <label for="photo">Upload Voter ID Pic (*JPG, PNG):</label>
                    <input type="file" class="form-control" name="photo" accept="image/*" onchange="previewImage(event)" required>
                    <img id="output_image" />
                </div>

                <center>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </center>

            </div>
        </form>
    </div>

    <script>
        // Mobile number validation (real-time)
        document.getElementById("mobile").addEventListener("input", function () {
            var mobileInput = this.value;
            var errorMsg = document.getElementById("mobileError");

            if (/^\d{10}$/.test(mobileInput)) {
                errorMsg.style.display = "none";
            } else {
                errorMsg.style.display = "block";
            }
        });

        // Image preview function
        function previewImage(event) {
            var reader = new FileReader();
            reader.onload = function () {
                var output = document.getElementById('output_image');
                output.src = reader.result;
                output.style.display = "block";
            }
            reader.readAsDataURL(event.target.files[0]);
        }

        // Final form validation before submission
        function validateForm() {
            var mobile = document.getElementById("mobile").value;

            if (!/^\d{10}$/.test(mobile)) {
                alert("Please enter a valid 10-digit mobile number.");
                return false;
            }

            return true;
        }
    </script>

</body>
</html>
