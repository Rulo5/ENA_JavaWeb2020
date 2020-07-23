<%-- 
    Document   : ConsultaRequerimientos
    Created on : 22-07-2020, 17:08:06
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 class="center-align">Consultar Requerimientos</h1>
        <hr> 
        <div class="container">
            <div>
                <label>Gerencia:</label>
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
                <label>Asignado a:</label>
                <select class="browser-default">
                    <option value="" disabled selected>Choose your option</option>
                    <option value="1">Option 1</option>
                    <option value="2">Option 2</option>
                    <option value="3">Option 3</option>
                </select>
            </div>
        </div>
        <br>
        <div class="center-align">
            <button class="btn waves-effect waves-light purple lighten-3" type="submit" name="VolverAlMenu">Buscar
                <i class="material-icons right">send</i>
            </button> 
        </div> 
        <br>
        <table class="striped pink lighten-4 container">
            <thead>
                <tr>
                    <th>Gerencia</th>
                    <th>Depto.</th>
                    <th>Asignado a</th>
                    <th>Requerimiento</th>
                </tr>
            </thead>

            <tbody>
                <tr>
                    <td>Alvin</td>
                    <td>Eclair</td>
                    <td>$0.87</td>
                    <td>$0.87</td>
                </tr>
                <tr>
                    <td>Alan</td>
                    <td>Jellybean</td>
                    <td>$3.76</td>
                </tr>
                <tr>
                    <td>Jonathan</td>
                    <td>Lollipop</td>
                    <td>$7.00</td>
                    <td>$0.87</td>
                </tr>
                <tr>
                    <td>Jonathan</td>
                    <td>Lollipop</td>
                    <td>$7.00</td>
                    <td>$0.87</td>
                </tr>
            </tbody>
        </table>
        <br>
        <div class="center-align">
            <button class="btn waves-effect waves-light purple darken-3" type="submit" name="VolverAlMenu">Volver al menú
                <i class="material-icons right">send</i>
            </button> 
        </div> 
    </body>
</html>
