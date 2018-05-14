<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Parroquia del Carmen. Campanillas. Núcleo de Colmenarejo.</title>
    <meta charset="utf-8"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name viewport content="width=device-width, initial-scael=1"/>
    <link href="estilo2.css" rel="stylesheet"/>
    <link href="favicon.ico" rel="shortcut icon"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">

    
  </head>

  <body>
		<div class="container">
	<div class="panel panel-primary">
            
       
            <table background-color: rgb="10,80,70">
            <tr>
                <th><div class="panel-heading text-center">
             <div>
                <table>
                          <tr>
                            <th><form class="center"> 
                                <a href="catequesis.jsp" class="btn btn-primary">
                                <span class="glyphicon glyphicon-home"></span> 
                                Menú principal</button>
                                </a>
                                </form>
                            </th>
                             <th></th> 
                            <th></th>
                             <th></th>
                             <th></th> 
                            <th></th>
                             <th></th>
                              <th></th> 
                            <th></th>
                            <th><form method="get" action="gruposCiclo.jsp">  
         <td><button type="submit" value="Editar" class="btn btn-primary">
                 <span class="glyphicon glyphicon-pencil"></span> Ciclos</button></td><td></td></tr>           
        </form>
                            </th>
                          </tr>
                       </table>
      </div><h5 class="center">Menores de catequesis en Colmenarejo</h5>
                <p class="center">La clave consta de 4 digitos. 
                    Los dos primeros corresponden al año de incripción del menor. 
                    Los dos últimos son según el orden de inscripción en el año.<br/>
                    &copy; Carmen Moreno de Vega</p></th>
                <th><image src="https://adelantelafe.com/wp-content/uploads/2014/11/jesus-buen-pastor-800x394.jpg" width="480px" height="260px" > </th>
            </tr>
            </table>
            </div>
        <%
          Class.forName("com.mysql.jdbc.Driver");
          Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/parroquia","root", "root");
          Statement s = conexion.createStatement();

          ResultSet listado = s.executeQuery ("SELECT * FROM menor");
        %>

        <table class="bordered striped responsive-table">
           <tr><th>Nº de menor</th><th>Nombre</th><th>Edad</th><th>Ciclo</th><th>Tutor</th><th>Telefono</th></tr>
        <form method="get" action="grabaMenor.jsp">
            <tr><td><input type="text" name="menorID" size="50"></td>
              <td><input type="text" name="nombre" size="100"></td>
              <td><input type="text" name="edad" size="5"></td>
              <td><input type="enum" name="ciclo" size="5"></td>
              <td><input type="text" name="tutor" size="30"></td>
              <td><input type="text" name="telefono" size="15"></td>
              <td><button type="submit" value="Añadir" class="btn btn-primary"><span class="glyphicon glyphicon-plus"></span> Añadir</button></td><td></td></tr>           
        </form>
        <%
          while (listado.next()) {
            out.println("<tr><td>");
            out.println(listado.getString("menorID") + "</td>");
            out.println("<td>" + listado.getString("nombre") + "</td>");
            out.println("<td>" + listado.getString("edad") + "</td>");
            out.println("<td>" + listado.getString("ciclo") + "</td>");
            out.println("<td>" + listado.getString("tutor") + "</td>");
            out.println("<td>" + listado.getString("telefono") + "</td>");
        %>
        <td>
        <form method="get" action="modificaMenor.jsp">
					<input type="hidden" name="menorID" value="<%=listado.getString("menorID") %>">
          <input type="hidden" name="nombre" value="<%=listado.getString("nombre") %>">
          <input type="hidden" name="edad" value="<%=listado.getString("edad") %>">
          <input type="hidden" name="ciclo" value="<%=listado.getString("ciclo") %>">
          <input type="hidden" name="tutor" value="<%=listado.getString("tutor") %>">
          <input type="hidden" name="telefono" value="<%=listado.getString("telefono") %>">
	  <button type="submit"  class="btn btn-info"><span class="glyphicon glyphicon-pencil"></span>Modificar</button>
	</form>
          </td>
	  <td>
        <form method="get" action="borraMenor.jsp">
          <input type="hidden" name="menorID" value="<%=listado.getString("menorID") %>"/>
          <button type="submit" class="btn btn-primary dark red"><span class="glyphicon glyphicon-plus"></span>Eliminar</button>
        </form>
        </td></tr>
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