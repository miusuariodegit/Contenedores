<%-- 
    Document   : CerrarPagina
    Created on : 14/10/2015, 10:29:32 PM
    Author     : Javier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function cerrar() {
                window.self.close();
            }
        </script>
    </head>
    <body onload="cerrar()">
        <h1>Producto Agregado</h1>
    </body>
</html>