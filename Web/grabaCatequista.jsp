<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>

    <title>Parroquia del Carmen.Campanillas. Núcleo de Colmenarejo</title>
  </head>
  <body>
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/parroquia","root", "root");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");
      
      // Comprueba la existencia del número de catequista introducido
      String consultaNumCatequista = "SELECT * FROM catequista WHERE catequistaID=" + Integer.valueOf(request.getParameter("catequistaID"));      
      
      ResultSet numeroCatequistas = s.executeQuery (consultaNumCatequista);
      numeroCatequistas.last();
      
      if (numeroCatequistas.getRow() != 0) {
        out.println("Lo siento, no se ha podido dar de alta, ya existe un catequista con el número "
                    + request.getParameter("catequistaID") + ".");
      } else {
        String insercion = "INSERT INTO catequista VALUES (" + Integer.valueOf(request.getParameter("catequistaID"))
                           + ", '" + request.getParameter("nombreCatequista")
                           + "', " + Integer.valueOf(request.getParameter("ciclo"))
                           + ", '" + request.getParameter("telefono")
                           + "', '" + request.getParameter("mail")
                           + "', '" + request.getParameter("localidadCatequista") + "')";
        s.execute(insercion);
        out.println("Catequista dado de alta correctamente.");
      }
      conexion.close();
    %>
    <br>
    <a href="catequistas.jsp" class="btn btn-primary"> Listado de catequistas</button>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>

