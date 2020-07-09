<%-- 
    Document   : takeattendance
    Created on : 30 May, 2020, 4:20:39 PM
    Author     : Saumya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Take attendance</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  crossorigin="anonymous">
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
      <a class="nav-item nav-link " href="admin.jsp">Admin</a>
      <a class="nav-item nav-link" href="operator.jsp">Operator</a>
      <a class="nav-item nav-link active " href="teacher.jsp">Teacher</a>
      <a class="nav-item nav-link" href="aboutus.jsp">About Us</a>
      <a class="nav-item nav-link" href="project.jsp">log out</a>
      </nav> 
      <div class="jumbotron">
          <form>
              <label for="classes">Class :</label>
              <select name="classes" id="classes">
                  <option>B.tech(A)</option>
                  <option>B.tech(B)</option>
                  <option>B.tech(C)</option>
              </select>
              <label for="date">Date:</label>
              <input type="date" id="date" name="birthday">
              <input type="submit" name="btnsub" value="Submit" class=" btn btn-primary "> 
          </form>
        
      </div>
    </body>
</html>
<%
    try
    {
    if(request.getParameter("btnsub")!=null)
        response.sendRedirect("attendancelist.jsp");
    }
    catch(Exception ex){
        ex.printStackTrace();
    }
  %>  