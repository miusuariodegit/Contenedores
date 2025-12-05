// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CarritoDeCompras.java

package com.electronicos.tags;

import java.io.IOException;
import java.util.List;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class CarritoDeCompras extends SimpleTagSupport
{

    public CarritoDeCompras()
    {
    }

    public void doTag()
        throws JspException, IOException
    {
        JspWriter out = getJspContext().getOut();
        List listaProductos = (List)getJspContext().getAttribute("listaProductosCarrito", 3);
        if(listaProductos != null)
            out.println((new StringBuilder()).append("<a href=\"hacerPedido\">productos en carrito de compras ").append(listaProductos.size()).append(" </a>").toString());
    }
}
