<%-- 
    Document   : Bbdd
    Created on : 10-05-2018, 16:26:37
    Author     : abdon_g001
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
        <h1>Hello World!</h1>
        <%//TODO LO COMENTADO ES SOLO PARA LOS SELECT, CON ESTO SE PUEDEN REALIZAR TODO EL RESTO DE LAS
            //CONSULTAS DE MYSQL
        try{
            String nameSQL=request.getParameter("txtName");
            String UsernameSQL=request.getParameter("txtUsername");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jueves10", "root", "");
       
            //String query="SELECT * FROM user";
            String query="INSERT INTO USER VALUES(2,'ADMIN2','" +nameSQL+"','APELLIDO','ADMIN2')";
            Statement st=conn.createStatement();
            //ResultSet rs = st.executeQuery(query);
            st.executeUpdate(query);
            //cerrar la conexion luego de cada consulta
            conn.close();
            
            //while(rs.next())
            {
            //out.println(rs.getString("username"));
        }
        }catch(SQLException ex){
            throw new SQLException(ex);
        }
        %>
        
    </body>
</html>
