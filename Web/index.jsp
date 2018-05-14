<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <title>Parroquia del Carmen. Campanillas. Núcleo de Colmenarejo.</title>
	<meta charset="utf-8"/>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name viewport content="width=device-width, initial-scael=1"/>
        <link href="estilo2.css" rel="stylesheet"/>
	<link href="favicon.ico" rel="shortcut icon"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
        <image src="http://es.arautos.org/resource/view?&image=109190&size=1" width="1365px" height="450px">
  </head>
  <body> 
      <div>
          <h3 class="center">Catequesis de Colmenarejo. Capilla Virgen de Fátima</h3> 
          <p class="center">Parroquia del Carmen.  Campanillas.  &copy; Carmen Moreno de Vega</p>
      </div> 
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/parroquia","root", "root");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
    %>
    <div><p class="center">
            <a href="catequesis.jsp" class="btn btn-primary"> Ir al menú principal</button> </a>           
          </p>
    </div>  
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
     <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
  </body>
</html>