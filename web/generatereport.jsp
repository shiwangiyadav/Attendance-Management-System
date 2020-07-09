<%-- 
    Document   : generatereport
    Created on : 31 May, 2020, 11:00:28 AM
    Author     : Saumya
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Generate report</title>
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
      <a class="nav-item nav-link" href="project.html">Home <span class="sr-only">(current)</span></a>
      <a class="nav-item nav-link active" href="admin.html">Admin</a>
      <a class="nav-item nav-link" href="operator.hrml">Operator</a>
      <a class="nav-item nav-link " href="teacher.html">Teacher</a>
      <a class="nav-item nav-link" href="aboutus.jsp">About Us</a>
      <a class="nav-item nav-link" href="project.jsp">log out</a>
      </nav> 
      <div class="jumbotron">
          <form>
              <label for="s">Student Id :</label>
              <input type="text" name="sid" id="s"/>
              <label for="m">Month :</label>
              <input type="text" name="mon" id="m" />
              
              <input type="submit" name="btnsub" value="Submit" class=" btn btn-primary "> 
          </form>
        
      </div>
    </body>
</html>
<%
    try{
        String sid=(String)request.getParameter("sid");
        String mon=(String)request.getParameter("mon");
        if(request.getParameter("btnsub")!=null)
        { Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/attendancemanagementsystem","project","project");
    Statement stmt=conn.createStatement();
    ResultSet rs1=stmt.executeQuery("select * from working where monthname='"+mon+"'");
     int d=0;
    while(rs1.next()){
       d=rs1.getInt(2);
      
    }
    ResultSet rs2=stmt.executeQuery("select * from attendance where s_id='"+sid+"'");
    int p=0;
    while(rs2.next()){
        p=rs2.getInt(2);

    }
   
   float per=0;
    per=(float)((p*100)/d);
        
    
    ResultSet rs=stmt.executeQuery("select * from student where s_id='"+sid+"'");
      out.println("<html><body><form name=ff>");
      out.print("<div class='jumbotron' color='#ededed'>");
      out.print("<table>");
      while(rs.next())
            {
            
            out.print("<tr><td>Student Id :"+rs.getString(1)+"</td></tr>");      
            out.print("<tr><td>Student Name :"+rs.getString(2)+"</td></tr>");  
            out.print("<tr><td>Student Class :"+rs.getString(3)+"</td></tr>");  
            out.print("<tr><td>Student Email :"+rs.getString(4)+"</td></tr>");  
            out.print("<tr><td>Student Attendance Percentage: "+per+"</td></tr>");
            
        
          }
       out.print("</table>");
       
       out.println("</div>");
       
       
       
        out.println("</form></body></html>");
      
        
    }
    }
    catch(Exception ex){
        ex.printStackTrace();
    }
    %>