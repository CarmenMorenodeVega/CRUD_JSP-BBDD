<%-- 
    Document   : index
    Created on : 19-mar-2018, 12:03:07
    Author     : cmove
--%>

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
      <img src="https://adelantelafe.com/wp-content/uploads/2014/11/jesus-buen-pastor-800x394.jpg" width= 1365px height="470px">
      <title>Listado de niños de los tres ciclos de Catequesis en Colmenarejo</title>
  </head>
  <body>
      <p class="center">Acceso a los grupos por ciclo en catequesis de Colmenarejo.<br/>
      Accede a los grupos pulsando en cada ciclo. Así podrás ver el listado de niño por cada nivel y los catequistas asignados a priori actualmente. </p>
    <table>
      <tr>
        <th><p class="center">
                <a href="gestionCatequistas1.jsp" class="btn waves-effect waves-light center">
                    <i class="fa fa-home"></i>
                    Ciclo 1
                </a>
               </p></th>
          <th><p class="center">
                <a href="gestionCatequistas2.jsp" class="btn waves-effect waves-light center">
                    <i class="fa fa-home"></i>
                    Ciclo 2 
                </a>
            </p></th>
           <th><p class="center">
                <a href="gestionCatequistas3.jsp" class="btn waves-effect waves-light center">
                    <i class="fa fa-home"></i>
                    Ciclo 3 
                </a>
            </p></th>
          <th><p class="center ">
                <a href="catequesis.jsp" class="btn waves-effect waves-light center">
                    <i class="fa fa-home"></i>
                    Volver a menú principal
                </a></th>
        </tr>
    </table>
       <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <!-- Materialize -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>
  </body>
</html>
