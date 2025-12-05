
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <spring:url value="/generaPaginasController" var="pagina" htmlEscape="true" />

            <a href="${pagina}">
                Generar archivos
                <input name="image" type="image" src="imagenes/comprar.jpg" alt="Confirmar" align="left" width="70" height="70" border="0">
            </a>

        </h1>
    </body>
</html>
