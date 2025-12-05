<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <script type="text/javascript">
             var parent_window = window.opener;
            function cerrar() {
                window.close();
            }
            function agregarACarrito(id_producto){
                if (parent_window && !parent_window.closed) {
                    parent_window.location.href = '${pageContext.request.contextPath}agregarACarrito?id_producto=' + id_producto;
                    
                }
                window.close();
            }
            
        </script>
    </head>
    <body>

        <table>
            <tr>
                <td valign="top">
                    <img src="productos/${producto.nombre_archivo}" width="400" height="350">
                </td>
                <td valign="top">				
                    <table cellspacing="0" cellpadding="0" style="width:400px;table-layout:fixed">
                        <tr>

                            <td>${producto.nombre}</td>

                        </tr>
                        <tr>

                            <td>${producto.marca}</td>							
                        </tr>	
                        <tr>
                            <td>${producto.modelo}</td>							
                        </tr>
                        <tr>

                            <td>${producto.descripcion}</td>							
                        </tr>
                        <tr>

                            <td>${producto.precio}</td>
                        </tr>                        
                        <tr>
                            <td>
                                <button type="button" onclick="cerrar()">Cerrar</button>
                            </td>							
                        </tr>	
                        <tr>
                            <td>
                                <input name="image" onclick="agregarACarrito(${producto.id_producto})" type="image" src="imagenes/comprar.jpg" alt="Confirmar" align="left" width="70" height="70" border="0">
                            </td>							
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </body>
</html>
