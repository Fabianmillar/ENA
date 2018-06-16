<%-- 
    Document   : Insert
    Created on : 17-05-2018, 17:12:30
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
        
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                HttpSession Sessions = request.getSession();
             Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jueves10","root","");
                String UsernameSQL=request.getParameter("txtUsername");
                Sessions.setAttribute("txtUsername", UsernameSQL);
                
                String LastnameSQL=request.getParameter("txtApellido");
                Sessions.setAttribute("txtApellido", LastnameSQL);
                
                String NameSQL=request.getParameter("txtNombre");
                Sessions.setAttribute("txtNombre", NameSQL);
                
                String PasswordSQL=request.getParameter("txtPassword");
                Sessions.setAttribute("txtPassword", PasswordSQL);
                
                String PasswordSQL2=request.getParameter("txtPassword2");
                Sessions.setAttribute("txtPassword2", PasswordSQL2);
                
                String CorreoSQL=request.getParameter("mail");
                Sessions.setAttribute("mail", CorreoSQL);
                
                String sexoSQL=request.getParameter("sexo");
                Sessions.setAttribute("sexo", sexoSQL);
                
                String fechaSQL=request.getParameter("fecha");
                 Sessions.setAttribute("fecha", fechaSQL);
                 
               
                if (PasswordSQL.equals("txtPassword")!=PasswordSQL2.equals("txtPassword2") || UsernameSQL.equals("") || PasswordSQL.equals("") || PasswordSQL2.equals("") || fechaSQL.equals("") || CorreoSQL.equals("") || sexoSQL.equals("") || LastnameSQL.equals("") || NameSQL.equals("")) {
                out.println("Campo(s) vacio(s) o contraseñas no coinciden, porfavor verifique.");  
        %>
                  <jsp:include page="registro.jsp"/> 
                  <% 
                  
                }else{
               
 //out.println("Registro Completo.");
 %>
                Registro Completo.  <jsp:include page="registro.jsp"/> 
                  <%  
             String query="INSERT INTO user (username, lastname, name, password) VALUES('"+UsernameSQL+"','"+LastnameSQL+"','"+NameSQL+"','"+PasswordSQL+"')";
             Statement st=conn.createStatement();
             st.executeUpdate(query);
             conn.close();
                
                     
                }}catch(SQLException ex){
                throw new SQLException(ex);
            }
            %>
        
            <p><a href="index.jsp"> Ingresar</a></p>
    </body>
</html>
