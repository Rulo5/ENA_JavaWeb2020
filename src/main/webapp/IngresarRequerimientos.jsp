<%-- 
    Document   : IngresarRequerimientos
    Created on : 22-07-2020, 15:24:15
    Author     : andre
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="javax.naming.InitialContext"%>
<%@page import="modelo.servicioLocal"%>
<%! servicioLocal servicio;%>
<%
    InitialContext ctx = new InitialContext();
    servicio = (servicioLocal) ctx.lookup("java:global/ENA_JavaWeb2020-1.0-SNAPSHOT/servicio!modelo.servicioLocal");
    // ruta donde esta el servicio


%>

<c:set var="servicio" scope="page" value="<%=servicio%>" />

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
        <form method="post" action="./DatosGuardados">
        <h1 class="center-align">Ingresar Requerimientos</h1>
        <hr> 
        <div class="container">
            <div>
                <label>Gerenfcia:</label>
                <select class="browser-default" onchange="CambiaGerencia(this.value)" id="gerente" name="gerente">
                    <option value="" disabled selected>Seleciona la Gerencia</option>
                    <c:forEach items="${servicio.getGerencias()}" var="gerencia">
                        <c:choose>
                            <c:when test="${param.gerente==gerencia.getID()}">
                                <option value="${gerencia.getID()}" selected>${gerencia.getNombreGerente()}</option>
                            </c:when>    
                            <c:otherwise>
                                <option value="${gerencia.getID()}">${gerencia.getNombreGerente()}</option>
                            </c:otherwise>
                        </c:choose>
                       
                    </c:forEach>
                </select>
            </div>
            <div>
                <label>Depto:</label>
                <select class="browser-default" id="dpto" name="dpto">
                    <option value="" disabled selected>Seleciona el departamento</option>
                    <c:forEach items="${servicio.getDepartamentos(param.gerente)}" var="dpto">
                            <c:choose>
                            <c:when test="${param.dpto==dpto.getID()}">
                                <option value="${dpto.getID()}" selected>${dpto.getNombreDepartamento()}</option>
                            </c:when>    
                            <c:otherwise>
                                 <option value="${dpto.getID()}">${dpto.getNombreDepartamento()}</option>
                            </c:otherwise>
                        </c:choose>
                    </c:forEach>
                </select>
            </div>
            <div>
                <label>Asignar a:</label>
                <select class="browser-default" onchange="cambiarAsignacion(this.value)" id="asignar" name="asignar">
                    <option value="" disabled selected>Asignar a</option>
                    <c:forEach items="${servicio.getAsignar()}" var="asig">
                        <c:choose>
                            <c:when test="${param.asignar==asig.getID()}" >
                                <option value="${asig.getID()}" selected>${asig.getAsignarNombre()}</option>
                            </c:when>    
                            <c:otherwise>
                                <option value="${asig.getID()}">${asig.getAsignarNombre()}</option>
                            </c:otherwise>
                        </c:choose>
                       
                    </c:forEach>
                </select>
            </div>
            <div>
                <label>Encargado:</label>
                <select class="browser-default" name="encargado">
                    <option value="" disabled selected>Choose your option</option>
                    <c:forEach items="${servicio.getEncargado(param.asignar)}" var="encard">
                        <option value="${encard.getID()}">${encard.getNombreEncargado()}</option>
                        
                    </c:forEach>
                </select>
            </div>
            <div class="row">
                
                <div class="col s12">
                    <label>Comentario:</label>
                    <div class="row">
                        <div class="input-field col s12">
                            <textarea id="textarea-1" class="materialize-textarea" name="comentario"></textarea>
                            <label for="textarea-1">Ingrese descripcion del requerimiento</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s3 offset-s3 center-align">
                            <button class="btn waves-effect waves-light purple darken-3" type="submit" name="Guardar">Guardar
                                <i class="material-icons right">send</i>
                            </button> 
                        </div>
                        <div class="col s4  left-align">
                            <a class="btn waves-effect waves-light purple darken-3" href="./MenuPrincipal.jsp" name="VolverAlMenu">Volver al menu
                                <i class="material-icons right">send</i>
                            </a> 
                        </div>     
                    </div>
                </div>
            </div>
        </div>
     </from>
        <script>
            function CambiaGerencia(event) {
                var asignar = document.querySelectorAll("#asignar option:checked")[0].value
                window.location.href = './IngresarRequerimientos.jsp?gerente=' + event +"&asignar="+asignar;
                
                //alert()
            }
            function cambiarAsignacion(event){
                var gerente = document.querySelectorAll("#gerente option:checked")[0].value
                var dpto = document.querySelectorAll("#dpto option:checked")[0].value
                window.location.href = './IngresarRequerimientos.jsp?asignar=' + event +"&gerente=" + gerente + "&dpto=" + dpto;
                
                
            }
        </script>
    </body>
</html>
