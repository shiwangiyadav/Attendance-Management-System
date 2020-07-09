
<%@page import="java.net.ServerSocket"%>
<%@page import="java.net.Socket"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>operator page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="adminpage.css">
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
      <a class="nav-item nav-link active" href="operator.jsp">Operator</a>
      <a class="nav-item nav-link" href="teacher.jsp">Teacher</a>
      <a class="nav-item nav-link" href="aboutus.jsp">About Us</a>
      <a class="nav-item nav-link" href="project.jsp">Logout</a>
      
    </div>
  </div>
</nav>
<div>
	<img src="images/operatorpage.png" width="1365px" height="600px">
</div>	
 <form>
<div class="grid-container"> 
  <div class="left" style="background: #4CB8C4;
background: -webkit-linear-gradient(to right, #3CD3AD, #4CB8C4); 
background: linear-gradient(to right, #3CD3AD, #4CB8C4);
">
   <img src="images/adminp.jpg" height="80px" id="a1">
   <div>
       <input type="submit" name="work" id="a2" value="Working days"/>
   </div>
   
  </div>
  <div class="middle" style="background: #232526;
background: -webkit-linear-gradient(to right, #414345, #232526);  
background: linear-gradient(to right, #414345, #232526);">
	<img src="images/student.png" height="80px"id="a4">
   <div>
       <input type="submit" name="btnstud" id="a3" value="Manipulate student"/>
   	
   </div>
</div>  
  <div class="right" style="background: #4CB8C4;
background: -webkit-linear-gradient(to right, #3CD3AD, #4CB8C4);
background: linear-gradient(to right, #3CD3AD, #4CB8C4); 
">
  	<img src="images/timetable.png" height="80px"id="a4">
   <div>
        <input type="submit" name="btntime" id="a5" value="Time Table"/>
   	
   </div>
  </div>
</div>
</form>
</div>	
</body>
</html>
<%
    try{
        if(request.getParameter("work")!=null)
             response.sendRedirect("workingdays.jsp");
        if(request.getParameter("btnstud")!=null)
             response.sendRedirect("studententries.jsp");
        if(request.getParameter("btntime")!=null)
             response.sendRedirect("schedule.jsp");


    }
    catch(Exception ex){
        ex.printStackTrace();
    }
    %>
