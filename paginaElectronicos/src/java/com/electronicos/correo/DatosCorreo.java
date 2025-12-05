// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   DatosCorreo.java

package com.electronicos.correo;

import com.electronicos.to.PersonaTO;
import com.electronicos.to.ProductoTO;
import java.util.*;

public class DatosCorreo
{

    public DatosCorreo(PersonaTO personato, List listaProducto)
    {
        this.listaProducto = new ArrayList();
        this.personato = personato;
        this.personato.setNombre_completo(personato.getNombre_completo());
        this.personato.setTelefono(personato.getTelefono());
        this.listaProducto = listaProducto;
        StringBuilder sb = new StringBuilder();
        sb.append("<table>");
        sb.append("<tr style=\"background-color:#F0F0F0;\"><td style=\"background-color:#F0F0F0;padding:5px;\" valign=\"top\" width=\"200\"><b>Nombre</b></td>");
        sb.append((new StringBuilder()).append("<td style=\"background-color:#F0F0F0;padding:5px;\">").append(personato.getNombre_completo()).append("</td>").toString());
        sb.append("</tr>");
        sb.append("<tr style=\"background-color:#FFFFFF;\"><td style=\"background-color:#FFFFFF;padding:5px;\" valign=\"top\" width=\"200\"><b>Telefono</b></td>");
        sb.append((new StringBuilder()).append("<td style=\"background-color:#FFFFFF;padding:5px;\">").append(personato.getTelefono()).append("</td>").toString());
        sb.append("</tr>");
        sb.append("<tr style=\"background-color:#F0F0F0;\"><td style=\"background-color:#F0F0F0;padding:5px;\" valign=\"top\" width=\"200\"><b>Celular</b></td>");
        sb.append((new StringBuilder()).append("<td style=\"background-color:#F0F0F0;padding:5px;\">").append(personato.getCelular()).append("</td>").toString());
        sb.append("</tr>");
        sb.append("<tr style=\"background-color:#FFFFFF;\"><td style=\"background-color:#FFFFFF;padding:5px;\" valign=\"top\" width=\"200\"><b>Correo</b></td>");
        sb.append((new StringBuilder()).append("<td style=\"background-color:#FFFFFF;padding:5px;\">").append(personato.getCorreo()).append("</td>").toString());
        sb.append("</tr>");
        sb.append("<tr style=\"background-color:#F0F0F0;\"><td style=\"background-color:#F0F0F0;padding:5px;\" valign=\"top\" width=\"200\"><b>Direccion</b></td>");
        sb.append((new StringBuilder()).append("<td style=\"background-color:#F0F0F0;padding:5px;\">").append(personato.getDireccion()).append("</td>").toString());
        sb.append("</tr>");
        sb.append("<tr style=\"background-color:#FFFFFF;\"><td style=\"background-color:#FFFFFF;padding:5px;\" valign=\"top\" width=\"200\"><b>Colonia</b></td>");
        sb.append((new StringBuilder()).append("<td style=\"background-color:#FFFFFF;padding:5px;\">").append(personato.getColonia()).append("</td>").toString());
        sb.append("</tr>");
        sb.append("<tr style=\"background-color:#F0F0F0;\"><td style=\"background-color:#F0F0F0;padding:5px;\" valign=\"top\" width=\"200\"><b>Municipio</b></td>");
        sb.append((new StringBuilder()).append("<td style=\"background-color:#F0F0F0;padding:5px;\">").append(personato.getMunicipio()).append("</td>").toString());
        sb.append("</tr>");
        sb.append("<tr style=\"background-color:#FFFFFF;\"><td style=\"background-color:#FFFFFF;padding:5px;\" valign=\"top\" width=\"200\"><b>Ciudad</b></td>");
        sb.append((new StringBuilder()).append("<td style=\"background-color:#FFFFFF;padding:5px;\">").append(personato.getCiudad()).append("</td>").toString());
        sb.append("</tr>");
        sb.append("<tr style=\"background-color:#F0F0F0;\"><td style=\"background-color:#F0F0F0;padding:5px;\" valign=\"top\" width=\"200\"><b>Codigo postal</b></td>");
        sb.append((new StringBuilder()).append("<td style=\"background-color:#F0F0F0;padding:5px;\">").append(personato.getCodigo_postal()).append("</td>").toString());
        sb.append("</tr>");
        float total = 0.0F;
        for(Iterator iterator = listaProducto.iterator(); iterator.hasNext(); sb.append("</table>"))
        {
            ProductoTO productoTO = (ProductoTO)iterator.next();
            sb.append("<table>");
            sb.append((new StringBuilder()).append("<td style=\"background-color:#FFFFFF;padding:5px;\">").append(productoTO.getNombre()).append("</td>").toString());
            sb.append((new StringBuilder()).append("<td style=\"background-color:#FFFFFF;padding:5px;\">").append(productoTO.getPrecio()).append("</td>").toString());
            total += productoTO.getPrecio();
            sb.append("</tr>");
        }

        sb.append("<tr style=\"background-color:#F0F0F0;\"><td style=\"background-color:#F0F0F0;padding:5px;\" valign=\"top\" width=\"200\"><b>TOTAL</b></td>");
        sb.append((new StringBuilder()).append("<td style=\"background-color:#F0F0F0;padding:5px;\">").append(total).append("</td>").toString());
        sb.append("</tr>");
        mensaje = sb.toString();
    }

    public String getMensaje()
    {
        return mensaje;
    }

    public void setMensaje(String mensaje)
    {
        this.mensaje = mensaje;
    }

    public PersonaTO getPersonato()
    {
        return personato;
    }

    public void setPersonato(PersonaTO personato)
    {
        this.personato = personato;
    }

    public List getListaProducto()
    {
        return listaProducto;
    }

    public void setListaProducto(List listaProducto)
    {
        this.listaProducto = listaProducto;
    }

    private String mensaje;
    private PersonaTO personato;
    private List listaProducto;
}
