<%-- 
    Document   : teacherentries
    Created on : 28 Feb, 2020, 1:48:22 PM
    Author     : Saumya
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  crossorigin="anonymous">
<title>Teacher entries</title>
<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}
#heading{
  margin-left: 505px;
  margin-top: 40px;
}

#t1{
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  margin-right: 350px;
  margin-left: 350px;
  margin-top: 40px;
}

body {
  background: #44A08D;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #093637, #44A08D);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #093637, #44A08D); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */


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
      <a class="nav-item nav-link active" href="admin.jsp">Admin</a>
      <a class="nav-item nav-link" href="operator.jsp">Operator</a>
      <a class="nav-item nav-link" href="teacher.jsp">Teacher</a>
      <a class="nav-item nav-link" href="aboutus.jsp">About Us</a>
      <a class="nav-item nav-link" href="project.jsp">log out</a>
      
    </div>
  </div>
</nav>

<h1 style="color:white; " id="heading">TEACHER ENTRIES</h1>

<div id="t1">
  <form>
    <label for="tid">Id</label>
    <input type="text" id="tid" name="tid" placeholder="id of the teacher..">

    <label for="tname">Name</label>
    <input type="text" id="tname" name="tname" placeholder="name of the teacher..">

    <label for="tpass">Password</label>
    <input type="text" id="tpass" name="tpass" placeholder="password provided to the teacher..">

    <label for="temail">E-mail address</label>
    <input type="text" id="temail" name="temail" placeholder="email address of the teacher..">
  
    <input type="submit" value="Insert" name="btninsert">
    <input type="submit" value="Delete" name="btndelete">
    <input type="submit" value="Update" name="btnupdate">
    <input type="submit" value="View" name="btnview">
  </form>
</div>

</body>
</html>
<%
  try{
      String i,n,p,e;
          i=request.getParameter("tid");
          n=request.getParameter("tname");
          p=request.getParameter("tpass");
          e=request.getParameter("temail");
      if(request.getParameter("btninsert")!=null)
      {
          
          Class.forName("org.apache.derby.jdbc.ClientDriver");
          Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/attendancemanagementsystem","project","project");
          Statement stmt=conn.createStatement();
          int x=stmt.executeUpdate("insert into teacher values('"+i+"','"+n+"','"+p+"','"+e+"')");
                 if(x>0)
                    out.println("done successfully");
                else
                    out.println("error");    
      }
      if(request.getParameter("btnupdate")!=null)
      {
          Class.forName("org.apache.derby.jdbc.ClientDriver");
          Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/attendancemanagementsystem","project","project");
          Statement stmt=conn.createStatement();
          PreparedStatement ps=conn.prepareStatement("update teacher set t_name='"+n+"', t_email='"+e+"'where t_id='"+i+"'");
                int s1=ps.executeUpdate();
                if(s1>0)
                {
                    out.println("record updated successfully");
                }
                else
                    out.println("error in updation");
            }
      if(request.getParameter("btndelete")!=null)
      {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
          Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/attendancemanagementsystem","project","project");
          Statement stmt=conn.createStatement();
          int x=stmt.executeUpdate("delete from teacher where t_id='"+i+"'");
                if(x>0)
                {
                    out.println("deleted successfully");
                }
                else
                    out.println("not deleted");
            }
        
      if(request.getParameter("btnview")!=null)
        {
           Class.forName("org.apache.derby.jdbc.ClientDriver");
          Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/attendancemanagementsystem","project","project");
          Statement stmt=conn.createStatement();
          ResultSet rs=stmt.executeQuery("select * from teacher where t_id='"+i+"'");
             out.println("<html><body><form name=ff>");
             out.print("<div class='jumbotron' color='#ededed'>");
             out.print("<table>");
             while(rs.next())
              {
            
            out.print("<tr><td>Teacher Id :"+rs.getString(1)+"</td></tr>");      
            out.print("<tr><td>Teacher Name :"+rs.getString(2)+"</td></tr>");  
            out.print("<tr><td>Teacher Email :"+rs.getString(4)+"</td></tr>");  
          }
       out.print("</table>");
       
       out.println("</div>");
       
       
       
        out.println("</form></body></html>");
      


        }

      
  }catch(Exception ex){
      ex.printStackTrace();
  }
  %>
