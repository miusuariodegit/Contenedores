<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>Subir Archivo</title>
    </head>
    <body>
        <form action = "subeArchivo" method = "post" enctype = "multipart/form-data">

            <table border="0">  
                <tr>
                    <td>
                        nombre      
                    </td>
                    <td>
                        <input type = "text" name = "nombre" size = "50" />       
                    </td>
                </tr>    
                <tr>
                    <td>
                        descripcion      
                    </td>
                    <td>
                        <textarea name="descripcion" rows="4" cols="51"></textarea>
                    </td>
                </tr>
                <tr>
                    <td>
                        precio      
                    </td>
                    <td>
                        <input type = "text" name = "precio" size = "50" />       
                    </td>
                </tr>
                <tr>
                    <td>
                        nombre      
                    </td>
                    <td>
                        <input type = "text" name = "nombre" size = "50" />       
                    </td>
                </tr>
                <tr>
                    <td>
                        nombre      
                    </td>
                    <td>
                        <input type = "text" name = "nombre" size = "50" />       
                    </td>
                </tr>
                <tr>
                    <td>
                        marca      
                    </td>
                    <td>
                        <input type = "text" name = "marca" size = "50" />       
                    </td>
                </tr>
                <tr>
                    <td>
                        modelo      
                    </td>
                    <td>
                        <input type = "text" name = "modelo" size = "50" />       
                    </td>
                </tr>
                <tr>
                    <td>
                        categoria      
                    </td>
                    <td>
                        <select name="categoria">
                            <c:forEach var="categoria" items="${sessionScope.listaCategorias}" varStatus="contador">
                                <option value="${categoria.id_categoria}">${categoria.nombre}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        nueva categoria      
                    </td>
                    <td>
                        <input type = "text" name = "nuevacategoria" size = "50" value=""/>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <input type = "file" name = "file" size = "50" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type = "file" name = "file" size = "50" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type = "file" name = "file" size = "50" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type = "file" name = "file" size = "50" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type = "file" name = "file" size = "50" />
                    </td>
                </tr>

            </table>   

            <input type = "submit" value = "Upload File" />
        </form>
    </body>
</html>