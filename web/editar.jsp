<%-- 
    Document   : editar
    Created on : 30-05-2018, 0:41:57
    Author     : Alumno
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           try{
            String nameSQL=request.getParameter("txtName");
            String UsernameSQL=request.getParameter("txtUsername");
            
            out.println("<p> Usuario: "+request.getParameter("txtName")+"</p>");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jueves10", "root", "");
       
            String query="UPDATE * FROM user";           
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
    </body>
</html>
