<%-- 
    Document   : Error2
    Created on : 03-05-2018, 16:01:37
    Author     : LastKing
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear cuenta</title>
    </head>
    <body style="background-color:#ffffcc;">
        <form method="post" action="Insert.jsp">
            <p>Nombre de usuario: <input type="text" name="txtUsername"></p>    
            <p>Contraseña: <input type="password" name="txtPassword"></p>
            <p>Repetir Contraseña: <input type="password" name="txtPassword2"></p>
            
              
            <p>Nombre: <input type="text" name="txtNombre"></p>          
            <p>Apellido:<input type="text" name="txtApellido"></p>
            
            <p>Correo:<input type="email" value placeholder="profepongame@unsiete.cl"name="mail"></p>
            <p>Fecha de nacimiento:<input type="date" name="fecha"></p> 
            <p>Sexo 
            M:<input type="radio" name="sexo" value="Masculino">
            F:<input type="radio" name="sexo" value="Femenino"></p> 
            <p>Direccion:<input type="text" name="txtDireccion"></p> 
            
            <p><input type="submit" value="Enviar"></p>
           <p><input type="reset" value="Limpiar"></p>
        </form>
          
    </body>
</html>
