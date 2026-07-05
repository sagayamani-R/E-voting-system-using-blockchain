<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>Election Office</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
<link rel="stylesheet" href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css>
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css1/style.css">
	</head>
<style>
a{
text-decoration:none;
color:black;
 font-family:
}
.h1{
font-family:Old English Text MT;
}
</style>
	<body>

		<div class="wrapper" style="background-color:#758ba5;">
			<div class="inner" style="    background: #47467e5e;">
				<div class="image-holder">
					<img src="image/6.jpeg" style= "margin:10px; height:300px; width:300px;" alt="">
				</div>
				<form action="eclog" method="post">
				<div class="h1">
					<h3>E-C LOGIN HERE!!</h3>
				</div>
					<div class="form-wrapper">
						<input type="text" placeholder="User Name" name="name" class="form-control">
						<i class="zmdi zmdi-star zmdi-hc-fw"></i>
					</div>
					
					<div class="form-wrapper">
						<input type="password" placeholder="Password" name="pass" class="form-control">
						<i class="zmdi zmdi-lock"></i>
					</div>
					
					<button>Login
						<i class="zmdi zmdi-arrow-right"></i>
					</button>
					
				</form>
			</div>
		</div>
		


		
	</body>
	
	<script>
    const urlParams = new URLSearchParams(window.location.search);
    if (urlParams.has('error') && urlParams.get('error') === 'user_not_found') {
        alert("Email or Password is Mismatch. Please Verify That.");
        window.location.href = "eclogin.jsp"; // Redirect to registration page
    }
</script>
</html>