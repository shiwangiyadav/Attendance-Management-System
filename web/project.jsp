<%-- 
    Document   : project
    Created on : 19 Feb, 2020, 5:55:48 PM
    Author     : Saumya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title></title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  crossorigin="anonymous">
  
  <link href="https://fonts.googleapis.com/css?family=Bebas+Neue|Indie+Flower|Pacifico&display=swap" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Acme|Montserrat+Subrayada|Varela+Round&display=swap" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="project.css">

</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">AMS</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="navbar-nav">
      <a class="nav-item nav-link active" href="project.jsp">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link" href="admin.jsp">Admin</a>
      <a class="nav-item nav-link" href="operator.jsp">Operator</a>
      <a class="nav-item nav-link" href="teacher.jsp">Teacher</a>
      <a class="nav-item nav-link" href="aboutus.jsp">About Us</a>
      <a class="nav-item nav-link" href="project.jsp">Log out</a>

      
    </div>
  </div>
</nav>

  <h1 class="display-1" font color="white">Attendance Management System</h1>
</div>
</br>
</br>
</br>
</br>
</br>
</br>

<div id="ima">
   <div class="col-sm-3">
      <img src="images/images.jpg" class="img-responsive" style="width:100%" alt="Image" id="ig">
    </div>
    
   <div class="col-sm-3">
      <img src="images/admina.png" class="img-responsive" style="width:100%" alt="Image" id="ig2">
    </div>
   <div class="col-sm-3">
      <img src="images/operator2.jpg" class="img-responsive" style="width:100%" alt="Image" id="ig3">
    </div>
   </div>
<form>
   <div id=but>
     <div class="col-sm-3">
         <input type="submit" class="btn btn-light " id="but1" name="b1" value="Admin">
     </div>
     <div class="col-sm-3">
       <input type="submit" class="btn btn-light " id="but2" name="b2" value="Operator">

     </div>
     <div class="col-sm-3">
       <input type="submit" class="btn btn-light " id="but3" name="b3" value="Teacher"> 
     </div>
   </div>
</form>   
  </div>
</body>
</html>
<%
    try{
        if(request.getParameter("b1")!=null)
             response.sendRedirect("admin.jsp");
        if(request.getParameter("b2")!=null)
             response.sendRedirect("operator.jsp");
        if(request.getParameter("b3")!=null)
             response.sendRedirect("teacher.jsp");


    }
    catch(Exception ex){
        ex.printStackTrace();
    }
    %>
