<%-- 
    Document   : agregar
    Created on : 10-07-2019, 17:22:29
    Author     : hgosa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>Agregar Habitacion</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Agregar nueva Habitacion</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Codigo Habitacion</label>
                        <input type="text" name="codigo" class="form-control">
                        <label>TIpo Habitacion</label>
                        <input type="text" name="tipo" class="form-control">
                        <label>Precio Habitacion</label>
                        <input type="int" name="precio" class="form-control">
                        <input type="submit" value="Agregar" class="btn btn-success">
                        <a href="index.htm" >  Volver</a>
                        
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
