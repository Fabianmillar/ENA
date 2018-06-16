<%-- 
    Document   : consu
    Created on : 12-06-2018, 21:51:33
    Author     : Alumno
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Requerimiento</title>
    </head>
    <body style="background-color:#ffffcc;">
        <fieldset>
    <center>
        <h1>Consultar Requerimiento</h1>  
       <%
         HttpSession User = (HttpSession) request.getSession();
            if(User.getAttribute("txtPass") == null){
                response.sendRedirect("dene.jsp");
            }
 
        %>
        
        
  <%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Requerimiento","root","");
String query="SELECT * FROM Gerencia";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.print("<p>Gerencia: <select>");

while(rs.next()){
    out.print("<option>"+rs.getString("nombregerencia")+"</option>");

}
out.print("</select></p>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>  
           
        
        
        <%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
String query="SELECT * FROM Depto";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.print("<p>Depto: <select>");

while(rs.next()){
    out.print("<option>"+rs.getString("nombredepto")+"</option>");
    
}
out.print("</select></p>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>  
             
        
         <%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
String query="SELECT * FROM Asignado_a";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.print("<p>Asignado a: <select>");
while(rs.next()){

    out.print("<option>"+rs.getString("asignar_a")+"</option>");
}
out.print("</select></p>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>  
                               
        
        <p><input type="submit" value="Buscar"></p>
        
        
        
        <%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
String query="SELECT * FROM Gerencia";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.print("<table>");
out.print("<th>Gerencia</th>");
//out.print("<th>Depto.</th>");
//out.print("<th>Asignado a</th>");
//out.print("<th>Requerimiento</th>");
while(rs.next()){
    out.print("<tr>");
    out.print("<td>"+rs.getString("nombregerencia")+"</td>");
    //out.print("<td>"+rs.getString("nombredepto")+"</td>");
    //out.print("<td>"+rs.getString("asignar")+"</td>");
    //out.print("<td>"+rs.getString("requeri")+"</td>");
    
    //out.print("</tr>");
}
//out.print("</table>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>

      <%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
String query="SELECT * FROM Depto";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
//out.print("<table>");
//out.print("<th>Gerencia</th>");
out.print("<th>Depto.</th>");
//out.print("<th>Asignado a</th>");
//out.print("<th>Requerimiento</th>");
while(rs.next()){
    //out.print("<tr>");
    //out.print("<td>"+rs.getString("username")+"</td>");
    out.print("<td>"+rs.getString("nombredepto")+"</td>");
    //out.print("<td>"+rs.getString("name")+"</td>");
    //out.print("<td>"+rs.getString("lastname")+"</td>");
    
    //out.print("</tr>");
}
//out.print("</table>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>



       <%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
String query="SELECT * FROM Asignado_a";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
//out.print("<table>");
//out.print("<th>Gerencia</th>");
//out.print("<th>Depto.</th>");
out.print("<th>Asignado a</th>");
//out.print("<th>Requerimiento</th>");
while(rs.next()){
    //out.print("<tr>");
    //out.print("<td>"+rs.getString("username")+"</td>");
    //out.print("<td>"+rs.getString("nombredepto")+"</td>");
    out.print("<td>"+rs.getString("asignar_a")+"</td>");
    //out.print("<td>"+rs.getString("lastname")+"</td>");
    
    //out.print("</tr>");
}
//out.print("</table>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>


      <%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
String query="SELECT * FROM reque";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
//out.print("<table>");
//out.print("<th>Gerencia</th>");
//out.print("<th>Depto.</th>");
//out.print("<th>Asignado a</th>");
out.print("<th>Requerimiento</th>");
while(rs.next()){
    //out.print("<tr>");
    //out.print("<td>"+rs.getString("username")+"</td>");
    //out.print("<td>"+rs.getString("nombredepto")+"</td>");
    //out.print("<td>"+rs.getString("name")+"</td>");
    out.print("<td>"+rs.getString("nombrere")+"</td>");
    
    out.print("</tr>");
}
out.print("</table>");

}catch(SQLException ex){
    throw new SQLException(ex);
}          %>

        
<p>
<a href="principal.jsp"><input type="submit" value="Volver al menú"></a>
<a href="index.jsp"><input type="submit" value="Salir"></a></p> 


</center>
</fieldset>
    </body>
</html>
