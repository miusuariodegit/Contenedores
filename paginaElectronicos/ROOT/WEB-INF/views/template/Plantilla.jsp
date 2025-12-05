<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Lo mas barato en computacion</title>

    </head>
    
    <body>
        <table align="center">

            <tr>
                <td colspan="2" align="center">
                    <tiles:insertAttribute name="Encabezado" />
                </td>
            </tr>
              
            <tr valign="top">
                <td>
                    <tiles:insertAttribute name="BarraIzquierda" />
                </td>
                <td>
                    <tiles:insertAttribute name="contenido" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <tiles:insertAttribute name="PieDePagina" />
                </td>
            </tr>
        </table>
    </body>
</html>