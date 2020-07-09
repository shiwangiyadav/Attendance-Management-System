<%-- 
    Document   : workingdays
    Created on : 31 May, 2020, 12:39:13 PM
    Author     : Saumya
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Working days</title>
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
      <a class="nav-item nav-link" href="admin.jsp">Admin</a>
      <a class="nav-item nav-link active" href="operator.jsp">Operator</a>
      <a class="nav-item nav-link " href="teacher.jsp">Teacher</a>
      <a class="nav-item nav-link" href="aboutus.jsp">About Us</a>
      <a class="nav-item nav-link" href="project.jsp">log out</a>
      </nav> 
        <form>
        <div class="jumbotron" allign="center">
            <label for="mon">Month :</label>
            <input type="text" name="month" id="mon" />
            <label for="d">Working Days :</label>
            <input type="text" name="day" id="d"/>
            <input type="submit" name="btnsub" value="Update" class="btn btn-primary" allign="center"/>
        </div>
        </form>
    </body>
</html>
<%
    try{
        String m=(String)request.getParameter("month");
        int d=Integer.parseInt(request.getParameter("day"));
        if(request.getParameter("btnsub")!=null)
      {
          Class.forName("org.apache.derby.jdbc.ClientDriver");
          Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/attendancemanagementsystem","project","project");
          Statement stmt=conn.createStatement();
          PreparedStatement ps=conn.prepareStatement("update working set days="+d+"where monthname='"+m+"'");
                int s1=ps.executeUpdate();
                if(s1>0)
                {
                    out.println("Working days updated successfully");
                }
                else
                    out.println("error in updation");
            }

    }
    catch(Exception ex){
        ex.printStackTrace();
    }
    %>
