<%-- 
    Document   : Page1
    Created on : 19-04-2018, 17:08:08
    Author     : abdon_g501
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
    <body style="background-color:#ffffcc;">
    <center>
        <form method="post" action="MostrarDatos.jsp">
            <p>Nombre: <input type="text" name="txtNombre"></p>
            <p>Apellido:<input type="text" name="txtApellido"></p>
            <p>Correo:<input type="email" value placeholder="profepongame@unsiete.cl"name="mail"></p>
            <p>Fecha de nacimiento:<input type="date" name="fecha"></p> 
            <p>Sexo</p> 
            <p>M:<input type="radio" name="sexo" value="Masculino">
            F:<input type="radio" name="sexo" value="Femenino"></p> 
            <p>Direccion:<input type="text" name="txtDireccion"></p> 
            
            <p><input type="submit" value="Enviar"></p>
           <p><input type="reset" value="Limpiar"></p>
        </form>
          
            <p><a href="Error2.jsp"> Volver Inicio</a></p>
            <p><a href="Formulario.jsp"> A Formulario</a></p>
            <p><a href="Error.jsp"> A Datos</a></p>
            <p><a href="index.jsp"> Cerrar Sesion</a></p>
            </center>   
    </body>
</html>
