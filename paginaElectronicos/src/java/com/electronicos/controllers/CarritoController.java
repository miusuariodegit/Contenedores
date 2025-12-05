// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   CarritoController.java
package com.electronicos.controllers;

import com.electronicos.correo.DatosCorreo;
import com.electronicos.correo.EnviaCorreo;
import com.electronicos.dao.*;
import com.electronicos.model.CarritoModel;
import com.electronicos.model.PersonaModel;
import com.electronicos.to.PersonaTO;
import com.electronicos.to.ProductoTO;
import java.util.ArrayList;
import java.util.Iterator;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CarritoController {

    @Resource(name = "productosDAO")
    private ProductosDAO productosDAO;

    @Resource(name = "personasDAO")
    private PersonasDAO personasDAO;

    @Resource(name = "categoriasDAO")
    private CategoriasDAO categoriasDAO;

    @RequestMapping(value = "agregarACarrito")
    public ModelAndView agregarACarrito(CarritoModel model, HttpServletRequest request) {
        HttpSession sesion = request.getSession(true);
        ArrayList lista = (ArrayList) sesion.getAttribute("listaProductosCarrito");
        if (lista == null) {
            lista = new ArrayList();
        }
        ProductoTO to = productosDAO.consultaPorID(model.getId_producto());
        lista.add(to);
        sesion.setAttribute("listaProductosCarrito", lista);
        ModelAndView mav = new ModelAndView("listaProductosView");
        sesion.setAttribute("mensaje", (new StringBuilder()).append(to.getNombre()).append(" agregado al carrito de compras").toString());
        int pagina = 0;
        if (request.getParameter("pagina") != null) {
            pagina = Integer.parseInt(request.getParameter("pagina"));
        }
        sesion.setAttribute("listaProductos", productosDAO.consultaPorCategoria(to.getCategoria(), pagina));
        return mav;
    }

    @RequestMapping(value = "quitarACarrito")
    public ModelAndView quitarACarrito(CarritoModel model, HttpServletRequest request) {
        HttpSession session = request.getSession(true);
        ArrayList lista = (ArrayList) session.getAttribute("listaProductosCarrito");
        if (lista == null) {
            lista = new ArrayList();
        }
        ProductoTO to = productosDAO.consultaPorID(model.getId_producto());
        lista.remove(to);
        session.setAttribute("listaProductosCarrito", lista);
        ModelAndView mav = new ModelAndView("carritoView");
        return mav;
    }

    @RequestMapping(value = "cancelarPedido")
    public ModelAndView cancelarPedido(HttpServletRequest request) {
        HttpSession sesion = request.getSession(true);
        sesion.setAttribute("listaProductosCarrito", new ArrayList());
        sesion.setAttribute("categoriaActual", "1");
        sesion.setAttribute("listaProductos", productosDAO.consultaPorCategoria(1, 0));
        ModelAndView mav = new ModelAndView("listaCategoriasView");
        return mav;
    }

    @RequestMapping(value = "hacerPedido")
    public ModelAndView hacerPedido(HttpServletRequest request) {
        HttpSession sesion = request.getSession(true);
        ArrayList lista = (ArrayList) sesion.getAttribute("listaProductosCarrito");
        if (lista == null) {
            lista = new ArrayList();
        }
        float total = 0.0F;
        for (Iterator iterator = lista.iterator(); iterator.hasNext();) {
            ProductoTO to = (ProductoTO) iterator.next();
            total = to.getPrecio() + total;
        }

        ModelAndView mav = new ModelAndView("carritoView");
        mav.addObject("total", Float.valueOf(total));
        return mav;
    }

    @RequestMapping(value = "datosDeEnvio")
    public ModelAndView datosDeEnvio(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("datosEnvioView");
        return mav;
    }

    @RequestMapping(value = "guardaPersona")
    public ModelAndView datosDeEnvio(PersonaModel model, HttpServletRequest request) {
        PersonaTO to = new PersonaTO();
        to.setNombre_completo(model.getNombre_completo());
        to.setTelefono(model.getTelefono());
        to.setCelular(model.getCelular());
        to.setCorreo(model.getCorreo());
        to.setDireccion(model.getDireccion());
        to.setColonia(model.getColonia());
        to.setMunicipio(model.getMunicpio());
        to.setCiudad(model.getCiudad());
        to.setCodigo_postal(model.getCodigo_postal());
        personasDAO.inserta(to);
        HttpSession session = request.getSession(true);
        ArrayList lista = (ArrayList) session.getAttribute("listaProductosCarrito");
        if (lista == null) {
            lista = new ArrayList();
        }
        EnviaCorreo ec = new EnviaCorreo();
        DatosCorreo dc = new DatosCorreo(to, lista);
        ec.enviaMensaje(dc);
        ModelAndView mav = new ModelAndView("confirmacionEnvioView");
        mav.addObject("personato", to);
        return mav;
    }

}
