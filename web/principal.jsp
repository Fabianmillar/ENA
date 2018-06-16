<%-- 
    Document   : principal
    Created on : 11-06-2018, 23:44:56
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú principal</title>
    </head>
    <body style="background-color:#ffffcc;">
        
        <fieldset>
    <center>
        
        <h1>Menú principal</h1>
        <%
         HttpSession User = (HttpSession) request.getSession();
            if(User.getAttribute("txtPass") == null){
                response.sendRedirect("dene.jsp");
            }
 
        %>
        
        <p><a href="Ingreser.jsp">Ingresar Requerimiento</a></p>
        <p><a href="consu.jsp">Consultar Requerimiento</a></p>
        <p><a href="cerr.jsp">Cerrar Requerimiento</a></p>  
        
        
        <p><a href="index.jsp"><input type="submit" value="Salir"></a></p> 
        
        </center>
            </fieldset>
    </body>
</html>
