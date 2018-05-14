<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Materialize -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">
    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <img src="https://adelantelafe.com/wp-content/uploads/2014/11/jesus-buen-pastor-800x394.jpg" width= 1349px height="290px">

    <title>Niños ciclo 3</title>
  </head>

  <body>
	<div class="container">
	<div class="panel panel-primary">
            <table background-color: rgb="10,80,70">
                <th><div class="panel-heading text-center">
                <div>
                    <th><h5 class="text-center">Ciclo 3. Colmenarejo</h5>
                        <p class="text-center">&copy; Carmen Moreno de Vega</p></th>
                    <th><p class="center"> 
                        <a href="gruposCiclo.jsp" class="btn btn-primary">
                        <span class="glyphicon glyphicon-book"></span> Volver al menú "grupos"</button>
                        </a></p></th>
                    <th><p class="center ">
                        <a href="gestionCatequistas2.jsp" class="btn btn-primary">
                        <span class="glyphicon glyphicon-book"></span> Catequistas ciclo 3</button>    
                        </a> </p></th>
                </div>            
             </table>
            </div>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/parroquia","root", "root");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery ("SELECT menor.nombre, tutor, telefono FROM menor WHERE ciclo='3' ");
        %>

        <div class="container">
              <div class="row"></div>
              <div class="row">
                <div class="col s1">&nbsp;</div>
                <div class="col s10">
                  <div class="card">
                      <table class="bordered striped centered responsive-table">
                          <thead>  

                    <th>Nombre</th><th>Tutor</th><th>Telefono</th></thead>
        
        <%
          while (listado.next()) {
            out.println("<tr>");
            out.println("<td>" + listado.getString("nombre") + "</td>");
            out.println("<td>" + listado.getString("tutor") + "</td>");
            out.println("<td>" + listado.getString("telefono") + "</td>");
        %>
       
	  <td>
        <form method="get" action="gestionCatequistas3.jsp">
         
         
        </form>
              <button type="submit" class="btn btn-primary"><span class="glyphicon glyphicon-write"></span> Ficha</button>
        </td> 
        
        <%
          } // while   

          conexion.close();
        %>

        </table>
        
      
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
  </body>
</html>