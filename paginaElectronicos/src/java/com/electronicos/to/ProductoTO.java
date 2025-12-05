// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ProductoTO.java

package com.electronicos.to;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class ProductoTO
    implements Serializable
{

    public static List consultaProductosPorCategoria(int categoria)
    {
        List persons = new ArrayList();
        persons.add(new ProductoTO(1, 1, "Disco Duro", 2000F, "Western Digital", "Disco duro de estado solido"));
        persons.add(new ProductoTO(2, 1, "Disco Duro", 2000F, "Western Digital", "Disco duro de estado solido"));
        persons.add(new ProductoTO(3, 1, "Disco Duro", 2000F, "Western Digital", "Disco duro de estado solido"));
        persons.add(new ProductoTO(4, 2, "Disco Duro", 2000F, "Western Digital", "Disco duro de estado solido"));
        persons.add(new ProductoTO(5, 2, "Disco Duro", 2000F, "Western Digital", "Disco duro de estado solido"));
        persons.add(new ProductoTO(6, 2, "Disco Duro", 2000F, "Western Digital", "Disco duro de estado solido"));
        return persons;
    }

    public boolean equals(Object otro)
    {
        if(otro == this || (otro instanceof ProductoTO))
        {
            ProductoTO o = (ProductoTO)otro;
            if(o.id_producto == id_producto)
                return true;
        }
        return false;
    }

    public int hashCode()
    {
        int hash = 3;
        hash = 53 * hash + id_producto;
        return hash;
    }

    public ProductoTO()
    {
    }

    public ProductoTO(int id_producto, int categoria, String nombre, float precio, String marca, String descripcion)
    {
        this.id_producto = id_producto;
        this.categoria = categoria;
        this.nombre = nombre;
        this.precio = precio;
        this.marca = marca;
        this.descripcion = descripcion;
    }

    public int getId_producto()
    {
        return id_producto;
    }

    public void setId_producto(int id_producto)
    {
        this.id_producto = id_producto;
    }

    public String getNombre()
    {
        return nombre;
    }

    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }

    public float getPrecio()
    {
        return precio;
    }

    public void setPrecio(float precio)
    {
        this.precio = precio;
    }

    public String getMarca()
    {
        return marca;
    }

    public void setMarca(String marca)
    {
        this.marca = marca;
    }

    public String getDescripcion()
    {
        return descripcion;
    }

    public void setDescripcion(String descripcion)
    {
        this.descripcion = descripcion;
    }

    public int getCategoria()
    {
        return categoria;
    }

    public void setCategoria(int categoria)
    {
        this.categoria = categoria;
    }

    public String getNombre_archivo()
    {
        return nombre_archivo;
    }

    public void setNombre_archivo(String nombre_archivo)
    {
        this.nombre_archivo = nombre_archivo;
    }

    public String getModelo()
    {
        return modelo;
    }

    public void setModelo(String modelo)
    {
        this.modelo = modelo;
    }

    private int id_producto;
    private int categoria;
    private String nombre;
    private float precio;
    private String marca;
    private String descripcion;
    private String nombre_archivo;
    private String modelo;
    private String proveedor;
    private String ruta_pagina;
    private String keywords;
    
    
    @Override
    public String toString(){
        return nombre + "," + descripcion + "," + marca +","+categoria+"," + nombre_archivo ;
    }
    /**
     * @return the proveedor
     */
    public String getProveedor() {
        return proveedor;
    }

    /**
     * @param proveedor the proveedor to set
     */
    public void setProveedor(String proveedor) {
        this.proveedor = proveedor;
    }

    /**
     * @return the ruta_pagina
     */
    public String getRuta_pagina() {
        return ruta_pagina;
    }

    /**
     * @param ruta_pagina the ruta_pagina to set
     */
    public void setRuta_pagina(String ruta_pagina) {
        this.ruta_pagina = ruta_pagina;
    }

    /**
     * @return the keywords
     */
    public String getKeywords() {
        return keywords;
    }

    /**
     * @param keywords the keywords to set
     */
    public void setKeywords(String keywords) {
        this.keywords = keywords;
    }
}
