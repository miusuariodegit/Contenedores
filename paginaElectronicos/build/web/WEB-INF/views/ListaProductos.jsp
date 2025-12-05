<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="ex" uri="/WEB-INF/Paginacion.tld"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>




<h4>Lista de productos</h4>
<h3>${sessionScope.mensaje}</h3>
<c:if test="${(fn:length(sessionScope.listaProductosCarrito) > 0)}">
    <table>
        <tr>
            <td>	
                <div align="center">
                    <a href="hacerPedido"><input name="image" type="image" src="imagenes/carrito.jpg" alt="Confirmar" align="left" width="60" height="60" border="0"></a>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div align="center">
                <a href="hacerPedido">Confirmar pedido</a>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                <div align="center">
                <ex:CarritoDeCompras/>
                </div>
            </td>
        </tr>
    </table>
</c:if>

<c:if test="${producto!=null}">
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
                            <spring:url value="/agregarACarrito" var="pedido" htmlEscape="true" >
                                <spring:param name="id_producto" value="${producto.id_producto}" />
                            </spring:url>
                            <a href="${pedido}">
                                <input name="image" type="image" src="imagenes/comprar.jpg" alt="Confirmar" align="left" width="70" height="70" border="0">
                            </a>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</c:if>
<h1 align="center"><ex:Paginacion/></h1>

<table  cellspacing="0" border="0">
    <tbody>

        <c:set var="micontador" value="${0}"/>

        <c:forEach var="producto" items="${sessionScope.listaProductos}"
                   varStatus="contador">

            <c:if test="${micontador % 2 == 0}">
                <tr>
                </c:if>
                <td valign="top">

                    <spring:url value="/detalleProducto" var="pedido" htmlEscape="true" >
                        <spring:param name="id_producto" value="${producto.id_producto}" />
                        <spring:param name="pagina" value="${sessionScope.pagina}" />
                    </spring:url>
                    <a href="${pedido}">
                        <input name="image" type="image" src="productos/${producto.nombre_archivo}" alt="Confirmar" align="left" width="150" height="150" border="0">
                    </a>

                </td>
                <td valign="top">				
                    <table cellspacing="0" cellpadding="0" style="width:300px;table-layout:fixed">
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
                                <spring:url value="/agregarACarrito" var="pedido" htmlEscape="true" >
                                    <spring:param name="id_producto" value="${producto.id_producto}" />
                                </spring:url>
                                <a href="${pedido}">
                                    <input name="image" type="image" src="imagenes/comprar.jpg" alt="Confirmar" align="left" width="70" height="70" border="0">
                                </a>
                            </td>							
                        </tr>	
                    </table>
                </td>

                <c:if test="${micontador % 2 == 1}">
                </tr>
            </c:if>
            <c:set var="micontador" value="${micontador+1}"/>
        </c:forEach>
        <c:if test="${micontador % 2 == 1}">
            </tr>
        </c:if>
    </tbody>
</table>

<h1 align="center"><ex:Paginacion/></h1>