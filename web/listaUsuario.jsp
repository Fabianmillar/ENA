<%-- 
    Document   : Lista
    Created on : 18-05-2018, 16:37:38
    Author     : abdon_g401
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista</title>
    </head>
    <body style="background-color:#ffffcc;">
    <center>
        <h1>Lista</h1>

        <%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jueves10","root","");
String query="SELECT * FROM user";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.print("<table>");
out.print("<th>Usuario</th>");
out.print("<th>Contraseña</th>");
out.print("<th>Nombre</th>");
out.print("<th>Apellido</th>");
while(rs.next()){
    out.print("<tr>");
    out.print("<td>"+rs.getString("username")+"</td>");
    out.print("<td>"+rs.getString("password")+"</td>");
    out.print("<td>"+rs.getString("name")+"</td>");
    out.print("<td>"+rs.getString("lastname")+"</td>");
    out.print("<td><a href=\"eli.jsp\">ELI</a></td> ");
    out.print("<td><a href=\"editar.jsp\"> ED</a></td> ");
    out.print("<td><a href=\"ver.jsp\">BER</a></td> ");
    
    out.print("</tr>");
}
out.print("</table>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>
            
       <p><a href="index.jsp"> Cerrar Sesión</a></p>     
        </center>
    </body>
</html>
