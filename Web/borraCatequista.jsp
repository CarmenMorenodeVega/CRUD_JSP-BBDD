<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <meta charset="utf-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name viewport content="width=device-width, initial-scael=1"/>
        <link href="estilo2.css" rel="stylesheet"/>
	<link href="favicon.ico" rel="shortcut icon"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
    </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/parroquia","root", "root");
      Statement s = conexion.createStatement();

      s.execute ("DELETE FROM catequista WHERE catequistaID=" + request.getParameter("catequistaID"));
      
      s.close();
    %>	
    <script>document.location = "catequistas.jsp";</script> 
  </body>
</html>
