<%-- 
    Document   : Ingreser
    Created on : 12-06-2018, 0:50:08
    Author     : Alumno
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ingresar Requerimiento</title>
    </head>
    <body style="background-color:#ffffcc;">
        
        <fieldset>
            
    <center>
  <form action="newjsp.jsp">      
        <h1>Ingresar requerimiento</h1>
               
        
        <%
         HttpSession User = (HttpSession) request.getSession();
            if(User.getAttribute("txtPass") == null){
                response.sendRedirect("dene.jsp");
            }
 
        %>
        
                 <%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
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
String query="SELECT * FROM depto";
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
out.print("<p>Asignar a: <select>");

while(rs.next()){

    out.print("<option>"+rs.getString("asignar_a")+"</option>");

}
out.print("</select></p>");

}catch(SQLException ex){
    throw new SQLException(ex);
}         

        
        %>   
       
        <%
    
try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/requerimiento","root","");
String query="SELECT * FROM Encargado";
Statement st=conn.createStatement();
ResultSet rs = st.executeQuery(query);
out.print("<p>Encargado: <select>");

while(rs.next()){

    out.print("<option>"+rs.getString("nombreenca")+"</option>");

}
out.print("</select></p>");

}catch(SQLException ex){
    throw new SQLException(ex);
}         

        
        %>       
        
        <p>Requerimiento: <input type="" value placeholder="Ingrese descripcion del requerimiento"></p>
        

 
  <p>   
 <input type="submit" value="Guardar">
 </form> 
<a href="principal.jsp"><input type="submit" value="Volver al menú"></a>
<a href="index.jsp"><input type="submit" value="Salir"></a></p> 
 

 
        
        </center>
</fieldset>
    </body>
</html>
