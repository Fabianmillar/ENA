<%-- 
    Document   : Verifica
    Created on : 19-04-2018, 16:25:56
    Author     : abdon_g501
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Verificar Datos</title>
    </head>
    <body>
            
           <%
               /* try{                 
                    
                Class.forName("com.mysql.jdbc.Driver");  
                Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jueves10", "root", "");
                HttpSession Sessions = request.getSession();
                
                String txtUser;               
                String txtPass;
                String query="SELECT * FROM user WHERE user.username='"+request.getParameter("txtUser")+"' and user.password='"+request.getParameter("txtPass")+"' "; 
                Statement st=conn.createStatement();
                          
                ResultSet rs = st.executeQuery(query);
                while(rs.next())
            {
            
                 
                String userSQL=rs.getString("username");
                String passSQL=rs.getString("password");        
            
                txtUser = request.getParameter("txtUser");        
                Sessions.setAttribute("txtUser", txtUser);
                //Sessions.setAttribute("txtUser", userSQL);
                
                txtPass = request.getParameter("txtPass");
                Sessions.setAttribute("txtPass", txtPass);   
                //Sessions.setAttribute("txtPass", passSQL);
         
                if(txtUser.equals(userSQL) && txtPass.equals(passSQL)){
        
                    
               response.sendRedirect("listaUsuario.jsp"); 

          
                }else{     
            }}          
               
             response.sendRedirect("index.jsp");
             
                 
                }catch(SQLException ex){
                     
                throw new SQLException(ex);

                 }*/
               String txtUser;               
                String txtPass;
               
                try{
                    
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jueves10", "root", "");
                
                String query="SELECT * FROM user WHERE user.username='"+request.getParameter("txtUser")+"' and user.password='"+request.getParameter("txtPass")+"' "; 
                
                HttpSession Sessions = request.getSession();
                
                Statement st=conn.createStatement();
            ResultSet rs = st.executeQuery(query);
            while(rs.next()){
                String userSQL=rs.getString("username");
                String passSQL=rs.getString("password");        
               
                txtUser = request.getParameter("txtUser");        
                Sessions.setAttribute("txtUser", txtUser );
                txtPass = request.getParameter("txtPass");
                Sessions.setAttribute("txtPass", txtPass);   
                 
         
                if(txtUser.equals(userSQL) && txtPass.equals(passSQL)){
        
            
           
                 response.sendRedirect("principal.jsp"); %>
                 
            <%  }else{
            
            %>
            
                <%
                    response.sendRedirect("index.jsp");%>
            
           <% 
            }}
}catch(SQLException ex){
            throw new SQLException(ex);
}%>
<center>
           Datos Incorrectos<jsp:include page="index.jsp"/> 
     </center>                    
               
    </body>
</html>
