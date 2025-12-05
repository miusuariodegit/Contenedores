// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ProductosModel.java

package com.electronicos.model;


public class ProductosModel
{

    public ProductosModel()
    {
        nombre = "";
    }

    public String getNombre()
    {
        return nombre;
    }

    public void setNombre(String nombre)
    {
        this.nombre = nombre;
    }

    public int getPagina()
    {
        return pagina;
    }

    public void setPagina(int pagina)
    {
        this.pagina = pagina;
    }

    public int getCategoria()
    {
        return categoria;
    }

    public void setCategoria(int categoria)
    {
        this.categoria = categoria;
    }

    private int pagina;
    private String nombre;
    private int categoria;
}
