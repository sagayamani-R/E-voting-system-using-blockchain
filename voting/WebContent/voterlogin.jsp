<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>voter login</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css1/style.css">
	</head>
<style>
a{
text-decoration:none;
color:black;
}
</style>
	<body>

		<div class="wrapper" style="background-color:#9b828275;">
			<div class="inner">
				<div class="image-holder">
					<img src="image/1.jpg" style= "margin:10px; height:300px;" alt="">
				</div>
				<form action="votlog" method="post">
				
					<h3>VOTER LOGIN HERE!!</h3>
				
					<div class="form-wrapper">
						<input type="text" placeholder="E-Mail" name="email" class="form-control">
						
						<i class="zmdi zmdi-star zmdi-hc-fw"></i>
					</div>
					
					
					<div class="form-wrapper">
						
								<select placeholder="Select District" id="dist" name="pass" onchange="myFunc()" class="form-control" required>
            <option value="">Select District</option>
            <option value="Chennai">Chennai</option>
             <option value="Thiruvallur">Thiruvallur</option>
            </select>
						<i class="zmdi zmdi-lock"></i>
					</div>
					<div class="form-wrapper">
						
						 <select placeholder="Select District" name="assem" class="form-control" required>
            <option  >Assembly</option>
            <option id="as1" >hi</option>
             <option id="as2" >hello</option>
             <option id="as3" >how</option>
             <option id="as4" >are</option>
             </select>
						<i class="zmdi zmdi-lock"></i>
					</div>
					
					<button>Login
						<i class="zmdi zmdi-arrow-right"></i>
					</button>
					<center><br>
					<a href="voterreg.jsp">New Voter Register </a>
					</center>
				</form>
			</div>
		</div>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
	<script>
	function myFunc(){
					var dist=document.getElementById("dist").value;
					
					if(dist=== "Chennai"){
						
						document.getElementById("as1").innerText="Anna nagar";
						document.getElementById("as2").innerText="Perambur";
						document.getElementById("as3").innerText="TNagar";
						document.getElementById("as4").innerText="Guindy";
						
					}
					else if(dist==="Thiruvallur"){ 
						document.getElementById("as1").innerText="Avadi";
						document.getElementById("as2").innerText="Thiruvetriyur";
						document.getElementById("as3").innerText="Poonamalli";
						document.getElementById("as4").innerText="Veppampattu";	
					}
				}
	
	
	
    const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.has('error') && urlParams.get('error') === 'user_not_found') {
        alert("User not found. Please register first.");
        window.location.href = "voterreg.jsp"; // Redirect to registration page
    }


			</script>
</html>