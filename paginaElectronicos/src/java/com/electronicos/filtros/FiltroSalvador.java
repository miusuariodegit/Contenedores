package com.electronicos.filtros;

import com.electronicos.dao.ProductosDAO;
import com.electronicos.filtros.HttpServletResponseCopier;
import com.electronicos.to.ProductoTO;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;


@Component
@Order(2)
public class FiltroSalvador implements Filter {

    public FiltroSalvador() {
    }

    @Override
    public void init(FilterConfig config) throws ServletException {
        
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        if (response.getCharacterEncoding() == null) {
            response.setCharacterEncoding("UTF-8"); // Or whatever default. UTF-8 is good for World Domination.
        }

        HttpServletResponseCopier responseCopier = new HttpServletResponseCopier((HttpServletResponse) response);

        try {
            if (request.getParameterMap()!=null){
                chain.doFilter(request, responseCopier);
            }else{
                chain.doFilter(request, response);
            }
            
            responseCopier.flushBuffer();
        } finally {
            byte[] copy = responseCopier.getCopy();
            String contenido = new String(copy, response.getCharacterEncoding());
            String id_producto = request.getParameter("id_producto");
            if (contenido.contains("</html>") && id_producto != null) {
                contenido = contenido.substring(contenido.indexOf("<!DOCTYPE"), contenido.indexOf("</html>") + 6) + ">";
                HttpSession sesion = ((HttpServletRequest) request).getSession(true);
                ProductosDAO productosDAO = (ProductosDAO) sesion.getAttribute("productosDAO");
                if (productosDAO != null) {
                    ProductoTO to = productosDAO.consultaPorID(Integer.parseInt(id_producto));
                    String ruta = request.getServletContext().getRealPath("/") + "\\";
                    ruta = ruta.substring(0, ruta.length() - 1);
                    String nombre = to.getNombre().replace(" ", "-");
                    ruta = ruta + nombre + ".html";
                    System.out.println("ESCRIBIENDO:" + ruta);
                    FileOutputStream file = new FileOutputStream(ruta);
                    file.write(contenido.getBytes());
                    file.close();
                    to.setRuta_pagina(ruta);
                    productosDAO.actualizaPagina(to);
                    System.out.println("ARCHIVO GUARDADO>" + ruta);
                }

            }

        }
    }

    @Override
    public void destroy() {
        // NOOP.
    }

}
