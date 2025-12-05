<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="ex" uri="/WEB-INF/Paginacion.tld"%>


<table width="120"  cellpadding="0" cellspacing="0" >

    <tr>
        <td>
            <table width="120">
                <tr>
                    <td width="71">Buscar </span> </td>
                    <td width="37">&nbsp;</td>
                </tr>
                <tr>
                <form method="post" action="buscaProducto">
                    <td>
                        <input name="nombre" type="text" size="12" maxlength="40">
                    </td>
                    <td>
                        <input name="image" type="image" src="imagenes/lupa.png" alt="Buscar" align="right" width="37" height="37" border="0">
                    </td>
                </form>

    </tr>
</table>    
</td>
</tr>
<tr>
    <td>Categorias</td>
</tr>

<c:forEach var="categoria" items="${sessionScope.listaCategorias}"
           varStatus="contador">
    <tr>
        <td>	
            <a href="listaProductos?categoria=${categoria.id_categoria}">${categoria.nombre}</a>
        </td>
    </tr>
</c:forEach>
<tr>
    <td>	
        <a href="hacerPedido"><input name="image" type="image" src="imagenes/carrito.jpg" alt="Confirmar" align="left" width="100" height="100" border="0"></a>
    </td>
</tr>
<tr>
    <td>	
        <a href="hacerPedido">Confirmar pedido</a>
    </td>
</tr>
<tr>
    <td>
        <ex:CarritoDeCompras/>
    </td>
</tr>

</table>



