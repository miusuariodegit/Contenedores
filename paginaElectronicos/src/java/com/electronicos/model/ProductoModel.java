// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 
// Source File Name:   ProductoModel.java

package com.electronicos.model;


public class ProductoModel
{

    public ProductoModel()
    {
    }

    public int getId_producto()
    {
        return id_producto;
    }

    public void setId_producto(int id_producto)
    {
        this.id_producto = id_producto;
    }

    public int getPagina()
    {
        return pagina;
    }

    public void setPagina(int pagina)
    {
        this.pagina = pagina;
    }

    private int id_producto;
    private int pagina;
}
