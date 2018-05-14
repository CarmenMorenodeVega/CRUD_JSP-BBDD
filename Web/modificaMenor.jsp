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
    <% request.setCharacterEncoding("UTF-8"); %>
    <div class="container">
      <br><br>
      <div class="panel panel-info">
        <div class="panel-heading text-center">Modificación de menor</div>
          <form method="get" action="grabaMenorModificado.jsp">
            <div class="form-group"> 
              <label>&nbsp;&nbsp;Nº de menor:&nbsp;</label>
              <input type="text" size="5" name="menorID" value="<%= request.getParameter("menorID") %>" readonly>
            </div>
            <div class="form-group">
            <label>&nbsp;&nbsp;Nombre:&nbsp;</label>
            <input type="text" size="35" name="nombre" value="<%= request.getParameter("nombre") %>">
            </div>
             <div class="form-group">
             <label>&nbsp;&nbsp;Edad:&nbsp;</label>
             <input type="text" size="5" name="edad" value="<%= request.getParameter("edad") %>">
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;Ciclo:&nbsp;</label>
             <input type="text" size="5" name="ciclo" value="<%= request.getParameter("ciclo") %>">
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;Tutor:&nbsp;</label>
             <input type="text" size="30" name="tutor" value="<%= request.getParameter("tutor") %>">
            </div>
            <div class="form-group">
             <label>&nbsp;&nbsp;Telefono:&nbsp;</label>
             <input type="text" name="telefono" size="15" value="<%= request.getParameter("telefono") %>">
            </div>
            <hr>
            &nbsp;&nbsp;<a href="index.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-remove"></span>Cancelar</a>
            <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-ok"></span>Aceptar</button><br><br>
          </form>

      </div>
      <div class="text-center">&copy; Carmen Moreno de Vega</div>
    </div>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
