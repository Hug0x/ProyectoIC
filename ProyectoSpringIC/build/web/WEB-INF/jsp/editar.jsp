<%-- 
    Document   : editar
    Created on : 10-07-2019, 17:59:05
    Author     : hgosa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Actualizar Habitacion</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Editar Habitacion ${lista[0].idHabitacion}</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Codigo Habitacion</label>
                        <input type="text" name="codigo" class="form-control" value="${lista[0].COD_HABITACION}">
                        <label>TIpo Habitacion</label>
                        <input type="text" name="tipo" class="form-control" value="${lista[0].TIPO_HABITACION}">
                        <label>Precio Habitacion</label>
                        <input type="int" name="precio" class="form-control" value="${lista[0].COSTO_HABITACION}">
                        <input type="submit" value="Actualizar" class="btn btn-success">
                        <a href="index.htm" >Volver</a>
                        
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
