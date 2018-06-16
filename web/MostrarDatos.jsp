<%-- 
    Document   : Datos
    Created on : 19-04-2018, 16:19:46
    Author     : abdon_g501
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Datos</title>
    </head>
    <body style="background-color:#ffffcc;">
        <%
            
            HttpSession Session = request.getSession();
  
            String Nombre;
            Nombre = request.getParameter("txtNombre");
            Session.setAttribute("txtNombre",Nombre);
            
            String Apellido;
            Apellido = request.getParameter("txtApellido");
            Session.setAttribute("txtApellido", Apellido);
            
            String Correo;
            Correo = request.getParameter("mail");
            Session.setAttribute("mail", Correo);
            
            String Fecha;
            Fecha = request.getParameter("fecha");
            Session.setAttribute("fecha", Fecha);
            
            String Sexo;
            Sexo = request.getParameter("sexo");
            Session.setAttribute("sexo", Sexo);
            
            String Direccion;
            Direccion = request.getParameter("txtDireccion");
            Session.setAttribute("txtDireccion", Direccion);
            

if (Nombre.equals("") || Direccion.equals("") || Sexo.equals("") || Fecha.equals("") || Correo.equals("") || Apellido.equals("")) {
                 
    out.println("Campo(s) vacio(s), porfavor llene todos los campos.");
            %><jsp:include page="Formulario.jsp"/> 
            <%
                }else {
                
out.println("<p> Usuario: "+Session.getAttribute("txtUser")+"</p>");          
out.println(Session.getAttribute("txtNombre"));
out.println(Session.getAttribute("txtApellido"));
out.println(Session.getAttribute("mail"));
out.println(Session.getAttribute("fecha"));
out.println(Session.getAttribute("sexo"));
out.println(Session.getAttribute("txtDireccion"));
%>
<p><a href="Error2.jsp"> Volver Inicio</a></p>        
<p><a href="Formulario.jsp"> A Formulario</a></p>         
<p><a href="index.jsp"> Cerrar Sesion</a></p>
        
        <%

            }
          %>
            
    </body>
</html>
