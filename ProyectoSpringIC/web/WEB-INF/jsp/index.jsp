<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <div class="container mt-4">
            <div class="card border-info">
                <div class="card-header bg-info text-white">
                    <a class="btn btn-success" href="agregar.htm">Habitaciones disponibles</a>
                </div> 
                <div class="card-body">
                    <table class="table table-hover">
                        <thead>
                            <th>ID</th>
                            <th>Cod.Hab</th>
                            <th>Tipo de Habitacion</th>
                            <th>Precio</th>
                        </thead>
                        <tbody>
                            <c:forEach var="dato" items="${lista}">
                            <tr>
                                <td>${dato.idHabitacion}</td>
                                <td>${dato.COD_HABITACION}</td>
                                <td>${dato.TIPO_HABITACION}</td>
                                <td>${dato.COSTO_HABITACION}</td>
                                <td>
                                    <a href="editar.htm?cod=${dato.idHabitacion}" class="btn btn-warning">Editar</a>
                                    <a href="delete.htm?cod=${dato.idHabitacion}" class="btn btn-primary">Eliminar</a>
                                </td>
                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
</html>
