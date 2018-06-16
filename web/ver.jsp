<%-- 
    Document   : ver
    Created on : 30-05-2018, 0:27:51
    Author     : Alumno
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ver</title>
    </head>
    <body>
        <%
        try{
            String nameSQL=request.getParameter("txtName");
            String UsernameSQL=request.getParameter("txtUsername");
            
            out.println("<p> Usuario: "+request.getParameter("txtName")+"</p>");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jueves10", "root", "");
       
            String query="SELECT * FROM user";           
            Statement st=conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            st.executeUpdate(query);
            //cerrar la conexion luego de cada consulta
            
            
            while(rs.next())
            {
            out.println(rs.getString("username"));
        }
        }catch(SQLException ex){
            throw new SQLException(ex);
        }
        %>
        
        <p><a href="listaUsuario.jsp"> Volver Atras</a></p>
        <p><a href="index.jsp"> Cerrar Sesión</a></p>
    </body>
</html>
