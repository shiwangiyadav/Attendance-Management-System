<%-- 
    Document   : scedule
    Created on : 10 May, 2020, 12:14:52 AM
    Author     : Saumya
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<a href="schedule.jsp"></a>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"  crossorigin="anonymous">
        <title>Schedule</title>
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
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
.weekDays-selector input {
  display: none!important;
}

.weekDays-selector input[type=checkbox] + label {
  display: inline-block;
  border-radius: 6px;
  background: #dddddd;
  height: 40px;
  width: 30px;
  margin-right: 3px;
  line-height: 40px;
  text-align: center;
  cursor: pointer;
}

.weekDays-selector input[type=checkbox]:checked + label {
  background: #2AD705;
  color: #ffffff;
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
      <a class="nav-item nav-link" href="admin.jsp">Admin</a>
      <a class="nav-item nav-link active" href="operator.jsp">Operator</a>
      <a class="nav-item nav-link " href="teacher.jsp">Teacher</a>
      <a class="nav-item nav-link" href="aboutus.jsp">About Us</a>
      <a class="nav-item nav-link" href="project.jsp">log out</a>
      
    </div>
  </div>
</nav>
        <h1 style="color:white; " id="heading">Maintain Schedule</h1>
        <div id="t1">
            <form>
                <label for="c1">Class</label>
                <input type="text" id="c1" name="class" placeholder="enter the class">
                <label for="tid">Teacher ID</label>
                <input type="text" id="tid" name="tid" placeholder="id of the teacher..">
                <label for="subid">Subject ID</label>
                <input type="text" id="subid" name="subid" placeholder="id of the subject..">
                <div class="weekDays-selector">
  
                    <input type="checkbox" id="weekday-mon" name="week" class="weekday" value="monday" />
                <label for="weekday-mon">M</label>
                <input type="checkbox" id="weekday-tue" name="week" class="weekday" value="tuesday"/>
                <label for="weekday-tue">T</label>
                <input type="checkbox" id="weekday-wed" name="week" class="weekday" value="wednesday"/>
                <label for="weekday-wed">W</label>
                <input type="checkbox" id="weekday-thu" name="week" class="weekday" value="thrusday"/>
                <label for="weekday-thu">T</label>
                <input type="checkbox" id="weekday-fri" name="week" class="weekday" value="friday"/>
                <label for="weekday-fri">F</label>
                <input type="checkbox" id="weekday-sat" name="week" class="weekday" value="saturday"/>
                <label for="weekday-sat">S</label>
                <input type="checkbox" id="weekday-sun" name="week" class="weekday" value="sunday"/>
                <label for="weekday-sun">S</label>
                </div>
                <input type="submit" value="Submit" name="submit">
    
            </form>
        </div>
        <script>
           
    $(document).ready(function() {
        $("input[name='submit']").click(function(){
            
            $.each($("input[name='week']:checked"), function(){
                favorite.push($(this).val());
            });
            alert("week are: " + favorite.join(", "));
        });
    });
</script>
    </body>
</html>
<%
    try{
        String c,t,s;
        c=request.getParameter("class");
        t=request.getParameter("tid");
        s=request.getParameter("subid");
        
        
         if(request.getParameter("submit")!=null)
         {
              Class.forName("org.apache.derby.jdbc.ClientDriver");
          Connection conn=DriverManager.getConnection("jdbc:derby://localhost:1527/attendancemanagementsystem","project","project");
          Statement stmt1=conn.createStatement();
         // for(int i=0;i<length;i++)
          //{
          //int y=stmt1.executeUpdate("insert into week values('"+s+"','"+favourite[i]+"'");
          //}
          Statement stmt=conn.createStatement();
          int x=stmt.executeUpdate("insert into schedule values('"+t+"','"+s+"','"+c+"')");
                 if(x>0)
                    out.println("done successfully");
                else
                    out.println("error");    
         }

    }catch(Exception ex){
        ex.printStackTrace();
    }
    %>
