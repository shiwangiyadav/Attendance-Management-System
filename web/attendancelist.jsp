<%-- 
    Document   : newjsp1
    Created on : 6 Mar, 2020, 6:18:27 PM
    Author     : Saumya
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ page import="java.util.ArrayList" language="java" %>
<%!
public int c = 0;
public int x=0;
%>
<!DOCTYPE html>
<html>
<head>
	<title>attendance</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="adminpage.css">
	<style type="text/css">
		
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
  margin-top: 100px;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
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
<form name="f1">
            <a href='#' onclick='javascript:window.open("http://newjsp3.jsp", "_blank", "scrollbars=1,resizable=1,height=300,width=450");' title='Pop Up'></a>
            <table>
                 



  
               
            </table>
            <input type="submit" value="View" name="btn_view" width="0" />
             <input type="submit" value="INSERT" name="btn_insert" width="0" />
<%
    try{
        if(request.getParameter("btn_view")!=null)
    {
   
       
    Class.forName("org.apache.derby.jdbc.ClientDriver");
    Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/attendancemanagementsystem","project","project");
    Statement stmt=conn.createStatement();

    ResultSet rs=stmt.executeQuery("select * from student");
       out.println("<html><body><form name=ff>");
       out.print("<table border='1' cellspacing=5 cellpadding=12  width='100%'>");
       out.println("<table id= 'customers'");
       out.println("<tr><th>Sid</th><th>Sname</th><th>Attendance</th></td>");
       while(rs.next())
            {
                
            out.print("<tr><td name='sid'>"+rs.getString(1)+"</td>");      
            out.print("<td>"+rs.getString(2)+"</td>");
            //out.print("<td><input type='text' name='txtno' value="+p+"  /></td>");
            out.println("<td><select name='txtno'><option>P</option><option>A</option><option>L</option></select></td>");
            
            out.print("</tr>");
            //request.getParameterValues("p");
            c++;
                }
           
         //value="+rs.getInt(1)+"
        out.print("</table>");
       
       
      
        out.println("</form></body></html>");

    }  
    }catch(Exception ex){ex.printStackTrace();}
   %>            


 <%
     try{
      ArrayList<String> ar=new ArrayList<String>();
      //ArrayList<String> re=new ArrayList<String>();
    if(request.getParameter("btn_insert")!=null)
    {
         Class.forName("org.apache.derby.jdbc.ClientDriver");
         Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/attendancemanagementsystem","project","project");
         Statement stmt=conn.createStatement();

        ResultSet rs=stmt.executeQuery("select * from student");
        ResultSet rs1=stmt.executeQuery("select * from attendance");
       // PreparedStatement ps=conn.prepareStatement("update attend set attend=?"); 
        while(rs.next()){
           ar.add((String)rs.getString(1));
        }
        for(String fruit:ar)   {
        int x1=stmt.executeUpdate("insert into attendance(sid) values('"+fruit+"')");
         }
         //re.clear();
         
         String lang[]=request.getParameterValues("txtno");
        for(int i=0; i<lang.length; i++)
        {
           int x=stmt.executeUpdate("insert into attendance(attend) values('"+lang[i]+"')");
            //if(lang[i].equals("P"))
            //{    //PreparedStatement ps=conn.prepareStatement("update attend set attend=attend+1");
              //  while(rs1.next())
               //{
                 //int count=rs1.getInt(2);
         
                //count++;
                //ps.setInt(2,count);
                 //ps.executeUpdate();
            }
        }
            
       // out.println("Data is successfully inserted into database.");
        //for(String obj:re)  
        //{out.println(obj);}  
        //re.clear();
         
     
     }catch(Exception ex)
    {
        ex.printStackTrace();
   }
%>
            </form>
</body>
</html>