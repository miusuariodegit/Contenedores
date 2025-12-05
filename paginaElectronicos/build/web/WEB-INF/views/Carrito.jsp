<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<h4>Resumen de pedido, paso 1</h4>

<table  cellspacing="0" border="0">
    <tbody>



        <c:forEach var="producto" items="${sessionScope.listaProductosCarrito}"
                   varStatus="contador">
            <tr>

                <td>
                    <img src="productos/${producto.nombre_archivo}" width="100" height="100" >
                </td>
                <td>				
                    <table>
                        <tr>
                            <td>${producto.nombre}</td>
                        </tr>
                        <tr>
                            <td>Precio</td>
                            <td>${producto.precio}</td>
                        </tr>
                        <tr>
                            <td>Marca</td>
                            <td>${producto.marca}</td>							
                        </tr>			
                        <tr>
                            <td>Descripcion</td>
                            <td>${producto.descripcion}</td>							
                        </tr>
                        <tr>
                            <td></td>
                            <td>

                                <spring:url value="/quitarACarrito" var="pedido" htmlEscape="true" >
                                    <spring:param name="id_producto" value="${producto.id_producto}" />
                                </spring:url>
                                <a href="${pedido}">
                                    <input name="image" type="image" src="imagenes/tache.png" alt="Confirmar" align="left" width="30" height="30" border="0">
                                </a>
                            </td>							
                        </tr>	
                    </table>
                </td>
            </tr>    
        </c:forEach>
        <tr>
            <td colspan="3">
                <table>
                    <tr>
                        <td>
                            <h3>Total</h3>
                        </td>
                        <td>
                            <h3>${total}</h3>
                        </td>
                        <td>
                            
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h3>
                                <spring:url value="/datosDeEnvio" var="envio" htmlEscape="true" />
                                <a href="${envio}">
                                    Continuar con la compra 
                                </a>
                            </h3>
                        </td>
                        <td>
                            <spring:url value="/datosDeEnvio" var="envio" htmlEscape="true" />
                            <a href="${envio}">
                                <input name="image" type="image" src="imagenes/paquete.jpg" alt="Confirmar" align="left" width="100" height="100" border="0">
                            </a>
                        </td>

                        <td>
                            <h3>
                                <spring:url value="/cancelarPedido" var="envio" htmlEscape="true" />
                                <a href="${envio}">
                                    cancelar pedido
                                </a>
                            </h3>
                        </td>
                    </tr>
                </table>

            </td>
        </tr>

    </tbody>
</table>
