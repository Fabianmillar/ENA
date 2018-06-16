<%-- 
    Document   : logout
    Created on : 15-06-2018, 13:00:24
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#ffffcc;">
        
        <fieldset>
    <center>
        <h1>Sesion Caducada</h1>
        
        <form action="index.jsp">
            <input type="submit" value="Volver Al Inicio">
            
        </form>
        
           

        
        <%
        HttpSession User = (HttpSession)request.getSession();
                
        User.invalidate();
        %>
        
        </center>
        </fieldset>
    </body>
</html>
