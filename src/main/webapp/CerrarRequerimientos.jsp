<%-- 
    Document   : CerrarRequerimientos
    Created on : 23-07-2020, 00:29:31
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
         <h1 class="center-align">Cerrar Requerimientos</h1>
        <hr> 
        <div class="container">
                <div>
                    <label>Gerencia:</label>
                    <select class="browser-default" onchange="CambiaGerencia(this.value)" id="gerente" name="gerente_a">
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
                    <select class="browser-default" id="dpto" name="dpto_a" onchange="cambiarDpto(this.value)">
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
                    <label>Asignado a:</label>
                    <select class="browser-default" onchange="cambiarAsignacion(this.value)" id="asignar" name="asignar_a">
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
            </div>
        <br>
        <div class="center-align">
            <button class="btn waves-effect waves-light purple darken-3" type="submit" name="VolverAlMenu">Buscar
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
                <c:forEach items="${servicio.getRequerimientos()}" var="req">
                        <c:if test = "${req.getGenrente() == param.gerente && req.getDpto() == param.dpto && req.getAsignar() == param.asignar}">
                             <tr>
                                <c:forEach items="${servicio.getGerencias()}" var="gerencia">
                                    <c:if test = "${gerencia.getID() == param.gerente}">
                                        <td>${gerencia.getNombreGerente()}</td>
                                    </c:if>
                                </c:forEach>
                                <c:forEach items="${servicio.getDepartamentos(param.gerente)}" var="dpto">
                                    <c:if test = "${dpto.getID() == param.dpto}">
                                        <td>${dpto.getNombreDepartamento()}</td>
                                    </c:if>
                                </c:forEach>
                                <c:forEach items="${servicio.getAsignar()}" var="asig">
                                    <c:if test = "${asig.getID() == param.asignar}">
                                        <td>${asig.getAsignarNombre()}</td>
                                    </c:if>
                                </c:forEach>
                                <td>${req.getComentario()}</td>
                                <td>
                                    <form action="./EliminarReq" method="post">
                                        <input type="hidden" name="reqid" value="${req.getID()}" />
                                        
                                        <button type="submit" class="btn deep-purple lighten-1">Cerrar</button> 
                                    </form>
                                </td>
                            </tr>
                        </c:if>
                           
                    </c:forEach>
             
            </tbody>
        </table>
        <br>
        <div class="center-align">
            <a href="./MenuPrincipal.jsp" class="btn waves-effect waves-light purple lighten-3" type="submit" name="VolverAlMenu">Volver al menú
                <i class="material-icons right">send</i>
            </a> 
        </div> 
    </body>
     <script>
        function CambiaGerencia(event) {
            var asignar = document.querySelectorAll("#asignar option:checked")[0].value
           
            window.location.href = './CerrarRequerimientos.jsp?gerente=' + event + "&asignar=" + asignar 

            //alert()
        }
        function cambiarDpto(event) {
            var asignar = document.querySelectorAll("#asignar option:checked")[0].value
            var gerente = document.querySelectorAll("#gerente option:checked")[0].value
            window.location.href = './CerrarRequerimientos.jsp?asignar=' + asignar + "&gerente=" + gerente + "&dpto=" + event;


        }
        function cambiarAsignacion(event) {
            var gerente = document.querySelectorAll("#gerente option:checked")[0].value
            var dpto = document.querySelectorAll("#dpto option:checked")[0].value
            window.location.href = './CerrarRequerimientos.jsp?asignar=' + event + "&gerente=" + gerente + "&dpto=" + dpto;


        }
    </script>
</html>
