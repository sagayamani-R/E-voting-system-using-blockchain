<html>
 <%@page import="java.util.*" %>
<link rel="stylesheet" href="css1/bootstrap.min.css">
<head>
  <title>Form Validation</title>
  <Style>
body{
background-image:url("image/24.jpg");
background-size:cover;
}

#sig-canvas {
  border: 2px dotted #CCCCCC;
  border-radius: 15px;
  cursor: crosshair;
}
</Style>
  
</head>
<% String email=request.getParameter("email");
String ass=request.getParameter("ass");
String dis=request.getParameter("dis");
String mobile=request.getParameter("mobile");
String pic=request.getParameter("pic");%>
<body>
<form action="nomination" method="post" enctype="multipart/form-data"><br>
<h3>
complainer Details </h3>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Candidate image</label>
      <img  src="candidate/<%=pic %>" width="100px" height="80px" alt="Card image cap">
            <input type="hidden" class="form-control" id="inputPassword4" name="pic" value="<%=pic %>"  placeholder="Enter Email Address" readonly>
      
    </div>
    <div class="form-group col-md-6">
      <label for="inputPassword4">Email:</label>
      <input type="email" class="form-control" id="inputPassword4" name="email"  value="<%=email %>" placeholder="Enter Email Address" readonly>
    </div>
  </div>
  <div class="form-group">
    <label for="inputAddress"></label>
    <input type="text" class="form-control" id="inputAddress" name="add"  value="<%=dis %>" placeholder="Ex 1234 Main St" readonly>
  </div>
  
     <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">Full Name</label>
      <input type="text" name="doc" value="<%=ass %>" class="form-control" id="inputCity" readonly>
    </div>
   
    <div class="form-group col-md-4">
      <label for="inputZip">Contact Number</label>
      <input type="number" name="number" value="<%=mobile %>" class="form-control" id="inputZip" readonly>
    </div>
 
  
         </div>
  
    <h3>Candidate declaration</h3>
   I am aware that making a statement or declaration which is false and which I know or believe to be false or do not believe to be true, is
  punishable under Section 31 of the Representation of the People Act, 1950 (43 of 1950).
  

 
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Candidate Name</label>
      <input type="text" name="type" class="form-control" id="inputCity" required>
    </div>
    </div>
     <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">Date </label>
      <input type="date" name="street" class="form-control" id="inputCity" required>
    </div>
  </div>
  
  
   <div class="row">
			<div class="col-md-12">
			      <label for="inputCity">Signature </label>
			
		 		<canvas id="sig-canvas" name="photo" width="620" height="160">
		 		
		 		</canvas>
		 	</div>
		</div>
	
      
        
<center><br>
  <button type="submit" class="btn btn-primary">SUBMIT </button>
  </center>
</form>
</body>
<!-- 
<script>
(function() {
	  window.requestAnimFrame = (function(callback) {
	    return window.requestAnimationFrame ||
	      window.webkitRequestAnimationFrame ||
	      window.mozRequestAnimationFrame ||
	      window.oRequestAnimationFrame ||
	      window.msRequestAnimaitonFrame ||
	      function(callback) {
	        window.setTimeout(callback, 1000 / 60);
	      };
	  })();

	  var canvas = document.getElementById("sig-canvas");
	  var ctx = canvas.getContext("2d");
	  ctx.strokeStyle = "#222222";
	  ctx.lineWidth = 4;

	  var drawing = false;
	  var mousePos = {
	    x: 0,
	    y: 0
	  };
	  var lastPos = mousePos;

	  canvas.addEventListener("mousedown", function(e) {
	    drawing = true;
	    lastPos = getMousePos(canvas, e);
	  }, false);

	  canvas.addEventListener("mouseup", function(e) {
	    drawing = false;
	  }, false);

	  canvas.addEventListener("mousemove", function(e) {
	    mousePos = getMousePos(canvas, e);
	  }, false);

	  // Add touch event support for mobile
	  canvas.addEventListener("touchstart", function(e) {

	  }, false);

	  canvas.addEventListener("touchmove", function(e) {
	    var touch = e.touches[0];
	    var me = new MouseEvent("mousemove", {
	      clientX: touch.clientX,
	      clientY: touch.clientY
	    });
	    canvas.dispatchEvent(me);
	  }, false);

	  canvas.addEventListener("touchstart", function(e) {
	    mousePos = getTouchPos(canvas, e);
	    var touch = e.touches[0];
	    var me = new MouseEvent("mousedown", {
	      clientX: touch.clientX,
	      clientY: touch.clientY
	    });
	    canvas.dispatchEvent(me);
	  }, false);

	  canvas.addEventListener("touchend", function(e) {
	    var me = new MouseEvent("mouseup", {});
	    canvas.dispatchEvent(me);
	  }, false);

	  function getMousePos(canvasDom, mouseEvent) {
	    var rect = canvasDom.getBoundingClientRect();
	    return {
	      x: mouseEvent.clientX - rect.left,
	      y: mouseEvent.clientY - rect.top
	    }
	  }

	  function getTouchPos(canvasDom, touchEvent) {
	    var rect = canvasDom.getBoundingClientRect();
	    return {
	      x: touchEvent.touches[0].clientX - rect.left,
	      y: touchEvent.touches[0].clientY - rect.top
	    }
	  }

	  function renderCanvas() {
	    if (drawing) {
	      ctx.moveTo(lastPos.x, lastPos.y);
	      ctx.lineTo(mousePos.x, mousePos.y);
	      ctx.stroke();
	      lastPos = mousePos;
	    }
	  }

	  // Prevent scrolling when touching the canvas
	  document.body.addEventListener("touchstart", function(e) {
	    if (e.target == canvas) {
	      e.preventDefault();
	    }
	  }, false);
	  document.body.addEventListener("touchend", function(e) {
	    if (e.target == canvas) {
	      e.preventDefault();
	    }
	  }, false);
	  document.body.addEventListener("touchmove", function(e) {
	    if (e.target == canvas) {
	      e.preventDefault();
	    }
	  }, false);

	  (function drawLoop() {
	    requestAnimFrame(drawLoop);
	    renderCanvas();
	  })();

	  function clearCanvas() {
	    canvas.width = canvas.width;
	  }

	  // Set up the UI
	  var sigText = document.getElementById("sig-dataUrl");
	  var sigImage = document.getElementById("sig-image");
	  var clearBtn = document.getElementById("sig-clearBtn");
	  var submitBtn = document.getElementById("sig-submitBtn");
	  clearBtn.addEventListener("click", function(e) {
	    clearCanvas();
	    sigText.innerHTML = "Data URL for your signature will go here!";
	    sigImage.setAttribute("src", "");
	  }, false);
	  submitBtn.addEventListener("click", function(e) {
	    var dataUrl = canvas.toDataURL();
	    sigText.innerHTML = dataUrl;
	    sigImage.setAttribute("src", dataUrl);
	  }, false);

	})();
</script> -->

</html>