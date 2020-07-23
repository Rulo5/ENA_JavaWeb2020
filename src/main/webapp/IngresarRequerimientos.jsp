<%-- 
    Document   : IngresarRequerimientos
    Created on : 22-07-2020, 15:24:15
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

    <!-- Compiled and minified JavaScript -->
    <script srcs="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <h1 class="center-align">Ingresar Requerimientos</h1>
         <hr> 
         <div class="container">
             <div>
                <label>Gerenfcia:</label>
                <select class="browser-default">
                  <option value="" disabled selected>Choose your option</option>
                  <option value="1">Option 1</option>
                  <option value="2">Option 2</option>
                  <option value="3">Option 3</option>
                </select>
             </div>
             <div>
                <label>Depto:</label>
                <select class="browser-default">
                  <option value="" disabled selected>Choose your option</option>
                  <option value="1">Option 1</option>
                  <option value="2">Option 2</option>
                  <option value="3">Option 3</option>
                </select>
             </div>
             <div>
                <label>Asignar a:</label>
                <select class="browser-default">
                  <option value="" disabled selected>Choose your option</option>
                  <option value="1">Option 1</option>
                  <option value="2">Option 2</option>
                  <option value="3">Option 3</option>
                </select>
             </div>
             <div>
                <label>Encargado:</label>
                <select class="browser-default">
                  <option value="" disabled selected>Choose your option</option>
                  <option value="1">Option 1</option>
                  <option value="2">Option 2</option>
                  <option value="3">Option 3</option>
                </select>
             </div>
             <div class="row">
            <form class="col s12">
                <label>Encargado:</label>
                <div class="row">
                    <div class="input-field col s12">
                    <textarea id="textarea1" class="materialize-textarea"></textarea>
                    <label for="textarea">Ingrese descripcion del requerimiento</label>
                    </div>
                </div>
                <div class="row">
                      <div class="col s3 offset-s3 center-align">
                        <button class="btn waves-effect waves-light purple darken-3" type="submit" name="Guardar">Guardar
                        <i class="material-icons right">send</i>
                        </button> 
                      </div>
                      <div class="col s4  left-align">
                        <button class="btn waves-effect waves-light purple darken-3" type="submit" name="VolverAlMenu">Volver al menu
                        <i class="material-icons right">send</i>
                        </button> 
                      </div>     
                </div>
            </form>
             </div>
        </div>
      
    </body>
</html>
