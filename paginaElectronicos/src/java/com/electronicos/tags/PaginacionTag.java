// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   PaginacionTag.java

package com.electronicos.tags;

import java.io.IOException;
import java.util.List;
import javax.servlet.jsp.*;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class PaginacionTag extends SimpleTagSupport
{

    public PaginacionTag()
    {
    }

    @Override
    public void doTag()
        throws JspException, IOException
    {
        JspWriter out = getJspContext().getOut();
        String categoriaActual = (String)getJspContext().getAttribute("categoriaActual", 3);
        String nombre = (String)getJspContext().getAttribute("nombre", 3);
        List listaProductos = (List)getJspContext().getAttribute("listaProductos", 3);
        int iteraciones;
        if(nombre != null && nombre.equalsIgnoreCase(""))
        {
            iteraciones = listaProductos.size() / 10 + 1;
            for(int i = 1; i <= iteraciones; i++)
                out.println((new StringBuilder()).append("<a href=\"buscaProducto?nombre=").append(nombre).append("&pagina=").append(i).append("\"><font size=\"5\">").append(i + 1).append(", </font></a>").toString());

            return;
        }
        if(nombre != null && !nombre.equalsIgnoreCase(""))
        {
            iteraciones = listaProductos.size() / 10 + 1;
            for(int i = 1; i <= iteraciones; i++)
                out.println((new StringBuilder()).append("<a href=\"buscaProducto?nombre=").append(nombre).append("&pagina=").append(i).append("\"><font size=\"5\">").append(i + 1).append(", </font></a>").toString());

            return;
        }
        iteraciones = listaProductos.size() / 10 + 1;
        for(int i = 0; i < iteraciones; i++)
            out.println((new StringBuilder()).append("<a href=\"listaProductos?categoria=").append(categoriaActual).append("&pagina=").append(i).append("\"><font size=\"5\">").append(i + 1).append(", </font></a>").toString());

        getJspContext().setAttribute("mensaje", "", 3);
    }
}
