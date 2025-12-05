// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ProductosController.java
package com.electronicos.controllers;

import com.electronicos.dao.CategoriasDAO;
import com.electronicos.dao.ProductosDAO;
import com.electronicos.model.ProductoModel;
import com.electronicos.model.ProductosModel;
import com.electronicos.to.ProductoTO;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductosController {

    @Resource(name = "productosDAO")
    private ProductosDAO productosDAO;

    @Resource(name = "categoriasDAO")
    private CategoriasDAO categoriasDAO;

    @RequestMapping(value = "index")
    public ModelAndView index(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("listaCategoriasView");
        HttpSession sesion = request.getSession(true);
        String categoriaActual = (String) sesion.getAttribute("categoriaActual");
        if (categoriaActual == null) {
            sesion.setAttribute("categoriaActual", "0");
            sesion.setAttribute("pagina", Integer.valueOf(0));
        }
        sesion.setAttribute("listaCategorias", categoriasDAO.consultaTodasLasCategorias());
        sesion.setAttribute("listaProductos", productosDAO.consultaTodosConPagiacion(0));
        sesion.setAttribute("productosDAO", productosDAO);
        return mav;
    }

    @RequestMapping(value = "listaProductos")
    public ModelAndView listaProductos(ProductosModel model, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("listaProductosView");
        HttpSession sesion = request.getSession(true);
        String categoriaActual = (String) sesion.getAttribute("categoriaActual");
        if (categoriaActual == null) {
            sesion.setAttribute("categoriaActual", "0");
        }
        if (categoriaActual != null && categoriaActual.equalsIgnoreCase("0") && model.getCategoria() == 0) {
            sesion.setAttribute("pagina", Integer.valueOf(model.getPagina()));
            sesion.setAttribute("listaProductos", productosDAO.consultaTodosConPagiacion(model.getPagina() * 10));
            return mav;
        }
        if (request.getParameter("categoria") != null) {
            model.setCategoria(Integer.parseInt(request.getParameter("categoria")));
            if (request.getParameter("pagina") == null) {
                model.setPagina(0);
            }
            sesion.setAttribute("categoriaActual", request.getParameter("categoria"));
        }
        if (model.getCategoria() == 0) {
            sesion.setAttribute("pagina", Integer.valueOf(model.getPagina()));
            sesion.setAttribute("listaProductos", productosDAO.consultaTodosConPagiacion(model.getPagina() * 10));
            return mav;
        } else {
            sesion.setAttribute("pagina", Integer.valueOf(model.getPagina()));
            sesion.setAttribute("listaProductos", productosDAO.consultaPorCategoria(model.getCategoria(), model.getPagina() * 10));
            return mav;
        }
    }

    @RequestMapping(value = "buscaProducto")
    public ModelAndView buscaProducto(ProductosModel model, HttpServletRequest request) {
        HttpSession sesion = request.getSession(true);
        String nombre = (String) sesion.getAttribute("nombre");
        if (nombre == null) {
            nombre = "";
            sesion.setAttribute("nombre", "");
            sesion.setAttribute("pagina", "0");
        } else {
            nombre = model.getNombre();
            sesion.setAttribute("nombre", model.getNombre());
            sesion.setAttribute("pagina", Integer.valueOf(model.getPagina()));
        }
        ModelAndView mav = new ModelAndView("listaProductosView");
        sesion.setAttribute("listaProductos", productosDAO.consultaPorPalabraClave(nombre, model.getPagina() * 10));
        return mav;
    }

    @RequestMapping(value = "detalleProducto")
    public ModelAndView detalleProducto(ProductoModel model, HttpServletRequest request) {
        HttpSession sesion = request.getSession(true);
        ProductoTO to = productosDAO.consultaPorID(model.getId_producto());
        sesion.setAttribute("listaCategorias", categoriasDAO.consultaTodasLasCategorias());
        sesion.setAttribute("listaProductos", productosDAO.consultaPorCategoria(to.getCategoria(), model.getPagina() * 10));
        sesion.setAttribute("pagina", Integer.valueOf(model.getPagina()));
        sesion.setAttribute("productosDAO", productosDAO);
        ModelAndView mav = new ModelAndView("listaCategoriasView");
        mav.addObject("producto", to);
        return mav;
    }

    public ProductosDAO getProductosDAO() {
        return productosDAO;
    }

    public void setProductosDAO(ProductosDAO productosDAO) {
        this.productosDAO = productosDAO;
    }

}
