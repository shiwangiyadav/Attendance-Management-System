<%-- 
    Document   : teacher
    Created on : 19 Feb, 2020, 6:08:38 PM
    Author     : Saumya
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Teacher login page</title>
	<link rel="stylesheet" href="css/animate.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="admin.css">
	<style type="text/css">
		div img
		{
			height:600px;
			width: 400px;
		}
		#left
		{
			float: left;
			margin-left: 50px; 
		}
		#right
		{
			float: right;
			margin-right: 50px; 
		}
		body{
			background: #659999;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #f4791f, #659999);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #f4791f, #659999); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

		}
	</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">AMS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link" href="project.jsp">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="admin.jsp">Admin</a>
      <a class="nav-item nav-link" href="operator.jsp">Operator</a>
      <a class="nav-item nav-link active" href="teacher.jsp">Teacher</a>
      <a class="nav-item nav-link" href="aboutus.jsp">About Us</a>
      <a class="nav-item nav-link" href="project.jsp">log out</a>

      
    </div>
  </div>
</nav>
	<div id="left">
		<img src="images/teacher2.jpg" class="wow bounceInLeft"/>
	</div>
	<div id="right">
		<img src="images/teacher3.jpg" class="wow bounceInRight"/>
	</div>
	<div class="loginbox">
		<img src="images/avatar.png" class="avatar" />
		<h1>Login Here</h1>
		<form>
			<p>User id</p>
			<input type="text" name="txtid" placeholder="Enter UserId">
			<p>Password</p>
			<input type="password" name="txtpwd" placeholder="Enter Password ">
			<input type="submit" name="btnsub" value="Login">
			<a href="#">Forget Password</a>
		</form>
	</div>
	<script src="js/wow.min.js"></script>
              <script>
              new WOW().init();
              </script>
</body>
</html>
<%
    try{
        
         if(request.getParameter("btnsub")!=null)
        {
            
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/attendancemanagementsystem","project","project");
            Statement st=conn.createStatement();
            String query="select * from teacher";
            ResultSet rs = st.executeQuery(query); 
            while(rs.next()){
                if((rs.getString(1).equals(request.getParameter("txtid")))&&(rs.getString(3).equals(request.getParameter("txtpwd"))))
                      response.sendRedirect("teacherpage.jsp");

            }
             
            
                         
        }
    }catch(Exception ex)
    {
        ex.printStackTrace();
    }
    %>

