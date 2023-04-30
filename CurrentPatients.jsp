<%-- 
    Document   : CurrentPatients
    Created on : Nov 27, 2022, 12:43:33 PM
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
   <center>
       <h1><b><u>Current Patient Details</u></b></h1>
   </center>
       <%@page import = "java.sql.*"%>
    <center>
        <%
            
            try
            {
                ResultSet rs=null;
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","");
                Statement st = con.createStatement();
                String sql = "select * from Patient ";
                rs=st.executeQuery(sql);
                %>
                <table border="1">
                    
                    <tbody>
                        <tr>
                    <br><br>
                    <td><h3>Patient Name</h3></td>
                    <td><h3>Phone No</h3></td>
                    <td><h3>Age</h3></td>
                    <td><h3>Address</h3></td>
                    <td><h3>Doctor</h3></td>
                    <td><h3>Health Issue</h3></td>
                    <td><h3>Gender</h3></td>
                        </tr>
                        <%
                            while(rs.next())
                            {
                                %>
                            
                        <tr>
                            <td><i><%=rs.getString("Name")%></i></td>
                            <td><i><%=rs.getString("Phone")%></i></td>
                            <td><i><%=rs.getString("Age")%></i></td>
                            <td><i><%=rs.getString("Address")%></i></td>
                            <td><i><%=rs.getString("Doctor")%></i></td>
                            <td><i><%=rs.getString("Health")%></i></td>
                            <td><i><%=rs.getString("Gender")%></i></td>
                        </tr>
                    
                
                
                
                
                <%
                    }
                con.close();
            }
            catch(Exception e)
            {
                System.out.println(e);
            }
            




            %>
            </tbody>
                </table>

    </body>
</html>
