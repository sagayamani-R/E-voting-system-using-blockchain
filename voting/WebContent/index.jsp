<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home page</title>
<link rel="Stylesheet" href="css/bootstrap.min.css">
</head>
<style>
body{
background-image:url("https://images.unsplash.com/photo-1604065626882-47c3093bec11?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHZvdGV8ZW58MHx8MHx8fDA%3D");
background-size:cover;
}
:nth-child(3) {
  background: yellow;
}
.navbar-nav{
float:rigth;
}
</style>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">HOME</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="float-right" >
    <ul class="navbar-nav">

      <li class="nav-item">
        <a class="nav-link" href="voterlogin.jsp"><button type="button" class="btn btn-danger">VOTER</button></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="eclogin.jsp"><button type="button" class="btn btn-danger">ELECTION COMISSION</button></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="candidatelog.jsp" ><button type="button" class="btn btn-danger">CANDIDATE</button></a>
      </li>
    </ul>
  </div>
</nav>
</body>
</html> --%>

<html>
<head>
  
   <title>DRC Web Design Portfolio</title>

  <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"/>-->

 <style>
 body, html {
  width: 100%;
  height: 100%;
}

body, h1, h2, h3, h4, h5, h6 {
  font-family: 'Varela Round', sans-serif;
  font-weight: 700;
}

.topnav {
  font-size: 16px;
  border-bottom: 1px outset rgba(192, 192, 192, 0.5);
  background: rgba(192, 192, 192, 0.9);
  box-shadow: 0px 1px rgba(0, 0, 0, 0.3);
}
.topnav ul.navbar-nav li a {
  background: rgba(28, 28, 28, 0.1);
  color: #000;
}
.topnav ul.navbar-nav li a:hover, .topnav ul.navbar-nav li a:focus {
  background: rgba(255, 255, 255, 0.5);
  color: #000;
}

.topnav .navbar-brand {
  background: rgba(28, 28, 28, 0.0);
  color: #000;
}

.topnav .navbar-brand:hover, .topnav .navbar-brand:focus {
  background: rgba(255, 255, 255, 0.5);
  color: #000;
}

.lead {
  font-size: 18px;
  font-weight: 400;
}
/*top background*/
.intro-header {
  padding-top: 50px; /* If you're making other pages, make sure there is 50px of padding to make sure the navbar doesn't overlap content! */
  padding-bottom: 30px;
  text-align: center;
  background: url('https://t4.ftcdn.net/jpg/01/22/38/57/360_F_122385787_1kkQ40fLz3X2BwiIlyikUzockRgNiuBa.jpg')
    no-repeat
    center
    center
    fixed;
  background-size: cover;
  height: 450px;
}
.bg-overlay {
  background: rgba(0, 0, 0, 0.3);
  height: 855px;
}

.intro-message {
  position: relative;
  padding-top: 20%;
  padding-bottom: 20%;
}
/*Big header*/
.intro-message > h1 {
  margin-top: -50px;
  text-shadow: 2px 1px 2px #000;
  font-size: 5em;
  color: rgba(255, 255, 255, 0.7);
}

.intro-divider {
  width: 400px;
  border-top: 1px solid #f8f8f8;
  border-bottom: 1px solid rgba(0, 0, 0, 0.2);
}
/*small header*/
.intro-message > h3 {
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.6);
  color: black;
}

@media (max-width: 767px) {
  .intro-message {
    padding-bottom: 15%;
  }

  .intro-message > h1 {
    font-size: 3em;
  }

  ul.intro-social-buttons > li {
    display: block;
    margin-bottom: 20px;
    padding: 0;
  }

  ul.intro-social-buttons > li:last-child {
    margin-bottom: 0;
  }

  .intro-divider {
    width: 100%;
  }
}
/*line*/
hr.intro-divider {
  border: 1px outset rgba(255, 255, 255, 0.2);
  box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.6);
  width: 100%;
}
/* social buttons */
.btn {
  display: inline-block;
  color: #000;
  border: 2px outset rgba(0, 0, 0, 0.9);
  background: #C0C0C0;
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 20);
  box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.5);
  letter-spacing: 2px;
  transition: 0.2s;
}

.btn:hover {
  color: #fff;
  border: 2px outset rgba(0, 0, 0, 0.9);
  background: rgba(0, 0, 0, 0.9);
  transform: scale(1.1);
  transition: 0.2s;
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 20);
  box-shadow: 3px 3px 3px rgba(0, 0, 0, 0.5);
  letter-spacing: 2px;
}

/*section 2*/
.content-section-a {
  padding: 50px 0;
  background: url('https://t4.ftcdn.net/jpg/01/22/38/57/360_F_122385787_1kkQ40fLz3X2BwiIlyikUzockRgNiuBa.jpg')
    no-repeat
    center
    center
    fixed;
  background-size: cover;
  height: 400px;
}
.bg-overlay2 {
  margin-top: -50px;
  background: rgba(255, 255, 255, 0.2);
  height: 855px;
}
/*self-taught*/
.container .link {
  color: rgb(255, 255, 255);
  font-weight: bold;
  font-size: 22px;
}
.container .link-footer {
  color: rgb(0, 0, 0);
  font-weight: bold;
  font-size: 32px;
}
.container .link-footer:hover {
  color: rgba(24, 39, 40, 0.8);
  font-weight: bold;
  font-size: 32px;
}

.container .link:hover {
  color: rgb(0, 0, 128);
  font-weight: bold;
  font-size: 22.5px;
}

h2.section-heading {
  margin-top: 100px;
  font-size: 3em;
  color: rgba(0, 0, 0, 0.9);
}

/*text*/
.content-section-a p {
  font-size: 22px;
  font-weight: bold;
  color: #000;
}
.content-section-a p a {
  color: silver;
  font-weight: bold;
}
/*profile picture*/
.img-circle {
  margin-top: 150px;
  border: 1px outset rgba(255, 255, 255, 0.3);
  box-shadow: 1px 1px 1px rgba(0, 0, 0, 0.6);
}

/* Portfolio section*/
section {
  color: black;
  background: url('https://t4.ftcdn.net/jpg/01/22/38/57/360_F_122385787_1kkQ40fLz3X2BwiIlyikUzockRgNiuBa.jpg')
    no-repeat
    center
    center
    fixed;
  background-size: cover;
}

#below-section {
  color: #000;
}

#small-text {
  color: white;
}

/*.portfolio-item {
  overflow: hidden;
  padding: 7px;
  color: white;
  height: 308px;
}*/
/*Portfolio items*/

#portfolio .portfolio-item {
  margin: 0 0 15px;
  right: 0;
  border: 1px outset rgba(255, 255, 255, 0.6);
}

#portfolio .portfolio-item:hover {
  transition: 0.5s;
  box-shadow: 5px 10px 5px rgba(0, 0, 0, 0.9);
}

#portfolio .portfolio-item .portfolio-link {
  display: block;
  position: relative;
  max-width: 400px;
  margin: 0 auto;
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover {
  background: rgba(0, 0, 0, .7);
  position: absolute;
  width: 100%;
  height: 100%;
  opacity: 0;
  transition: all ease .5s;
  -webkit-transition: all ease .5s;
  -moz-transition: all ease .5s;
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover:hover {
  opacity: 1;
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content {
  position: absolute;
  width: 100%;
  height: 20px;
  font-size: 20px;
  text-align: center;
  top: 50%;
  margin-top: -12px;
  color: #fff;
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content i {
  margin-top: -12px;
}

#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content h3,
#portfolio .portfolio-item .portfolio-link .portfolio-hover .portfolio-hover-content h4 {
  margin: 0;
}

#portfolio .portfolio-item .portfolio-caption {
  max-width: 400px;
  margin: 0 auto;
  background-color: rgba(0, 0, 0, 0.8);
  text-align: center;
  padding: 25px;
}

#portfolio .portfolio-item .portfolio-caption h4 {
  color: #fff;
  text-transform: none;
  margin: 0;
}

#portfolio .portfolio-item .portfolio-caption p {
  font-family: "Droid Serif", "Helvetica Neue", Helvetica, Arial, sans-serif;
  font-style: italic;
  font-size: 13px;
  margin: 0;
}

#portfolio * {
  z-index: 2;
}

@media (min-width: 767px) {
  #portfolio .portfolio-item {
    margin: 0 0 30px;
  }
}

/*.col-md-4 {
  overflow: hidden;
  display: inline-block;
  border: 1px outset rgba(255, 255, 255, 0.6);
  background: rgba(0, 0, 0, 0.6);
  border-radius: 1%;
  text-align: center;
  box-shadow: 2px 3px 2px rgba(0,0,0,0.3);
  text-shadow: 1px 2px 1px rgba(0,0,0,0.3);
  cursor: pointer;
}
.col-md-4:hover {
  transition: 0.5s;
  box-shadow: 5px 10px 5px rgba(0,0,0,0.9);  
}*/

.section-heading-spacer {
  float: left;
  width: 200px;
  border-top: 3px solid #e7e7e7;
}

.banner {
  padding: 100px 0;
  background: url('https://media.istockphoto.com/id/1710661883/photo/online-voting-in-the-ballot-box.webp?b=1&s=170667a&w=0&k=20&c=9NvNdo3y7KQdS3nPdnxo5TTaTVkmcmHjxFzdKgv33_Y=')
    no-repeat
    center
    center
    fixed;
  background-size: cover;
  height: 755px;
}

.bg-overlay4 {
  margin-top: -100px;
  padding: 100px 0;
  background: rgba(255, 255, 255, 0.3);
  height: 755px;
}

.banner ul {
  margin-bottom: 0;
}

.banner-social-buttons {
  float: right;
  margin-top: 0;
}

@media (max-width: 1199px) {
  ul.banner-social-buttons {
    float: left;
    margin-top: 15px;
  }
}

ul.banner-social-buttons > li {
  display: block;
  margin-bottom: 20px;
  padding: 0;
}

ul.banner-social-buttons > li:last-child {
  margin-bottom: 0;
}

h2.connect {
  margin: 0;
  color: rgba(0, 0, 0, 0.9);
}

footer {
  padding: 50px 0;
  background: rgba(192, 192, 192, 0.9);
}

p.copyright {
  margin: 15px 0 0;
}
 
 </style>
   
</head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-fixed-top topnav" role="navigation">
     <div class="navbar-header">
         <div class="container">
            
           <!-- <ul class="list-inline">
            
               <li><a href='#home'>DRC Web Design Home</a></li>
             
               <li><a href="#about">About Us</a></li>
             
                <li><a href="#portfolio">Our Portfolio</a></li>
             
                 <li><a href="#contact">Contact Us</a></li>
                </ul> -->
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>


    <!-- Header -->
    <a name="home"></a>
    <div class="intro-header">
      <div class="bg-overlay">
        <div class="container">
  

            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h1>WEB APPLICATION ONLINE VOTING SYSTEM</h1>
                        <h3></h3>
                        <hr class="intro-divider">
                        
                        
      <!--                    <li class="nav-item">
        <a class="nav-link" href="voterlogin.jsp"><button type="button" class="btn btn-danger">VOTER</button></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="eclogin.jsp"><button type="button" class="btn btn-danger">ELECTION COMISSION</button></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="candidatelog.jsp" ><button type="button" class="btn btn-danger">CANDIDATE</button></a>
      </li> -->
                        
                        
                        
                        
                        
                        
                        
                        <ul class="list-inline intro-social-buttons">
                            <li>
                                <a href="voterlogin.jsp" target="_blank" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">VOTER</span></a>
                            </li>
                            <li>
                                <a href="eclogin.jsp" target="_blank" class="btn btn-default btn-lg "><i class="fa fa-github fa-fw"></i> <span class="network-name">ELECTION COMISSION</span></a>
                            </li>
                            <li>
                                <a href="candidatelog.jsp" target="_blank" class="btn btn-default btn-lg"><i class="fa fa-linkedin fa-fw"></i> <span class="network-name">CANDIDATE</span></a>
                            </li>
                            <!-- <li>
                                <a href="https://www.freecodecamp.org/pauldarcy" target="_blank" class="btn btn-default btn-lg"><i class="fa fa-free-code-camp fa-fw"></i> <span class="network-name">freeCodeCamp</span></a>
                            </li> -->
                        </ul>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->
      </div>
    </div>
    <!-- /.intro-header -->

 <!-- Page Content -->

	
  
     <!-- Portfolio Grid Section -->
   <a  name="portfolio"></a>
    <section id="portfolio" class="bg-light-gray bounds">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    
                  
                    
              
	<a  name="contact"></a>
    <div class="banner">
      <div class="bg-overlay4">
        <div class="container">         
            <div class="row">
                <div class="col-lg-6">
                  <h2 class="connect">
                    <a></a></h2>
                </div>
              </br>
      
         <!--   <ul class="list-inline intro-social-buttons">
                            <li>
                                <a href="https://twitter.com/NoFlippinClue" target="_blank" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                            </li>
                            <li>
                                <a href="https://github.com/PaulDArcy" target="_blank" class="btn btn-default btn-lg "><i class="fa fa-github fa-fw"></i> <span class="network-name">Github</span></a>
                            </li>
                            <li>
                                <a href="https://www.linkedin.com/in/pauldarcy/" target="_blank" class="btn btn-default btn-lg"><i class="fa fa-linkedin fa-fw"></i> <span class="network-name">Linkedin</span></a>
                            </li>
                            <li>
                                <a href="https://www.freecodecamp.org/pauldarcy" target="_blank" class="btn btn-default btn-lg"><i class="fa fa-free-code-camp fa-fw"></i> <span class="network-name">freeCodeCamp</span></a>
                            </li>
                        </ul> -->
          
                              </div>
        </div>
        <!-- /.container -->
    </div>
</div>
</div>
</div>
    <!-- /.banner -->

    <!-- Footer -->
    <footer>
    
        <div class="container">
            <div class="row">
             
            </div>
        </div>
    </footer>

    

<div "text-center">

          </div>
<!---Competences:</br>
Languages and Frameworks:</br>
Javascript, C#m HTML5, CSS3, jQuery, Bootstrap3, Angular.js, Meteor.js, WYSIWYG.</br>
Tools & expertise:</br>
Git, Responsive Web Design, Agile Methodologies, Unity5 3D, Photoshop, VR Level Design, and Unity Generalist.--->

</body>

</html>