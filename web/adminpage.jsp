<%-- 
    Document   : adminpage
    Created on : 30 May, 2020, 3:43:57 PM
    Author     : Saumya
--%>
<a href="adminpage.jsp"></a>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>admin page</title>
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
      <a class="nav-item nav-link active" href="admin.jsp">Admin</a>
      <a class="nav-item nav-link" href="operator.jsp">Operator</a>
      <a class="nav-item nav-link" href="teacher.jsp">Teacher</a>
      <a class="nav-item nav-link" href="aboutus.jsp">About Us</a>
      <a class="nav-item nav-link" href="project.jsp">log out</a>
      
      
    </div>
  </div>
</nav>
<div>
	<img src="images/adminpage.png" width="1600px" height="800px">
</div>	
    <form>    
<div class="grid-container"> 
       
  <div class="left" style="background-color:#fc4a03;">
   <img src="images/adminp.jpg" height="80px" id="a1">
   <div>
        <input type="submit" name="btnop" id="a2" value="Manipulate operator"/>
   </div>
  </div>
  <div class="middle" style="background: #232526;
background: -webkit-linear-gradient(to right, #414345, #232526);  
background: linear-gradient(to right, #414345, #232526);">
	<img src="images/operatorp.png" height="80px"id="a4">
   <div>
        <input type="submit" name="btntea" id="a3" value="Manipulate teacher"/>
   </div>
</div>  
  <div class="right" style="background-color:#fc4a03;">
  	<img src="images/generate.png" height="80px"id="a4">
   <div>
        <input type="submit" name="btnrep" id="a5" value="Generate Report"/>
        
   </div>
  </div>
    
</div>

    </form>
</body>
</html>
<%
    try{
        if(request.getParameter("btnop")!=null)
             response.sendRedirect("operatorentries.jsp");
        if(request.getParameter("btntea")!=null)
             response.sendRedirect("teacherentries.jsp");
        if(request.getParameter("btnrep")!=null)
             response.sendRedirect("generatereport.jsp");


    }
    catch(Exception ex){
        ex.printStackTrace();
    }
    %>
