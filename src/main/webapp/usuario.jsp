<%-- 
    Document   : usuario
    Created on : 21-07-2020, 21:47:54
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
        <h1 class="center-align">Autentificación</h1>
        <hr> 
        <div class="container">           
            <div class="row">
                <form class="col s12" action="login" method="post">
                    <div class="row">
                        <div class="input-field col s6">
                            <i class="material-icons prefix"> insert_emoticon</i>
                            <input id="icon_prefix" type="text" class="validate" name="usuario">
                            <label for="icon_prefix">Usuario</label>
                        </div>
                        <div class="input-field col s6">
                            <i class="material-icons prefix">fingerprint</i>
                            <input id="icon_telephone" type="tel" class="validate" name="password">
                            <label for="icon_telephone">Password</label>
                        </div>
                        <label class="input-field col s6 offset-s3 center-align">
                            <input type="checkbox" name="recuerda"/>
                            <span>Recordar</span>
                        </label>
                    </div>

                    <div class="col s6 offset-s3 center-align">
                        <button class="btn waves-effect waves-light #6a1b9a purple darken-3" type="submit" name="action">Ingresar
                            <i class="material-icons right">send</i>
                        </button> 
                    </div>

            </div>
        </form>
    </div>
</div> 
</body>
</html>
