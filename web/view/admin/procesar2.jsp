<%-- 
    Document   : procesar
    Created on : 23-oct-2010, 23:40:11
    Author     : Gylmar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Llenar</title>
    </head>
    <body>
       <%
          

     String user="root"; //nombre root de la base de datos
     String clave="";//por default nada
       String ruta="jdbc:mysql://localhost:3306/dbaa";
//esto lo podemos hallar manual pero lo unico que cambia es /jsp es el nombre
//de tu  base
    Connection conexion=null; // esto lo llenamos mas adelante
    Statement Sentencias = null;
    
     Class.forName("com.mysql.jdbc.Driver").newInstance();
        conexion =DriverManager.getConnection(ruta,user,clave);
        Sentencias = conexion.createStatement();

                            String consulta3=request.getParameter("cod");
                            String estadocivil=request.getParameter("txtestadocivilentrev");
                            String escolaridad=request.getParameter("txtescolaridadentrev");
                            String ocupacion=request.getParameter("txtocupacionentrev");
                            String religion=request.getParameter("txtreligionentrev");
              
              Sentencias=conexion.createStatement();
              String consulta="insert into datosentrevistado(idusuario,estadocivil, escolaridad, ocupacion, religion) values ('"+consulta3+"','"+estadocivil+"','"+escolaridad+"','"+ocupacion+"','"+religion+"')";
              int resultado = Sentencias.executeUpdate(consulta);
               if(resultado==1)
                   {
                    out.println("<script>alert('El registro se guardo correctamente')</script>");
                    out.println("<meta http-equiv='refresh' content='0;url=procesaBUS.jsp'");
                   }
%>
    </body>
</html>
