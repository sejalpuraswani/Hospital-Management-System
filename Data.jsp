<%-- 
    Document   : Data
    Created on : Nov 17, 2022, 9:25:29 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="plum">
        <%@page import = "java.sql.*"%>
    <center>
        <%
            String name = request.getParameter("nm");
            String phone = request.getParameter("mob");
            String age = request.getParameter("age");
            String address = request.getParameter("add");
            String doctor = request.getParameter("dr");
            String health = request.getParameter("he");
            String gen = request.getParameter("gen");
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
                Statement st = con.createStatement();
                String sql = "Insert into Patient(Name,Phone,Age,Address,Doctor,Health,Gender)values('"+name+"','"+phone+"','"+age+"','"+address+"','"+doctor+"','"+health+"','"+gen+"')";
                st.executeUpdate(sql);
                out.print("<br><br><br><br><br><br><br><br>"+"<h1><i>Your Appointment Is Scheduled!!</i></h1>");
                out.print("<h1><i>on 25th December at 2pm</i></h1>");
                %>
                
                <form action="CurrentPatients.jsp">
                    <br><br>
                <input  type = "submit" value = "View Current Patients" />
                </form>
                <%
                con.close();
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
            


            %>
    </center>
        
    </body>
</html>

