<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Nuevo contacto</h1>
        <form action="insertarContacto.jsp" method="post">
            <table>
                <tr>
                    <td>Nombre</td>
                    <td><input id="nombre" type="text" name="nombre"></td>
                </tr>
                <tr>
                    <td>Telefono</td>
                    <td><input id="telefono" type="text" name= "telefono"></td>
                </tr>
                <tr>
                    <td>Correo</td>
                    <td><input id="correo" type="text" name="correo"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
