<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<form action="guardaPersona">
    <table style="width: 600px" class="reference">
        <tr>
            <td>
                Nombre completo 
            </td>
            <td>
                <input type="text" name="nombre_completo">
            </td>
        <tr> 
        <tr>
            <td>
                Telefono fijo
            </td>
            <td>
                <input type="text" name="telefono">
            </td>
        <tr> 
        <tr>
            <td>
                Celular
            </td>
            <td>
                <input type="text" name="celular">
            </td>
        <tr>
        <tr>
            <td>
                Correo
            </td>
            <td>
                <input type="text" name="correo">
            </td>
        </tr>
        <tr>
            <td>
                Direccion
            </td>
            <td>
                <input type="textarea" rows="4" cols="100"  name="direccion">
            </td>
        </tr>
        <tr>
            <td>
                Colonia
            </td>
            <td>
                <input type="text" name="colonia">
            </td>
        </tr>
        <tr>
            <td>
                Municipio
            </td>
            <td>
                <input type="text" name="municpio">
            </td>
        </tr>
        <tr>
            <td>
                Ciudad
            </td>
            <td>
                <input type="text" name="ciudad">
            </td>
        </tr>
        <tr>
            <td>
                Codigo postal
            </td>
            <td>
                <input type="text" name="codigo_postal">
            </td>
        </tr>
        <tr>
            <td>    
                
            </td>
            <td> <input type="submit" value="Submit"></td>
        </tr>
    </table>

</form>
