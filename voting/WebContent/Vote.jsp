<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="dbcon.dbconn"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="Servlet.LocalDate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<style>
table {
	width: 100%;
}

span {
	color: red;
}
   /* Apply styles to the video container */
.video-background {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    z-index: -1; /* Place the video behind other content */
}

/* Style the video for full-screen display */
video {
    object-fit: cover;
    width: 100%;
    height: 100%;
}

/* Style your webpage content */
.content {
    /* Add your content styles here */
}

</style>
<button onclick="goBack()" class="btn btn-outline-primary"
	style="float: right;">Go Back</button>
<br>
<br>
<%
	String email = session.getAttribute("uname").toString();
%>
<body>

 <div class="video-background">
        <video autoplay loop muted playsinline>
            <source src="image/video (2).mp4" type="video/mp4">
            <!-- Add additional source tags for different video formats if needed -->
        </video>
    </div>

	<center>
		<div class="container-fluid">
			<table class="table  table-hover table-dark">
				<thead>
					<tr class="table-dark">

						<th style="text-align: center;">District</th>
						<th style="text-align: center;">Assembly</th>
						<th style="text-align: center;">Vote key</th>
						<th style="text-align: center;">Vote Here!!</th>


					</tr>
				</thead>
				<%
					String pattern = "yyyy-MM-dd";
					SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
					String date = simpleDateFormat.format(new Date());
					System.out.println(date);
				%>



				<%
					Connection con;

					con = dbconn.create();
					PreparedStatement ps = con
							.prepareStatement("SELECT * FROM `vote`.`voteid` where status='Allot' and edate='"
									+ date + "' and email='" + email + "'");

					ResultSet rs = ps.executeQuery();

					while (rs.next()) {
						String pic = rs.getString(1);

						String dates = rs.getString(7);
				%>





				<tr class="table-dark">

					<td style="text-align: center;"><%=rs.getString(1)%></td>
					<td style="text-align: center;"><%=rs.getString(2)%></td>
					<td style="text-align: center;"><%=rs.getString(8)%></td>

					<td style="text-align: center;"><a
					href="votes.jsp?fkeyl=<%=rs.getString(8)%>&&email=<%=rs.getString(3)%>"><button
								class="btn btn-success" style="text-align: center;">Vote</button></a></td>



				</tr>
				<h4>
					<marquee>
						Election <span>Date</span>
						<%=dates%>
					</marquee>
				</h4>
				<%
					}
				%>






			</table>

		</div>
	</center>

</body>
<script>
	$(window).on(
			"load resize ",
			function() {
				var scrollWidth = $('.tbl-content').width()
						- $('.tbl-content table').width();
				$('.tbl-header').css({
					'padding-right' : scrollWidth
				});
			}).resize();
</script>
<script>
	function goBack() {
		window.history.back();
	}
</script>
</html>