<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
    <img src="https://adelantelafe.com/wp-content/uploads/2014/11/jesus-buen-pastor-800x394.jpg" width= 1366px height="290px">

    <title>Catequistas Colmenarejo ciclo 2</title>
  </head>
  
  <body>    
      <div class="container">
	<div class="panel panel-primary">
           <table background-color: rgb="10,80,70">
               <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th> 
               <th><h5 class="text-center">Catequistas ciclo 2.</h5> 
                    <h6 class="text aling-center">  &copy; Carmen Moreno de Vega</h6>
                </th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th><div class="panel-heading text-justify">
                    <th><form class="center"> 
                        <a href="gruposCiclo.jsp" class="btn btn-primary">
                        <span class="glyphicon glyphicon-home"></span> 
                        Ver grupos por ciclo</button>
                        </a>
                        </form>
                    </th>
                    <th><form class="center"> 
                        <a href="catequesis.jsp" class="btn btn-primary">
                        <span class="glyphicon glyphicon-home"></span> 
                        Volver al menú principal</button>
                        </a>
                        </form>
                    </th>
           </table>
        </div>
         
    <%  
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/parroquia","root", "root");
      Statement s = conexion.createStatement();

      request.setCharacterEncoding("UTF-8");

      ResultSet listado = s.executeQuery ("SELECT * FROM catequista WHERE ciclo='2'");
    %>
    
    <div class="container">
      <div class="row"></div>
      <div class="row">
        <div class="col s1">&nbsp;</div>
        <div class="col s10">
          <div class="card">
              <table class="bordered striped centered responsive-table">
                  <thead>  
              <th>Catequista</th><th>telefono</th><th>ciclo 2</th></thead>
              <%
                while (listado.next()) {
                  out.println("<tr><td>");
                  out.println(listado.getString("nombreCatequista") + "</td>");
                  out.println("<td>" + listado.getString("telefono"));
                  %>
               
                  <td>
                    <form method="post" action="ciclo2.jsp">
                      <input type="hidden" name="catequistaID" value="<%=listado.getString("nombreCatequista") %>">
                      <button class="btn waves-effect waves-light center" type="submit" name="editar">
                        Ver niños del ciclo 2
                      </button>
                    </form>
                  </td>
                  <%
                }
              %>

              
            </table>  
          </div>
        </div>
      </div>
    </div>
              
    <%
      conexion.close();
    %>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
    </body>
</html>
