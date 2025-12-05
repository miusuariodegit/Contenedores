// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   GeneradorController.java

package com.electronicos.controllers;

import com.electronicos.dao.ProductosDAO;
import com.electronicos.generador.Generador;
import com.electronicos.to.ProductoTO;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GeneradorController {

    @Resource(name = "productosDAO")
    private ProductosDAO productosDAO;

    @RequestMapping(value = "generaPaginasController")
    public ModelAndView generaPaginasController(HttpServletRequest request)
    {
        Generador generador = new Generador();
        List lista = productosDAO.consultaTodos();
        String html;
        String ruta;
        for(Iterator iterator = lista.iterator(); iterator.hasNext(); generador.escribeArchivo(html, ruta))
        {
            ProductoTO to = (ProductoTO)iterator.next();
            html = generador.descarga((new StringBuilder()).append("http://localhost:8080/detalleProducto?id_producto=").append(to.getId_producto()).append("&pagina=0").toString());
            String nombreArchivo = (new StringBuilder()).append(to.getNombre().replace(" ", "-")).append(".html").toString();
            ruta = (new StringBuilder()).append(request.getServletContext().getRealPath("")).append("\\").append(nombreArchivo).toString();
        }

        ModelAndView mav = new ModelAndView("listaProductosView");
        mav.addObject("mensaje", "paginas web creadas satisfactoriamente");
        return mav;
    }


}
