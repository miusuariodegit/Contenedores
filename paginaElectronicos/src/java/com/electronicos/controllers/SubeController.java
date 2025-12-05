package com.electronicos.controllers;

import com.electronicos.dao.CategoriasDAO;
import com.electronicos.dao.ProductosDAO;
import com.electronicos.to.ProductoTO;
import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import static java.nio.file.StandardCopyOption.REPLACE_EXISTING;
import java.util.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class SubeController {

    @Resource(name = "productosDAO")
    private ProductosDAO productosDAO;

    @Resource(name = "categoriasDAO")
    private CategoriasDAO categoriasDAO;

    @RequestMapping(value = "sube")
    public ModelAndView sube(HttpServletRequest request) {

        HttpSession sesion = request.getSession(true);
        sesion.setAttribute("listaCategorias", categoriasDAO.consultaTodasLasCategorias());
        ModelAndView mav = new ModelAndView("subeArchivo");
        
        return mav;
    }

    @RequestMapping(value = "subeArchivo", method = RequestMethod.POST)
    public ModelAndView agregarACarrito(HttpServletRequest request) {

        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        DiskFileItemFactory factory = new DiskFileItemFactory();
        factory.setSizeThreshold(40 * 1024);
        String ruta = request.getServletContext().getRealPath("/productos") + "\\";
        factory.setRepository(new File(ruta));
        ServletFileUpload upload = new ServletFileUpload(factory);
        upload.setSizeMax(5000 * 1024);

        try {
            List fileItems = upload.parseRequest(request);
            Iterator i = fileItems.iterator();
            ProductoTO to = new ProductoTO();
            ArrayList<String> lista = new ArrayList<String>();
            while (i.hasNext()) {

                FileItem fi = (FileItem) i.next();
                if (!fi.isFormField() && fi.getSize() != 0) {
                    String filename = fi.getName();
                    File file = null;
                    Path path = null;
                    if (filename.lastIndexOf("\\") >= 0) {
                        file = new File(ruta + filename.substring(filename.lastIndexOf("\\")));
                        path = Paths.get("C:\\productos\\" + filename.substring(filename.lastIndexOf("\\")));
                    } else {
                        file = new File(ruta + filename.substring(filename.lastIndexOf("\\") + 1));
                        path = Paths.get("C:\\productos\\" + filename.substring(filename.lastIndexOf("\\") + 1));
                    }
                    fi.write(file);
                    Files.copy(file.toPath(), path, REPLACE_EXISTING);

                    lista.add(filename);
                } else {
                    if (fi.getFieldName().equals("categoria")) {
                        System.out.println("categoria:>" + fi.getString());
                        to.setCategoria(Integer.parseInt(fi.getString()));
                    }
                    if (fi.getFieldName().equals("descripcion")) {
                        System.out.println("descripcion:>" + fi.getString());
                        to.setDescripcion(fi.getString());
                    }
                    if (fi.getFieldName().equals("precio")) {
                        System.out.println("precio:>" + fi.getString());
                        to.setPrecio(Float.parseFloat(fi.getString()));
                    }
                    if (fi.getFieldName().equals("marca")) {
                        System.out.println("marca:>" + fi.getString());
                        to.setMarca(fi.getString());
                    }
                    if (fi.getFieldName().equals("modelo")) {
                        System.out.println("modelo:>" + fi.getString());
                        to.setModelo(fi.getString());
                    }
                    if (fi.getFieldName().equals("nombre")) {
                        System.out.println("nombre:>" + fi.getString());
                        to.setNombre(fi.getString());
                    }
                }
            }
            for (String nombreArchivo : lista) {
                to.setNombre_archivo(nombreArchivo);
                System.out.println(to);
                productosDAO.inserta(to);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        ModelAndView mav = new ModelAndView("archivoSubidoOK");
        mav.addObject("mensaje", "Archivos recibidos satisfactoriamente");
        return mav;
    }

}
